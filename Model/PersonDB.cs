using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVMApplication.Model
{
    public class PersonDB:DbContext
    {
        public PersonDB():base("name=DefaultConnection")
        {

        }

        public DbSet<Person> Person { get; set; }
    }
}
