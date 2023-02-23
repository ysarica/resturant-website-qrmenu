namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Resim")]
    public partial class Resim
    {
        [Key]
        public int RID { get; set; }

        [Column("resim")]
        [StringLength(150)]
        public string resim1 { get; set; }

        [StringLength(50)]
        public string icerik { get; set; }

        [StringLength(50)]
        public string baslik { get; set; }
    }
}
