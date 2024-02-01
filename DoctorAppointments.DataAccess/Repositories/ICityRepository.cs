using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointments.DataAccess.Repositories
{
    public interface ICityRepository
    {
        public Task<IEnumerable<City>> GetCitiesByRegionAsync(Guid regionId);
    }
}