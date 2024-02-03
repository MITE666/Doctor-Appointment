using DoctorAppointment.Application.Services;
using Microsoft.AspNetCore.Mvc;
using Stripe;

namespace DoctorAppointment.Controllers.V1
{
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiController]
    public class PaymentController : ControllerBase
    {
        private readonly IPaymentService _paymentService;

        public PaymentController(IPaymentService paymentService)
        {
            _paymentService = paymentService;
        }

        [HttpGet]
        public async Task<IActionResult> GetPaymentIntent()
        {
            var response = _paymentService.GetPaymentIntent();
            if (response == null)
            {
                return BadRequest("Could not create intent");
            }
            return Ok(response);
        }
    }
}
