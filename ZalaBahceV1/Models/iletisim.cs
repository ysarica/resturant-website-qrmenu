namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("iletisim")]
    public partial class iletisim
    {
        public int ID { get; set; }

        [StringLength(50)]
        public string baslik { get; set; }

        [StringLength(50)]
        public string mail { get; set; }

        [StringLength(250)]
        public string adres { get; set; }

        [StringLength(50)]
        public string telefon { get; set; }

        public string harita { get; set; }
    }
}
