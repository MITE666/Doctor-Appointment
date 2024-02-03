using Stripe;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoctorAppointment.Application.Services
{
    public interface IPaymentService
    {
        public PaymentIntent GetPaymentIntent();

    }
}
