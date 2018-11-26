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
    public class StudyController : ControllerBase
    {
        private readonly StudyDbContext _context;

        public StudyController(StudyDbContext context)
        {
            _context = context;
        }

        // GET: api/Study
        [HttpGet]
        public IEnumerable<Study> Get()
        {
            return _context.Studies;
        }

        // GET: api/Study/5
        [HttpGet("{id}", Name = "GetStudy")]
        public async Task<IActionResult> Get(string id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var study = await _context.Studies.SingleOrDefaultAsync(s => s.Id == id);

            if (study == null)
            {
                return NotFound();
            }

            return Ok(study);
        }

        // POST: api/Study
        [HttpPost]
        public async Task<IActionResult> Post([FromBody] Study study)
        {
            throw new NotImplementedException();
        }

        // PUT: api/Study/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Put([FromRoute] string id, [FromBody] Study study)
        {
            _context.Studies.Update(study);
            await _context.SaveChangesAsync();

            return Ok(study);
        }

        private bool StudyExists(string id)
        {
            return _context.Studies.Any(e => e.Id == id);
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}
