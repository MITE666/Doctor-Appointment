using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services;

public interface IMedicationStockService
{
    Task<ApiResponse<MedicationStockResponseModel>> GetMedicationStockById(Guid id);

    Task<ApiResponse<List<MedicationStockResponseModel>>> GetAllMedicationStock();

    Task<ApiResponse<bool>> DeleteMedicationStock(Guid id);

    Task<ApiResponse<MedicationStockResponseModel>> UpdateMedicationStock(MedicationStock medicationStock);

    Task<ApiResponse<MedicationStockResponseModel>> AddMedicationStock(MedicationStockRequestModel medicationStockRequestModel);
}