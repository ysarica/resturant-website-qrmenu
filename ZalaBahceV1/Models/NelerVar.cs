namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NelerVar")]
    public partial class NelerVar
    {
        public int ID { get; set; }

        [StringLength(50)]
        public string baslik { get; set; }

        [StringLength(150)]
        public string aciklama { get; set; }
    }
}
