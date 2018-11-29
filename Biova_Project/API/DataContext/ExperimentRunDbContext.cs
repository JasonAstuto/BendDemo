using Microsoft.EntityFrameworkCore;

namespace API.DataContext
{
    public class ExperimentRunDbContext : DbContext
    {
        public ExperimentRunDbContext(DbContextOptions<ExperimentRunDbContext> options)
            : base(options)
        {
        }

        public DbSet<Models.ExperimentRun> ExperimentRuns { get; set; }
    }
}
