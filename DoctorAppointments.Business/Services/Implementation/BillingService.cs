using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation;

public class BillingService : IBillingService
{
    private readonly IBillingRepository _billingRepository;
    private readonly IMapper _mapper;
    public BillingService(IBillingRepository billingRepository, IMapper mapper)
    {
        _billingRepository = billingRepository;
        _mapper = mapper;
    }

    public async Task<ApiResponse<BillingResponseModel>> AddBilling(BillingRequestModel billingRequestModel)
    {
        var billing = _mapper.Map<Billing>(billingRequestModel);
        billing = await _billingRepository.AddBilling(billing);
        return ApiResponse<BillingResponseModel>.Success(_mapper.Map<BillingResponseModel>(billing));
    }

    public async Task<ApiResponse<bool>> DeleteBilling(Guid id)
    {
        var result = await _billingRepository.DeleteBilling(id);
        return result ? ApiResponse<bool>.Success(true) : ApiResponse<bool>.Fail("Billing not found");
    }

    public async Task<ApiResponse<List<BillingResponseModel>>> GetAllBillings()
    {
        var billings = await _billingRepository.GetAllBillings();
        if (billings.Count == 0)
        {
            return ApiResponse<List<BillingResponseModel>>.Fail("Could not find billings in db");
        }
        return ApiResponse<List<BillingResponseModel>>.Success(_mapper.Map<List<BillingResponseModel>>(billings));
    }

    public async Task<ApiResponse<BillingResponseModel>> GetBillingById(Guid id)
    {
        var billing = await _billingRepository.GetBillingById(id);
        if (billing == null)
        {
            return ApiResponse<BillingResponseModel>.Fail("Could not find billing");
        }

        return ApiResponse<BillingResponseModel>.Success(_mapper.Map<BillingResponseModel>(billing));
    }

    public async Task<ApiResponse<BillingResponseModel>> UpdateBilling(Billing billing)
    {
        var result = await _billingRepository.UpdateBilling(billing);
        if (result == null)
        {
            return ApiResponse<BillingResponseModel>.Fail("Could not find billing");
        }
        return ApiResponse<BillingResponseModel>.Success(_mapper.Map<BillingResponseModel>(result));
    }
}