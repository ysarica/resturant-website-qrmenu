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
            UrunYorum = new HashSet<UrunYorum>();
        }

        public int urunID { get; set; }

        [StringLength(50)]
        public string urunAd { get; set; }

        public string aciklama { get; set; }

        public string icerik { get; set; }

        public int? katID { get; set; }

        [StringLength(150)]
        public string kapakResim { get; set; }

        [StringLength(50)]
        public string aktif { get; set; }
        [StringLength(50)]
        public string TRFiyat { get; set; }
        [StringLength(50)]
        public string ARFiyat { get; set; }
        public int sira { get; set; }

        public virtual UrunKategori UrunKategori { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UrunResim> UrunResim { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UrunYorum> UrunYorum { get; set; }
    }
}
