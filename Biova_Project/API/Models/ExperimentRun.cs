using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Models
{
    public class ExperimentRun
    {
        public int Id { get; set; }
        public string ExperimentId { get; set; }
        public string LabTechnician { get; set; }
        public DateTime RunDate { get; set; }

    }
}
