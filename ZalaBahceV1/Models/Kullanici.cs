namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Kullanici")]
    public partial class Kullanici
    {
        public int ID { get; set; }

        [StringLength(50)]
        public string ka { get; set; }

        [StringLength(50)]
        public string pw { get; set; }

        [StringLength(50)]
        public string yetki { get; set; }

        [StringLength(50)]
        public string songiris { get; set; }
        [StringLength(150)]
        public string adsoyad { get; set; }
        [StringLength(150)]
        public string mail { get; set; }
    }
}
