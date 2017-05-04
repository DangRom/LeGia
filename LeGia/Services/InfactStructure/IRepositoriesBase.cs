using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using System.Data;

namespace LeGia.Services.InfactStructure
{
    public interface IRepositoriesBase<T> where T : class
    {
        void Execute(string sp, DynamicParameters para);
        bool CheckRecord(string sp, DynamicParameters para);
        T GetById(string sp, DynamicParameters para);
        IEnumerable<T> GetAll(string sp, DynamicParameters para);
    }
}
