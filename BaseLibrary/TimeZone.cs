using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BaseLibrary
{
    public class TimeZone
    {
        public string Name { get; set; }
        public List<string> PlacesList { get; set; }
        public override string ToString()
        {
            return Name;
        }
    }
}
