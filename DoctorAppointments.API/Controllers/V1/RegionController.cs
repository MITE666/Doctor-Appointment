using DoctorAppointment.Application.Services;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V1
{
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiController]
    public class RegionController : ControllerBase
    {
        private readonly IRegionService _regionService;

        public RegionController(IRegionService regionService)
        {
            _regionService = regionService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            var response = await _regionService.GetRegionsAsync();

            if (response.Succeeded == false)
            {
                return BadRequest("No regions in the database");
            }
            return Ok(response);
        }
    }
}