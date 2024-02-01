using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation
{
    public class CityService : ICityService
    {
        private readonly ICityRepository _cityRepository;

        public CityService(ICityRepository cityRepository)
        {
            _cityRepository = cityRepository;
        }

        public async Task<ApiResponse<IEnumerable<City>>> GetCitiesAfterRegionAsync(Guid regionId)
        {
            var result = await _cityRepository.GetCitiesByRegionAsync(regionId);
            if (!result.Any())
            {
                return ApiResponse<IEnumerable<City>>.Fail("There are no cities for that region");
            }

            return ApiResponse<IEnumerable<City>>.Success(result);
        }
    }
}