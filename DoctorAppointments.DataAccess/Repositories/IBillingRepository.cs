using DoctorAppointments.DataAccess.Entities;


namespace DoctorAppointments.DataAccess.Repositories;

public interface IBillingRepository
{
    Task<Billing> AddBilling(Billing billing);
    Task<bool> DeleteBilling(Guid id);
    Task<List<Billing>> GetAllBillings();
    Task<Billing?> GetBillingById(Guid id);
    Task Save();
    Task<Billing?> UpdateBilling(Billing billing);
}
