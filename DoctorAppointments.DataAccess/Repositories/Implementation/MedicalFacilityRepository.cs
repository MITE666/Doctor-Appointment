using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using DoctorAppointments.DataAccess.Repositories.Implementation.Base;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation;

public class MedicalFacilityRepository : Repository<MedicalFacility>, IMedicalFacilityRepository
{
    private readonly DatabaseContext _databaseContext;

    public MedicalFacilityRepository(DatabaseContext databaseContext) : base(databaseContext)
    {
        _databaseContext = databaseContext;
    }

    public async Task<MedicalFacility> GetFacilityById(Guid id)
    {
        return (await _databaseContext.MedicalFacilities.Where(e => e.Id == id).FirstOrDefaultAsync())!;

    }

    
    public async Task<IReadOnlyCollection<MedicalFacility>> GetAllFacilities()
    {
        return await _databaseContext.MedicalFacilities
            .Include(x=> x.Medications)
            .Include(x => x.City)
            .ThenInclude(x => x.Region)
            .ToListAsync();
    }


    public async Task<MedicalFacility> AddFacility(MedicalFacility medicalFacility)
    {
        await _databaseContext.MedicalFacilities.AddAsync(medicalFacility);
        await Save();
        return medicalFacility;
    }

    public async Task<MedicalFacility?> UpdateFacility(MedicalFacility medicalFacility)
    {
        var result = await _databaseContext.MedicalFacilities.Where(x => x.Id == medicalFacility.Id).AsNoTracking().SingleOrDefaultAsync();
        if (result == null)
        {
            return result;
        }
        _databaseContext.MedicalFacilities.Update(medicalFacility);
        await Save();
        return medicalFacility;
    }

    public async Task<bool> DeleteFacility(Guid id)
    {
        var facility = await GetFacilityById(id);
        if (facility == null)
        {
            return false;
        }
        _databaseContext.Remove(facility);
        await Save();
        return true;
    }

    public async Task Save()
    {
        await _databaseContext.SaveChangesAsync();
    }
}