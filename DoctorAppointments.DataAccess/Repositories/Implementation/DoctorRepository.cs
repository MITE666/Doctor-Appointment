using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation;

public class DoctorRepository : IDoctorRepository
{
    private readonly DatabaseContext _databaseContext;

    public DoctorRepository(DatabaseContext databaseContext)
    {
        _databaseContext = databaseContext;
    }

    public async Task<Doctor?> GetDoctorById(Guid id)
    {
        return await _databaseContext.Doctors
            .Include(x => x.Specialty)
            .Include(x => x.MedicalFacility)
            .ThenInclude(x => x.City)
            .ThenInclude(x => x.Region)
            .Where(x => x.Id == id).SingleOrDefaultAsync();
    }

    public async Task<Doctor?> GetDoctorByUserId(Guid id)
    {
        return await _databaseContext.Doctors
            .Where(x => x.UserId == id)
            .Include(x => x.Specialty)
            .Include(x => x.MedicalFacility)
            .ThenInclude(x => x.City)
            .ThenInclude(x => x.Region)
            .SingleOrDefaultAsync();
    }

    public async Task<List<Doctor>> GetAllDoctors()
    {
        return await _databaseContext.Doctors
            .Include(x => x.Specialty)
            .Include(x => x.MedicalFacility)
            .ThenInclude(x => x.City)
            .ThenInclude(x => x.Region)
            .ToListAsync();
    }

    public async Task<Doctor> AddDoctor(Doctor doctor)
    {
        await _databaseContext.Doctors.AddAsync(doctor);
        await Save();
        doctor.Specialty = (await _databaseContext.Specialties.FindAsync(doctor.SpecialtyId)!)!;
        doctor.MedicalFacility = (await _databaseContext.MedicalFacilities.FindAsync(doctor.MedicalFacilityId))!;
        return doctor;
    }

    public async Task<Doctor?> UpdateDoctor(Doctor doctor)
    {
        var result = await _databaseContext.Doctors.Where(x => x.Id == doctor.Id).AsNoTracking().SingleOrDefaultAsync();
        if (result == null)
        {
            return null;
        }
        _databaseContext.Doctors.Update(doctor);
        await Save();
        return doctor;
    }

    public async Task<bool> DeleteDoctor(Guid id)
    {
        var doctor = await GetDoctorById(id);
        if (doctor == null)
        {
            return false;
        }
        _databaseContext.Remove(doctor);
        await Save();
        return true;
    }

    public async Task Save()
    {
        await _databaseContext.SaveChangesAsync();
    }
}