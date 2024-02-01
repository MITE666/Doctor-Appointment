using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services
{
    public interface ICityService
    {
        public Task<ApiResponse<IEnumerable<City>>> GetCitiesAfterRegionAsync(Guid regionId);
    }
}