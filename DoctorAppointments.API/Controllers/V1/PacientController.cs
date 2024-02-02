using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointments.DataAccess.Entities;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V1;

[ApiVersion("1.0")]
[Route("api/v{version:apiVersion}/[controller]")]
[ApiController]
public class PacientController : ControllerBase
{
    private readonly IPacientService _pacientService;

    public PacientController(IPacientService pacientService)
    {
        _pacientService = pacientService;
    }

    [HttpGet]
    public async Task<IActionResult> GetAll()
    {
        var response = await _pacientService.GetAllPacients();

        if (response.Succeeded == false)
        {
            return BadRequest("No pacients in the database");
        }
        return Ok(response);
    }

    [HttpDelete]
    public async Task<IActionResult> Delete(Guid guid)
    {
        var result = await _pacientService.DeletePacient(guid);
        if (result.Succeeded == false)
            return BadRequest("Pacient not found");
        return Ok();
    }

    [HttpGet("{pacientId:guid}")]
    public async Task<IActionResult> GetById(Guid pacientId)
    {
        var response = await _pacientService.GetPacientById(pacientId);
        if (response.Succeeded == false)
        {
            return NotFound("Pacient not found");
        }
        return Ok(response);
    }

    [HttpGet("User/{userId:guid}")]
    public async Task<IActionResult> GetByUserId(Guid userId)
    {
        var response = await _pacientService.GetPacientByUserId(userId);
        if (response.Succeeded == false)
        {
            return NotFound("Pacient not found");
        }
        return Ok(response);
    }

    [HttpPost]
    public async Task<IActionResult> AddPacient([FromBody] PacientRequestModel pacientRequestModel)
    {
        var response = await _pacientService.AddPacient(pacientRequestModel);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }
        return Created(nameof(GetById), response);
    }

    [HttpPatch]
    public async Task<IActionResult> UpdatePacient([FromBody] Pacient pacient)
    {
        var response = await _pacientService.UpdatePacient(pacient);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }

        return Ok(response);
    }
}