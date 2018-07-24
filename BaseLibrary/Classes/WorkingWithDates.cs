using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BaseLibrary.Classes
{
    /// <summary>
    /// This class is for teaching purposes.
    /// </summary>
    public class WorkingWithDates
    {
        public int Id { get; set; }
        public DateTimeOffset? SomeDateWithOffSet { get; set; }
        public string Zone { get; set; }
        public string Locations { get; set; }
        public string[] LocationsArray => Locations.Split(',').Select(p => p.TrimEnd()).ToArray();
        public DateTime? SomeDate { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
