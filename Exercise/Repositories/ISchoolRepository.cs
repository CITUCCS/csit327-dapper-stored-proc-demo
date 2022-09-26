using StoredProcDemo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoredProcDemo.Repositories
{
    /// <summary>
    /// Interface for school repository
    /// </summary>
    internal interface ISchoolRepository
    {
        Task<School> GetSchool(int id);
        Task<decimal> GetSchoolRevenue(int id);
    }
}
