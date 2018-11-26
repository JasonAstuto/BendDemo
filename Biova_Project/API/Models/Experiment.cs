using System;

namespace API.Models
{
    public class Experiment
    {
        public string Id { get; set; }
        public string StudyId { get; set; }
        public string Text { get; set; }
        public int Index { get; set; }
        public DateTime CreationDate { get; set; }
    }
}