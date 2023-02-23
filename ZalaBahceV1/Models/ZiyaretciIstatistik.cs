namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ZiyaretciIstatistik")]
    public partial class ZiyaretciIstatistik
    {
        public int ID { get; set; }

        [StringLength(50)]
        public string IP { get; set; }

        [StringLength(50)]
        public string Browser { get; set; }

        [StringLength(50)]
        public string Dil { get; set; }

        public string NeredenGeldi { get; set; }

        public string NereyeGeldi { get; set; }
    }
}
