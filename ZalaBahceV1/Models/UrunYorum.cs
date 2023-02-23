namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UrunYorum")]
    public partial class UrunYorum
    {
        [Key]
        public int YID { get; set; }

        [StringLength(100)]
        public string adsoyad { get; set; }

        [StringLength(100)]
        public string mail { get; set; }

        [StringLength(100)]
        public string tel { get; set; }

        public string mesaj { get; set; }

        [StringLength(100)]
        public string nerden { get; set; }

        public int? urunID { get; set; }

        public virtual Urun Urun { get; set; }
    }
}
