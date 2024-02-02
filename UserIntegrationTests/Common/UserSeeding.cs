using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Persistence;

namespace UserIntegrationTests.Common
{
    public class UserSeeding
    {
        public static void InitializeDbForTests(DatabaseContext db)
        {
            db.Users.AddRange(GetSeedingUsers());
            db.SaveChanges();
        }

        public static void ReinitializeDbForTests(DatabaseContext db)
        {
            db.Users.RemoveRange(db.Users);
            InitializeDbForTests(db);
        }

        public static List<User> GetSeedingUsers()
        {
            return new List<User>()
           {
                new User
                {
                    Id=Guid.Parse("A825BD63-F0DB-4CB1-8FB4-AD698EF7E23B"),
                    UserTypeId = Guid.Parse("8A16D3E1-DC8D-47D6-B93A-BD7A1D5824AB"),
                    Email="email@email.com",
                    Password="Parola123"
                },
                new User
                {
                    Id=Guid.Parse("15BF17E5-2D7D-42B5-8EBF-FC99B2D04D19"),
                    UserTypeId =Guid.Parse("430F6E13-FF63-461F-9F24-4054B2D68BEE"),
                    Email="email@email.com",
                    Password="Parola123"
                }
            };
        }
    }
}