namespace DoctorAppointments.DataAccess.Repositories.Base
{
    public interface IRepository<T> where T : class
    {
        Task<T> AddAsync(T entity);
        Task<IReadOnlyCollection<T>> GetAllAsync();
    }
}
