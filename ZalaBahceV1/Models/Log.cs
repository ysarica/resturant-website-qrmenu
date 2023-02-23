namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Log")]
    public partial class Log
    {
        public int ID { get; set; }

        [StringLength(150)]
        public string Tarih { get; set; }

        public string Olay { get; set; }

        [StringLength(50)]
        public string Kim { get; set; }
    }
}
