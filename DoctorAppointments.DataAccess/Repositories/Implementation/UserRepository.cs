using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation;

public class UserRepository : IUserRepository
{
    private readonly DatabaseContext _databaseContext;

    public UserRepository(DatabaseContext databaseContext)
    {
        _databaseContext = databaseContext;
    }

    public async Task<User?> GetUserById(Guid id)
    {
        var user = await _databaseContext.Users.FindAsync(id);
        if (user == null)
        {
            return null;
        }

        var userTypeId = await _databaseContext.UserTypes.FindAsync(user.UserTypeId);
        if (userTypeId == null)
        {
            return null;
        }

        user.UserType = userTypeId;
        return user;
    }

    public async Task<List<User>> GetAllUsers()
    {
        return (await _databaseContext.Users.Include(x => x.UserType).ToListAsync())!;
    }

    public async Task<User?> AddUser(User user)
    {
        var result = await _databaseContext.UserTypes.Where(x => x.Id == user.UserTypeId).SingleOrDefaultAsync();
        if (result == default)
            return null;
        await _databaseContext.Users.AddAsync(user);
        await Save();
        user.UserType = result;
        return user;
    }

    public async Task<User?> UpdateUser(User user)
    {
        var result = await _databaseContext.Users.Where(x => x.Id == user.Id).AsNoTracking().SingleOrDefaultAsync();
        if (result == default)
            return null;
        _databaseContext.Users.Update(user);
        await Save();
        return user;
    }

    public async Task<bool> DeleteUser(Guid id)
    {
        var user = await GetUserById(id);
        if (user == null) return false;
        _databaseContext.Users.Remove(user);
        await Save();
        return true;
    }

    public async Task Save()
    {
        await _databaseContext.SaveChangesAsync();
    }
}