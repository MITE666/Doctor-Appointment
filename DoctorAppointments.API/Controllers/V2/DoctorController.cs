using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointments.DataAccess.Entities;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V2;

[ApiVersion("2.0")]
[Route("api/v{version:apiVersion}/[controller]")]
[ApiController]
public class DoctorController : ControllerBase
{
    private readonly IDoctorService _doctorService;

    public DoctorController(IDoctorService doctorService)
    {
        _doctorService = doctorService;
    }

    [HttpGet]
    public async Task<IActionResult> GetAll()
    {
        var response = await _doctorService.GetAllDoctors();

        if (response.Succeeded == false)
        {
            return BadRequest("No doctors in the database");
        }
        return Ok(response);
    }

    [HttpDelete]
    public async Task<IActionResult> Delete(Guid guid)
    {
        var result = await _doctorService.DeleteDoctor(guid);
        if (result.Succeeded == false)
            return BadRequest("Doctor not found");
        return Ok();
    }

    [HttpGet("{doctorId:guid}")]
    public async Task<IActionResult> GetById(Guid doctorId)
    {
        var response = await _doctorService.GetDoctorById(doctorId);
        if (response.Succeeded == false)
        {
            return BadRequest("Doctor not found");
        }
        return Ok(response);
    }

    [HttpPost]
    public async Task<IActionResult> AddDoctor([FromBody] DoctorRequestModel doctorRequestModel)
    {
        var response = await _doctorService.AddDoctor(doctorRequestModel);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }
        return Created(nameof(GetById), response);
    }

    [HttpPatch]
    public async Task<IActionResult> UpdateDoctor([FromBody] Doctor doctor)
    {
        var response = await _doctorService.UpdateDoctor(doctor);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }

        return Ok(response);
    }
}