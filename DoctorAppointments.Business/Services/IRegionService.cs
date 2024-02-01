using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services
{
    public interface IRegionService
    {
        public Task<ApiResponse<IEnumerable<Region>>> GetRegionsAsync();
    }
}