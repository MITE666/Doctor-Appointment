using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services;

public interface IBillingService
{
    Task<ApiResponse<BillingResponseModel>> GetBillingById(Guid id);

    Task<ApiResponse<List<BillingResponseModel>>> GetAllBillings();

    Task<ApiResponse<bool>> DeleteBilling(Guid id);

    Task<ApiResponse<BillingResponseModel>> UpdateBilling(Billing billing);

    Task<ApiResponse<BillingResponseModel>> AddBilling(BillingRequestModel billingRequestModel);
}