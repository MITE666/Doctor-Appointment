using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation
{
    internal class RegionService : IRegionService
    {
        private readonly IRegionRepository _regionRepository;

        public RegionService(IRegionRepository regionRepository)
        {
            _regionRepository = regionRepository;
        }

        public async Task<ApiResponse<IEnumerable<Region>>> GetRegionsAsync()
        {
            var result = await _regionRepository.GetAllRegions();
            if (!result.Any())
            {
                return ApiResponse<IEnumerable<Region>>.Fail("No Regions in Database");
            }
            return ApiResponse<IEnumerable<Region>>.Success(result);
        }
    }
}