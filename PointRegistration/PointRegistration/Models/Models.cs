using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PointRegistration.Models
{
    public class Driver
    {
        public string CNIC { get; set; }
        public string DriverName { get; set; }
        public string ContactNumber { get; set; }
    }
    public class Point
    {
        public int PointID { get; set; }
        public string NumberPlate { get; set; }
        public int NumberOfSeats { get; set; }
        public string CNIC { get; set; }
    }
}