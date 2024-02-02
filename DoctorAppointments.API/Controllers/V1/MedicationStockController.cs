using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointment.Application.Services.Implementation;
using DoctorAppointments.DataAccess.Entities;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V1;

[ApiVersion("1.0")]
[Route("api/v{version:apiVersion}/[controller]")]
[ApiController]
public class MedicationStockController : ControllerBase
{
    private readonly IMedicationStockService _medicationStockService;

    public MedicationStockController(IMedicationStockService medicationStockService)
    {
        this._medicationStockService = medicationStockService;
    }

    [HttpPost]
    public async Task<IActionResult> AddMedication([FromBody] MedicationStockRequestModel medicationRequestModel)
    {
        var response = await _medicationStockService.AddMedicationStock(medicationRequestModel);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }
        return Created(nameof(GetById), response);
    }

    [HttpGet]
    public async Task<IActionResult> GetAll()
    {
        var response = await _medicationStockService.GetAllMedicationStock();

        if (response.Succeeded == false)
        {
            return BadRequest("No medications in the database");
        }
        return Ok(response);
    }

    [HttpDelete]
    public async Task<IActionResult> Delete(Guid guid)
    {
        var result = await _medicationStockService.DeleteMedicationStock(guid);
        if (result.Succeeded == false)
            return BadRequest("MedicationStock not found");
        return Ok();
    }

    [HttpGet("{medicationStockId:guid}")]
    public async Task<IActionResult> GetById(Guid medicationStockId)
    {
        var response = await _medicationStockService.GetMedicationStockById(medicationStockId);
        if (response.Succeeded == false)
        {
            return BadRequest("MedicationStock not found");
        }
        return Ok(response);
    }


    [HttpPatch]
    public async Task<IActionResult> UpdateMedicationStock([FromBody] MedicationStock medicationStockResponseModel)
    {
        var response = await _medicationStockService.UpdateMedicationStock(medicationStockResponseModel);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }

        return Ok(response);
    }
}