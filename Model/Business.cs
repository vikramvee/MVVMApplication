using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVMApplication.Model
{
    public class Business
    {
        PersonDB _dbContext = null;
        public Business()
        {
            AppDomain.CurrentDomain.SetData("DataDirectory",
             Environment.GetFolderPath(Environment.SpecialFolder.CommonApplicationData));
            _dbContext = new PersonDB();
        }

        internal IEnumerable<Person> Get()
        {
            return _dbContext.Person.ToList();
        }

        internal void Delete(Person person)
        {
            _dbContext.Person.Remove(person);
        }

        internal void Update(Person updatedPerson)
        {
            CheckValidations(updatedPerson);
            if (updatedPerson.Id > 0)
            {
                Person selectedPerson = _dbContext.Person.First(p => p.Id == updatedPerson.Id);
                selectedPerson.FirstName = updatedPerson.FirstName;
                selectedPerson.LastName = updatedPerson.LastName;
                selectedPerson.CityOfResidence = updatedPerson.CityOfResidence;
                selectedPerson.Profession = updatedPerson.Profession;
            }
            else
            {
                _dbContext.Person.Add(updatedPerson);
            }

            _dbContext.SaveChanges();
        }

        private void CheckValidations(Person person)
        {
            if(person == null)
            {
                throw new ArgumentNullException("Person", "Please select record from Grid or Add New");
            }

            if (string.IsNullOrEmpty(person.FirstName))
            {
                throw new ArgumentNullException("First Name", "Please enter FirstName");
            }
            else if (string.IsNullOrEmpty(person.LastName))
            {
                throw new ArgumentNullException("Last Name", "Please enter LastName");
            }
            else if ((int)person.Profession == -1)
            {
                throw new ArgumentNullException("Profession", "Please enter Profession");
            }
        }
    }
}
