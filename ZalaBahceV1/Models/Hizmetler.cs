namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Hizmetler")]
    public partial class Hizmetler
    {
        [Key]
        public int HID { get; set; }

        [StringLength(50)]
        public string ad { get; set; }

        public string icerik { get; set; }

        [StringLength(150)]
        public string resim { get; set; }
    }
}
