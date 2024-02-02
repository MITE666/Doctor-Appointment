using DoctorAppointment.Application.Commands;
using DoctorAppointment.Application.Mapping;
using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories.Base;
using MediatR;

namespace DoctorAppointment.Application.Handlers
{
    public class CreateMedicalFacilityCommandHandler : IRequestHandler<CreateMedicalFacilityCommand, MedicalFacilityResponseModel>
    {
        private readonly IRepository<MedicalFacility> repository;
        public CreateMedicalFacilityCommandHandler(IRepository<MedicalFacility> repository)
        {
            this.repository = repository;
        }
        public async Task<MedicalFacilityResponseModel> Handle(CreateMedicalFacilityCommand request, CancellationToken cancellationToken)
        {
            var facilityEntity = MedicalFacilityMapper.Mapper.Map<MedicalFacility>(request);
            if (facilityEntity == null)
            {
                throw new ApplicationException("Issue with the mapper");
            }

            var newMedicalFacility = await repository.AddAsync(facilityEntity);
            return MedicalFacilityMapper.Mapper.Map<MedicalFacilityResponseModel>(newMedicalFacility);
        } 


    }
}
