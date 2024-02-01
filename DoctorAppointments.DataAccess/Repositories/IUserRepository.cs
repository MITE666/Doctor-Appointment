using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointments.DataAccess.Repositories
{
    public interface IUserRepository
    {
        Task<User?> AddUser(User user);

        Task<bool> DeleteUser(Guid id);

        Task<List<User>> GetAllUsers();

        Task<User?> GetUserById(Guid id);

        Task Save();

        Task<User?> UpdateUser(User user);
    }
}