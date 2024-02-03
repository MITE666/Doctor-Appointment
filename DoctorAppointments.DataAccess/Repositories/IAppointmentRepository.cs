using DoctorAppointments.DataAccess.Entities;


namespace DoctorAppointments.DataAccess.Repositories;

public interface IAppointmentRepository
{
    Task<Appointment> AddAppointment(Appointment appointment);
    Task<bool> DeleteAppointment(Guid id);
    Task<List<Appointment>> GetAllAppointments();
    Task<Appointment?> GetAppointmentById(Guid id);
    Task Save();
    Task<Appointment?> UpdateAppointment(Appointment appointment);
    Task<List<Appointment>> GetPacientAppointments(Guid id);
    Task<List<Appointment>> GetDoctorAppointments(Guid id);


}