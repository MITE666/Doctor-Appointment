using DoctorAppointment.Application.Commands;
using DoctorAppointment.Application.Models;


namespace DoctorAppointment.Controllers.V2
{

    using MediatR;
    using Microsoft.AspNetCore.Mvc;

    [ApiVersion("2.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiController]
    public class MedicalFacilityController : ControllerBase
    {
        private readonly IMediator mediator;

        public MedicalFacilityController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpPost]
        public async Task<ActionResult<MedicalFacilityResponseModel>>
            Create([FromBody] CreateMedicalFacilityCommand command)
        {
            var result = await mediator.Send(command);
            return Ok(result);
        }

        [HttpGet]
        public async Task<ActionResult<MedicalFacilityResponseModel>>
            Create(GetAllFacilitiesCommand command)
        {
            var result = await mediator.Send(command);
            return Ok(result);
        }

    }
}