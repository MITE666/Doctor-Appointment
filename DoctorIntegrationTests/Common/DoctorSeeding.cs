using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;

namespace DoctorIntegrationTests.Common
{
    internal class DoctorSeeding
    {
        public static void InitializeDbForTests(DatabaseContext db)
        {
            db.Doctors.AddRange(GetSeedingDoctors());
            db.SaveChanges();
        }

        public static void ReinitializeDbForTests(DatabaseContext db)
        {
            db.Doctors.RemoveRange(db.Doctors);
            InitializeDbForTests(db);
        }

        public static List<Doctor> GetSeedingDoctors()
        {
            return new List<Doctor>();
        }
    }
}