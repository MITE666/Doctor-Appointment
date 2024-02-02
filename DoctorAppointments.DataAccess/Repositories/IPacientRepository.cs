using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointments.DataAccess.Repositories;

public interface IPacientRepository
{
    Task<Pacient> AddPacient(Pacient pacient);

    Task<bool> DeletePacient(Guid id);

    Task<List<Pacient>> GetAllPacients();

    Task<Pacient?> GetPacientById(Guid id);
    Task<Pacient?> GetPacientByUserId(Guid id);


    Task Save();

    Task<Pacient> UpdatePacient(Pacient pacient);
}