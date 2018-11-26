using Microsoft.EntityFrameworkCore;

namespace API.DataContext
{
    public class StudyDbContext : DbContext
    {
        public StudyDbContext(DbContextOptions<StudyDbContext> options)
            : base(options)
        {
        }

        public DbSet<Models.Study> Studies { get; set; }
    }
}
