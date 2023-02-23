namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sosyal")]
    public partial class Sosyal
    {
        [Key]
        public int SID { get; set; }

        [StringLength(150)]
        public string ad { get; set; }

        [StringLength(150)]
        public string link { get; set; }

        [StringLength(150)]
        public string icon { get; set; }
    }
}
