namespace ZalaBahceV1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Urun")]
    public partial class Urun
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Urun()
        {
            UrunResim = new HashSet<UrunResim>();
        }

        public int urunID { get; set; }

        [StringLength(50)]
        public string urunAd { get; set; }

        public string aciklama { get; set; }

        public string aciklamaOzet { get; set; }

        public int? katID { get; set; }
        public string kapakResim { get; set; }
        public string aktif { get; set; }

        public virtual UrunKategori UrunKategori { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UrunResim> UrunResim { get; set; }
    }
}
