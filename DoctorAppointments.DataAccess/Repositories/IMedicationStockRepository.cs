using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories.Base;

namespace DoctorAppointments.DataAccess.Repositories;

public interface IMedicationStockRepository : IRepository<MedicationStock>
{
    //
    Task<MedicationStock?> GetMedicationStockById(Guid id);
    //
    Task<MedicationStock> AddMedicationStock(MedicationStock medicationStock);

    Task<bool> DeleteMedicationStock(Guid id);

    Task<List<MedicationStock>> GetAllMedicationStock();


    Task Save();

    Task<MedicationStock?> UpdateMedicationStock(MedicationStock medicationStock);
}