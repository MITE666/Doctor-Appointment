using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation;

public class AppointmentRepository : IAppointmentRepository
{
    private readonly DatabaseContext _databaseContext;

    public AppointmentRepository(DatabaseContext databaseContext)
    {
        _databaseContext = databaseContext;
    }

    public async Task<Appointment?> GetAppointmentById(Guid id)
    {
        return await _databaseContext.Appointments
            .Where(x => x.Id == id)
            .Include(x => x.Doctor)
            .ThenInclude(x => x.Specialty)
            .Include(x => x.Pacient)
            .ThenInclude(x => x.City)
            .ThenInclude(x=>x.Region)
            .Include(x => x.MedicalFacility).SingleOrDefaultAsync();
    }

    public async Task<List<Appointment>> GetDoctorAppointments(Guid id)
    {
        return await _databaseContext.Appointments.Where(x => x.DoctorId == id)
            .Include(x => x.Doctor)
            .ThenInclude(x => x.Specialty)
            .Include(x=>x.Pacient)
            .ThenInclude(x=>x.City)
            .ThenInclude(x => x.Region)
            .Include(x=>x.MedicalFacility)
            .ToListAsync();
    }

    public async Task<List<Appointment>> GetPacientAppointments(Guid id)
    {
        return await _databaseContext.Appointments
            .Where(x => x.PacientId == id)
            .Include(x => x.Pacient)
            .ThenInclude(x => x.City)
            .ThenInclude(x => x.Region)
            .Include(x=>x.Doctor)
            .ThenInclude(x=>x.Specialty)
            .Include(x=> x.MedicalFacility).ToListAsync();
    }

    public async Task<List<Appointment>> GetAllAppointments()
    {
        return await _databaseContext.Appointments
            .Include(x => x.Pacient)
            .ThenInclude(x => x.City)
            .ThenInclude(x => x.Region)
            .Include(x => x.Doctor)
            .ThenInclude(x => x.Specialty)
            .Include(x => x.MedicalFacility).ToListAsync();
    }

    public async Task<Appointment> AddAppointment(Appointment appointment)
    {
        await _databaseContext.Appointments.AddAsync(appointment);
        await Save();
        return appointment;
    }

    public async Task<Appointment?> UpdateAppointment(Appointment appointment)
    {
        var result = await _databaseContext.Appointments
            .Where(x => x.Id == appointment.Id).AsNoTracking().SingleOrDefaultAsync();
        if (result == null)
        {
            return null;
        }
        _databaseContext.Appointments.Update(appointment);
        await Save();
        return appointment;
    }

    public async Task<bool> DeleteAppointment(Guid id)
    {
        var appointment = await GetAppointmentById(id);
        if (appointment == null)
        {
            return false;
        }
        _databaseContext.Remove(appointment);
        await Save();
        return true;
    }

    public async Task Save()
    {
        await _databaseContext.SaveChangesAsync();
    }
}