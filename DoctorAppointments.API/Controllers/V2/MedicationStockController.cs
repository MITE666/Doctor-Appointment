using DoctorAppointment.Application.Commands;
using DoctorAppointment.Application.Models;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V2;

[ApiVersion("2.0")]
[Route("api/v{version:apiVersion}/[controller]")]
[ApiController]
public class MedicationStockController : ControllerBase
{
    private readonly IMediator mediator;

    public MedicationStockController(IMediator mediator)
    {
        this.mediator = mediator;
    }

    [HttpPost]
    public async Task<ActionResult<MedicationStockResponseModel>>
        Create([FromBody] CreateMedicationStockCommand command)
    {
        var result = await mediator.Send(command);
        return Ok(result);
    }
}