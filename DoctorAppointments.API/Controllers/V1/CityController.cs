using DoctorAppointment.Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V1
{
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiController]
    public class CityController : ControllerBase
    {
        private readonly ICityService _cityService;

        public CityController(ICityService cityService)
        {
            _cityService = cityService;
        }

        [HttpGet("{regionId:guid}")]
        public async Task<IActionResult> GetAll(Guid regionId)
        {
            var response = await _cityService.GetCitiesAfterRegionAsync(regionId);

            if (response.Succeeded == false)
            {
                return BadRequest("No regions in the database");
            }
            return Ok(response);
        }
    }
}