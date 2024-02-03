using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation;

public class BillingRepository : IBillingRepository
{
    private readonly DatabaseContext _databaseContext;

    public BillingRepository(DatabaseContext databaseContext)
    {
        _databaseContext = databaseContext;
    }

    public async Task<Billing?> GetBillingById(Guid id)
    {
        return await Task.Run(() => _databaseContext.Billings
            .Include(x=> x.Appointment)
            .Where(x=>x.Id ==id).SingleOrDefaultAsync());
    }

    public async Task<List<Billing>> GetAllBillings()
    {
        return await _databaseContext.Billings
            .Include(x =>x.Appointment)
            .ToListAsync();
    }

    public async Task<Billing> AddBilling(Billing billing)
    {
        await _databaseContext.Billings.AddAsync(billing);
        await Save();
        billing.Appointment = (await _databaseContext.Appointments.FindAsync(billing.AppointmentId)!)!;
        return billing;
    }

    public async Task<Billing?> UpdateBilling(Billing billing)
    {
        var result = await _databaseContext.Billings
            .Where(x => x.Id == billing.Id).AsNoTracking().SingleOrDefaultAsync();
        if (result == null)
        {
            return null;
        }
        _databaseContext.Billings.Update(billing);
        await Save();
        return billing;
    }

    public async Task<bool> DeleteBilling(Guid id)
    {
        var billing = await GetBillingById(id);
        if (billing == null)
        {
            return false;
        }
        _databaseContext.Remove(billing); 
        await Save();
        return true;
    }

    public async Task Save()
    {
        await _databaseContext.SaveChangesAsync();
    }
}