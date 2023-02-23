namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("GonderilenMail")]
    public partial class GonderilenMail
    {
        public int ID { get; set; }

        [StringLength(250)]
        public string konu { get; set; }

        public string mail { get; set; }

        [StringLength(150)]
        public string gönderen { get; set; }

        [StringLength(150)]
        public string gönderilen { get; set; }

        [StringLength(150)]
        public string tarih { get; set; }
    }
}
