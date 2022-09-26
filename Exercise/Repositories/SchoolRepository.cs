
using Dapper;
using StoredProcDemo.Context;
using StoredProcDemo.Models;
using System.Data;

namespace StoredProcDemo.Repositories
{
    internal class SchoolRepository : ISchoolRepository
    {
        private readonly DapperContext _context;

        public SchoolRepository()
        {
            _context = new DapperContext("Data Source=JCA-PC;Initial Catalog=SchoolDb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        }
        
        public async Task<decimal> GetSchoolRevenue(int id)
        {
            var spName = "[spSchool_GetRevenue]";
            
            using (var con = _context.CreateConnection())
            {
                return await con.ExecuteScalarAsync<decimal>(
                    spName,
                    new { schoolId = id },
                    commandType: CommandType.StoredProcedure);
            }
        }
    }
}
