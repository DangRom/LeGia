﻿using System.Collections.Generic;
using Dapper;

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
