using DoctorAppointment.Application.Commands;
using DoctorAppointment.Application.Mapping;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories.Base;
using MediatR;

namespace DoctorAppointment.Application.Handlers
{
    public class CreateMedicationStockCommandHandler : IRequestHandler<CreateMedicationStockCommand, MedicationStockResponseModel>
    {
        private readonly IRepository<MedicationStock> repository;
        public CreateMedicationStockCommandHandler(IRepository<MedicationStock> repository)
        {
            this.repository = repository;
        }
        public async Task<MedicationStockResponseModel> Handle(CreateMedicationStockCommand request, CancellationToken cancellationToken)
        {
            var stockEntity = MedicationStockMapper.Mapper.Map<MedicationStock>(request);
            if (stockEntity == null)
            {
                throw new ApplicationException("Issue with the mapper");
            }

            var newMedicationStock = await repository.AddAsync(stockEntity);
            return MedicationStockMapper.Mapper.Map<MedicationStockResponseModel>(newMedicationStock);
        } 


    }
}
