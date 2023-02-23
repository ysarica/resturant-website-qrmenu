namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sayac")]
    public partial class Sayac
    {
        [Key]
        public int SID { get; set; }

        [StringLength(50)]
        public string yil { get; set; }

        [StringLength(50)]
        public string ay { get; set; }

        [StringLength(50)]
        public string gün { get; set; }

        public int? sayi { get; set; }
    }
}
