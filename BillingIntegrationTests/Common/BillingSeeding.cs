using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;

namespace BillingIntegrationTests.Common
{
    internal class BillingSeeding
    {
        public static void InitializeDbForTests(DatabaseContext db)
        {
            db.Billings.AddRange(GetSeedingBillings());
            db.SaveChanges();
        }

        public static void ReinitializeDbForTests(DatabaseContext db)
        {
            db.Doctors.RemoveRange(db.Doctors);
            InitializeDbForTests(db);
        }

        public static List<Billing> GetSeedingBillings()
        {
            return new List<Billing>();
        }
    }
}