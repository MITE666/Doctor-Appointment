using DoctorAppointments.DataAccess.Persistence;
using DoctorAppointments.DataAccess.Repositories.Base;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation.Base
{
    public class Repository<T> : IRepository<T> where T : class
    {
        protected readonly DatabaseContext _databaseContext;
        public Repository(DatabaseContext databaseContext)
        {
            this._databaseContext = databaseContext;
        }
        public async Task<T> AddAsync(T entity)
        {
            await _databaseContext.Set<T>().AddAsync(entity);
            await _databaseContext.SaveChangesAsync();
            return entity;
        }

        public async Task<IReadOnlyCollection<T>> GetAllAsync()
        {
            return await _databaseContext.Set<T>().ToListAsync();
        }
    }
}
