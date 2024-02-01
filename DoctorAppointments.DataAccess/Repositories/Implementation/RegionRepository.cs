using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;
using Microsoft.EntityFrameworkCore;

namespace DoctorAppointments.DataAccess.Repositories.Implementation
{
    public class RegionRepository : IRegionRepository
    {
        private readonly DatabaseContext _databaseContext;

        public RegionRepository(DatabaseContext databaseContext)
        {
            _databaseContext = databaseContext;
        }

        public async Task<IEnumerable<Region>> GetAllRegions()
        {
            return await _databaseContext.Regions.ToListAsync();
        }
    }
}