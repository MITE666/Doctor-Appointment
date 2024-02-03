using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointments.DataAccess.Entities;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V1;

[ApiVersion("1.0")]
[Route("api/v{version:apiVersion}/[controller]")]
[ApiController]
public class AppointmentController : ControllerBase
{
    private readonly IAppointmentService _appointmentService;

    public AppointmentController(IAppointmentService appointmentService)
    {
        _appointmentService = appointmentService;
    }

    [HttpGet]
    public async Task<IActionResult> GetAll()
    {
        var response = await _appointmentService.GetAllAppointments();

        if (response.Succeeded == false)
        {
            return BadRequest("No appointments in the database");
        }
        return Ok(response);
    }

    [HttpDelete]
    public async Task<IActionResult> Delete(Guid guid)
    {
        var result = await _appointmentService.DeleteAppointment(guid);
        if (result.Succeeded == false)
            return BadRequest("Appointment not found");
        return Ok();
    }

    [HttpGet("{appointmentId:guid}")]
    public async Task<IActionResult> GetById(Guid appointmentId)
    {
        var response = await _appointmentService.GetAppointmentById(appointmentId);
        if (response.Succeeded == false)
        {
            return BadRequest("Appointment not found");
        }
        return Ok(response);
    }


    [HttpGet("User/{userId:guid}")]
    public async Task<IActionResult> GetAppointmentByUserId(Guid userId)
    {
        var response = await _appointmentService.GetUserAppointments(userId);
        if (response.Succeeded == false)
        {
            return BadRequest("Appointments not found");
        }
        return Ok(response);
    }

    [HttpPost]
    public async Task<IActionResult> AddAppointment([FromBody] AppointmentRequestModel appointmentRequestModel)
    {
        var response = await _appointmentService.AddAppointment(appointmentRequestModel);
        if (response.Succeeded == false)
        {
            return BadRequest();

        }
        return Created(nameof(GetById), response);
    }

    [HttpPatch]
    public async Task<IActionResult> UpdateAppointment([FromBody] Appointment appointment)
    {
        var response = await _appointmentService.UpdateAppointment(appointment);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }

        return Ok(response);
    }
}