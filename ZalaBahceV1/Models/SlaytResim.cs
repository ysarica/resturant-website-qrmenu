namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SlaytResim")]
    public partial class SlaytResim
    {
        [Key]
        public int SRID { get; set; }

        [StringLength(50)]
        public string resimyol { get; set; }

        [StringLength(50)]
        public string resimbaslik { get; set; }

        public int? SID { get; set; }
    }
}
