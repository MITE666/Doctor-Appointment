using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointments.DataAccess.Entities;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V1;

[ApiVersion("1.0")]
[Route("api/v{version:apiVersion}/[controller]")]
[ApiController]
public class MedicalFacilityController : ControllerBase
{
    private readonly IMedicalFacilityService _medicalFacilityService;
    public MedicalFacilityController(IMedicalFacilityService medicalFacilityService)
    { 
        _medicalFacilityService = medicalFacilityService;
    }

    [HttpDelete]
    public async Task<IActionResult> Delete(Guid guid)
    {
        var result = await _medicalFacilityService.DeleteFacility(guid);
        if (result.Succeeded == false)
            return BadRequest("Facility not found");
        return Ok();
    }

    [HttpGet("{facilityId:guid}")]
    public async Task<IActionResult> GetById(Guid facilityId)
    {
        var response = await _medicalFacilityService.GetFacilityById(facilityId);
        if (response.Succeeded == false)
        {
            return BadRequest("Facility not found");
        }
        return Ok(response);
    }

    [HttpGet]
    public async Task<IActionResult> GetAll()
    {
        var response = await _medicalFacilityService.GetAllFacilities();

        if (response.Succeeded == false)
        {
            return BadRequest("No medical facilities in the database");
        }
        return Ok(response);
    }

    [HttpPost]
    public async Task<IActionResult> AddFacility([FromBody] MedicalFacilityRequestModel facilityRequestModel)
    {
        var response = await _medicalFacilityService.AddFacility(facilityRequestModel);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }
        return Created(nameof(GetById), response);
    }

    [HttpPatch]
    public async Task<IActionResult> UpdateFacility([FromBody] MedicalFacility facility)
    {
        var response = await _medicalFacilityService.UpdateFacility(facility);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }

        return Ok(response);
    }
}