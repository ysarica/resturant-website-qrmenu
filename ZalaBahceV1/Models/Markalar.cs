namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Markalar")]
    public partial class Markalar
    {
        [Key]
        public int MID { get; set; }

        [StringLength(50)]
        public string markaAd { get; set; }

        [StringLength(50)]
        public string markaResim { get; set; }
    }
}
