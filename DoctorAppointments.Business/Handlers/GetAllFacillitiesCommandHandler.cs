using DoctorAppointment.Application.Commands;
using DoctorAppointment.Application.Mapping;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories.Base;
using MediatR;

namespace DoctorAppointment.Application.Handlers
{
    public class GetAllFacilitiesCommandHandler : IRequestHandler<GetAllFacilitiesCommand, MedicalFacilityResponseModel>
    {
        private readonly IRepository<MedicalFacility> repository;
        public GetAllFacilitiesCommandHandler(IRepository<MedicalFacility> repository)
        {
            this.repository = repository;
        }
        public async Task<MedicalFacilityResponseModel> Handle(GetAllFacilitiesCommand request, CancellationToken cancellationToken)
        {
            var facilityEntity = MedicalFacilityMapper.Mapper.Map<MedicalFacility>(request);
            if (facilityEntity == null)
            {
                throw new ApplicationException("Issue with the mapper");
            }

            var facilities = await repository.GetAllAsync();
            return MedicalFacilityMapper.Mapper.Map<MedicalFacilityResponseModel>(facilities);
        } 
    }
}
