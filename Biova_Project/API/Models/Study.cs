namespace API.Models
{
    public class Study
    {
        public string Id { get; set; }
        //public int? ProjectId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string SortColumnName { get; set; }
        public string SortDirection { get; set; }

    }
}
