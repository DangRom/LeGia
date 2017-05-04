using System;
using System.Collections.Generic;
using Dapper;
using System.Data;
using System.Linq;

namespace LeGia.Services.InfactStructure
{
    public abstract class RepositoriesBase<T> : IRepositoriesBase<T> where T : class
    {
        private IDbConnection _db;
        protected IDbConnection Db
        {
            get
            {
                string cnn = $"ConnectionString = Configuration[Database:ConnectionString]";
                return _db ?? (_db = new MySql.Data.MySqlClient.MySqlConnection(cnn));
            }
        }

        public bool CheckRecord(string sp, DynamicParameters para)
        {
            var check = Db.Query<int>(sp, para, null, false, null, CommandType.StoredProcedure);
            return bool.Parse(check.ToString());
        }

        public void Execute(string sp, DynamicParameters para)
        {
            Db.Execute(sp, para, null, null, CommandType.StoredProcedure);
        }

        public IEnumerable<T> GetAll(string sp, DynamicParameters para)
        {
            return Db.Query<T>(sp, para, null, false, null, CommandType.StoredProcedure).ToList();
        }

        public T GetById(string sp, DynamicParameters para)
        {
            return Db.Query<T>(sp, para, null, false, null, CommandType.StoredProcedure).FirstOrDefault();
        }
    }
}
