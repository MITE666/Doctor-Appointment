using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointments.DataAccess.Repositories
{
    public interface IRegionRepository
    {
        public Task<IEnumerable<Region>> GetAllRegions();
    }
}