using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointments.DataAccess.Entities;
using Microsoft.AspNetCore.Mvc;

namespace DoctorAppointment.Controllers.V1;

[ApiVersion("1.0")]
[Route("api/v{version:apiVersion}/[controller]")]
[ApiController]
public class BillingController : ControllerBase
{
    private readonly IBillingService _billingService;

    public BillingController(IBillingService billingService)
    {
        _billingService = billingService;
    }

    [HttpGet]
    public async Task<IActionResult> GetAll()
    {
        var response = await _billingService.GetAllBillings();

        if (response.Succeeded == false)
        {
            return BadRequest("No billings in the database");
        }
        return Ok(response);
    }

    [HttpDelete]
    public async Task<IActionResult> Delete(Guid guid)
    {
        var result = await _billingService.DeleteBilling(guid);
        if(result.Succeeded == false)
            return BadRequest("Billing not found");
        return Ok();
    }

    [HttpGet("{billingId:guid}")]
    public async Task<IActionResult> GetById(Guid billingId)
    {
        var response = await _billingService.GetBillingById(billingId);
        if(response.Succeeded == false)
        {
            return BadRequest("Billing not found");
        }
        return Ok(response);
    }

    [HttpPost]
    public async Task<IActionResult> AddBilling([FromBody] BillingRequestModel billingRequestModel)
    {
        var response = await _billingService.AddBilling(billingRequestModel);
        if(response.Succeeded == false)
        {
            return BadRequest();
            
        }
        return Created(nameof(GetById), response);
    }

    [HttpPatch]
    public async Task<IActionResult> UpdateBilling([FromBody] Billing billing)
    {
        var response = await _billingService.UpdateBilling(billing);
        if (response.Succeeded == false)
        {
            return BadRequest();
        }

        return Ok(response);
    }
}