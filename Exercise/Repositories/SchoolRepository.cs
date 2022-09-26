
using StoredProcDemo.Models;

namespace StoredProcDemo.Repositories
{
    internal class SchoolRepository : ISchoolRepository
    {
        public Task<decimal> GetSchoolRevenue(int id)
        {
            throw new NotImplementedException();
        }

        public Task<School> GetSchool(int id)
        {
            throw new NotImplementedException();
        }
    }
}
