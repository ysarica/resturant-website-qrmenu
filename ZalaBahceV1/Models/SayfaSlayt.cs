namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SayfaSlayt")]
    public partial class SayfaSlayt
    {
        [Key]
        public int SID { get; set; }

        [StringLength(150)]
        public string slaytad { get; set; }
    }
}
