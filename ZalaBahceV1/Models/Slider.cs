namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Slider")]
    public partial class Slider
    {
        [Key]
        public int SID { get; set; }

        [StringLength(150)]
        public string resim { get; set; }

        [StringLength(100)]
        public string baslik { get; set; }

        [StringLength(100)]
        public string slogan { get; set; }

        [StringLength(100)]
        public string link { get; set; }

        public int? siralama { get; set; }
    }
}
