using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;

namespace MedicalFacilityIntegrationTests.Common
{
    internal class MedicalFacilitiesSeeding
    {
        public static void InitializeDbForTests(DatabaseContext db)
        {
            db.MedicalFacilities.AddRange(GetSeedingFacilities());
            db.SaveChanges();
        }

        public static void ReinitializeDbForTests(DatabaseContext db)
        {
            db.Doctors.RemoveRange(db.Doctors);
            InitializeDbForTests(db);
        }

        public static List<MedicalFacility> GetSeedingFacilities()
        {
            return new List<MedicalFacility>();
        }
    }
}