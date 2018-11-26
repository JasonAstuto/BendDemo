using Microsoft.EntityFrameworkCore;

namespace API.DataContext
{
    public class ExperimentDbContext : DbContext
    {
        public ExperimentDbContext(DbContextOptions<ExperimentDbContext> options)
            : base(options)
        {
        }

        public DbSet<Models.Experiment> Experiments { get; set; }
    }
}
