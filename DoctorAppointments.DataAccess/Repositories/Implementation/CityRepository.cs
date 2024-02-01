using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation
{
    public class CityRepository : ICityRepository
    {
        private readonly DatabaseContext _databaseContext;

        public CityRepository(DatabaseContext databaseContext)
        {
            _databaseContext = databaseContext;
        }

        public async Task<IEnumerable<City>> GetCitiesByRegionAsync(Guid regionId)
        {
            return await _databaseContext.Cities.Where(x => x.RegionId == regionId).ToListAsync();
        }
    }
}