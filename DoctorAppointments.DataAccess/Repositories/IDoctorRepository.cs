using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointments.DataAccess.Repositories;

public interface IDoctorRepository
{
    Task<Doctor> AddDoctor(Doctor doctor);

    Task<bool> DeleteDoctor(Guid id);

    Task<List<Doctor>> GetAllDoctors();

    Task<Doctor?> GetDoctorById(Guid id);
    Task<Doctor?> GetDoctorByUserId(Guid id);


    Task Save();

    Task<Doctor?> UpdateDoctor(Doctor doctor);
}