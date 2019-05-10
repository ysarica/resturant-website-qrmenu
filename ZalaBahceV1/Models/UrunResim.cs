namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UrunResim")]
    public partial class UrunResim
    {
        [Key]
        public int resimID { get; set; }

        [StringLength(50)]
        public string resim { get; set; }

        [StringLength(50)]
        public string resimalt { get; set; }

        public int? urunID { get; set; }

        public virtual Urun Urun { get; set; }
    }
}
