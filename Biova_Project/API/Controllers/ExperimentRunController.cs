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
    public class ExperimentRunController : ControllerBase
    {
        private readonly ExperimentRunDbContext _context;

        public ExperimentRunController(ExperimentRunDbContext context)
        {
            _context = context;
        }

        // GET: api/ExperimentRun
        [HttpGet]
        public IEnumerable<ExperimentRun> Get()
        {
            return _context.ExperimentRuns;
        }

        // GET: api/ExperimentRun/Expt0001
        [HttpGet("{id}", Name = "GetExperimentRuns")]
        public async Task<IActionResult> Get(string id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var experimentRuns = await _context.ExperimentRuns.Where(e => e.ExperimentId == id).ToListAsync();

            if (experimentRuns == null)
            {
                return NotFound();
            }

            return Ok(experimentRuns);
        }

        // POST: api/ExperimentRun
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/ExperimentRun/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
