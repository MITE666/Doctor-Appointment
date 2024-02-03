using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Stripe;

namespace DoctorAppointment.Application.Services.Implementation
{
    public class PaymentService : IPaymentService
    {
        public PaymentService() { }

        public PaymentIntent GetPaymentIntent()
        {
            var options = new PaymentIntentCreateOptions
            {
                Amount = 2000,
                Currency = "usd",
                PaymentMethodTypes = new List<string>
                {
                    "card",
                },
            };
            var service = new PaymentIntentService();
            var result = service.Create(options);

            return result;

        }
    }
}
