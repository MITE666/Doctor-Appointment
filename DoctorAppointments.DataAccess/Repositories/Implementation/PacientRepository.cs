using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation;

public class PacientRepository : IPacientRepository
{
    private readonly DatabaseContext _databaseContext;

    public PacientRepository(DatabaseContext databaseContext)
    {
        _databaseContext = databaseContext;
    }

    public async Task<Pacient?> GetPacientById(Guid id)
    {
        return await Task.Run(() => _databaseContext.Pacients
            .Include(x => x.City)
            .ThenInclude(x => x.Region)
            .Where(x => x.Id == id).SingleOrDefaultAsync());
    }
    public async Task<Pacient?> GetPacientByUserId(Guid id)
    {
        return await Task.Run(() => _databaseContext.Pacients
            .Include(x => x.City)
            .ThenInclude(x => x.Region)
            .Where(x => x.UserId == id).SingleOrDefaultAsync());
    }

    public async Task<List<Pacient>> GetAllPacients()
    {
        return await _databaseContext.Pacients
            .Include(x => x.City)
            .ThenInclude(x => x.Region)
            .ToListAsync();
    }

    public async Task<Pacient> AddPacient(Pacient pacient)
    {
        await _databaseContext.Pacients.AddAsync(pacient);
        pacient.City = (await _databaseContext.Cities.FindAsync(pacient.CityId))!;
        await Save();
        return pacient;
    }

    public async Task<Pacient> UpdatePacient(Pacient pacient)
    {
        var result = await _databaseContext.Pacients.Where(x => x.Id == pacient.Id).AsNoTracking().SingleOrDefaultAsync();
        if (result != null)
        {
            return result;
        }
        _databaseContext.Pacients.Update(pacient);
        await Save();
        return pacient;
    }

    public async Task<bool> DeletePacient(Guid id)
    {
        var pacient = await GetPacientById(id);
        if (pacient == null)
        {
            return false;
        }
        _databaseContext.Remove(pacient);
        await Save();
        return true;
    }

    public async Task Save()
    {
        await _databaseContext.SaveChangesAsync();
    }
}