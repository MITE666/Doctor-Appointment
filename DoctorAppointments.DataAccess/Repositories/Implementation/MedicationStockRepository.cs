using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using DoctorAppointments.DataAccess.Repositories.Implementation.Base;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation;

public class MedicationStockRepository : Repository<MedicationStock>, IMedicationStockRepository
{
    private readonly DatabaseContext _databaseContext;

    public MedicationStockRepository(DatabaseContext databaseContext) : base(databaseContext)
    {
        _databaseContext = databaseContext;
    }

    public async Task<MedicationStock?> GetMedicationStockById(Guid id)
    {
        return await _databaseContext.MedicationStocks.Where(e => e.Id == id).FirstOrDefaultAsync();
    }

    public async Task<List<MedicationStock>> GetAllMedicationStock()
    {
        return await _databaseContext.MedicationStocks
            .Include(x => x.MedicalFacility)
            .ThenInclude(x => x.City)
            .ThenInclude(x => x.Region)
            .ToListAsync();
    }

    public async Task<MedicationStock> AddMedicationStock(MedicationStock medicationStock)
    {
        await _databaseContext.MedicationStocks.AddAsync(medicationStock);
        await Save();
        return medicationStock;
    }

    public async Task<MedicationStock?> UpdateMedicationStock(MedicationStock medicationStock)
    {
        var result = await _databaseContext.MedicationStocks.Where(x => x.Id == medicationStock.Id).AsNoTracking().SingleOrDefaultAsync();
        if (result == null)
        {
            return result;
        }
        _databaseContext.MedicationStocks.Update(medicationStock);
        await Save();
        return medicationStock;
    }

    public async Task<bool> DeleteMedicationStock(Guid id)
    {
        var medicationStock = await GetMedicationStockById(id);
        if (medicationStock == null)
        {
            return false;
        }
        _databaseContext.Remove(medicationStock);
        await Save();
        return true;
    }

    public async Task Save()
    {
        await _databaseContext.SaveChangesAsync();
    }
}