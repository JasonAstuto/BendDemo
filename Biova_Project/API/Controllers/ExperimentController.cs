using API.DataContext;
using API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ExperimentController : ControllerBase
    {
        private readonly ExperimentDbContext _context;

        public ExperimentController(ExperimentDbContext context)
        {
            _context = context;
        }

        // GET: api/Experiment
        [HttpGet]
        public IEnumerable<Experiment> Get()
        {
            return _context.Experiments;
        }

        // GET: api/Experiment/Study01
        [HttpGet("{id}", Name = "GetStudyExperiments")]
        public async Task<IActionResult> Get(string id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var experiments = await _context.Experiments.Where(e => e.StudyId == id).ToListAsync();

            if (experiments == null)
            {
                return NotFound();
            }

            return Ok(experiments);
        }

        // POST: api/Experiment
        [HttpPost]
        public void Post([FromBody] string value)
        {
            throw new NotImplementedException();
        }

        // PUT: api/Experiment/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
            throw new NotImplementedException();
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}
