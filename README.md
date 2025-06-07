MÜZE ENVANTER SİSTEMİ

Proje Özeti
Bu veritabanı sistemi, vakıflar tarafından korunan kültürel eserlerin envanter yönetimi için tasarlanmıştır. Halı, kilim, cicim gibi tekstil eserlerinin fiziksel özelliklerini, konum bilgilerini ve koruma durumlarını sistematik şekilde kaydetmeyi amaçlamaktadır.

Proje Amacı
Kültürel eserlerin dijital envanterinin oluşturulması

Eserlerin fiziksel özelliklerinin kayıt altına alınması

Depolama ve sergileme birimlerinin yönetimi

Eserlerin coğrafi dağılımının takibi

Koruma ve restorasyon süreçlerinin izlenmesi

Veritabanı Yapısı
1. Tablolar ve İlişkiler
a. Temel Tablolar:
EserTurleri: Eser türlerini tanımlar (HALI, KILIM, CİCİM vb.)

Bolgeler: Coğrafi bölgeleri içerir (Doğu Anadolu, İç Anadolu vb.)

Yerler: Eserlerin bulunduğu mekânları kaydeder (camiler, müdürlükler vb.)

DepoBolumleri: Depo organizasyon yapısını tanımlar

Raflar: Depolardaki fiziksel raf bilgilerini içerir

Eserler: Tüm eser kayıtlarını tutar

EserAciklamalari: Eserlere ait ek açıklamaları saklar

b. İlişkiler:
Yerler ↔ Bolgeler: Her yer bir bölgeye aittir (n-1)

Eserler ↔ EserTurleri: Her eser bir türe aittir (n-1)

Eserler ↔ Yerler: Eserlerin bulunduğu mekân bilgisi (n-1)

Eserler ↔ Raflar: Depodaki fiziksel konum bilgisi (n-1)

Raflar ↔ DepoBolumleri: Rafların bulunduğu depo bölümleri (n-1)

EserAciklamalari ↔ Eserler: Eserlere ait ek açıklamalar (n-1)

2. Örnek Veri Seti
Sistemde örnek olarak:

5 eser türü

5 coğrafi bölge

6 mekân kaydı

5 depo bölümü

5 raf

21 eser kaydı

6 eser açıklaması bulunmaktadır

Sistem Fonksiyonları
1. Eser Envanter Yönetimi
Eser numaralandırma ve sıralama

Fiziksel özelliklerin kaydı (ebatlar)

Adet bilgisi yönetimi

Tür ve envanter numarası takibi

2. Konum Yönetimi
Coğrafi bölge ve şehir bazlı sınıflandırma

Mekân bazlı eser gruplandırması

Depo organizasyon yapısı

Raf bazlı fiziksel konumlandırma

3. Durum Takibi
Eserlerin mevcut durumları (Depoda, Sergide, Restorasyonda)

Kayıt tarihi takibi

Özel koruma gerektiren eserlerin işaretlenmesi

4. Açıklama ve Notlar
Tarihsel açıklamalar

Teknik özellik notları

Koruma talimatları

Özel durum açıklamaları

Teknik Detaylar
1. Veritabanı Yapısı
DBMS: MySQL

Tablo Sayısı: 7

İlişkisel Yapı: Foreign key ilişkileriyle güçlü referans bütünlüğü

Kısıtlamalar: UNIQUE kısıtlarıyla veri tekilliği sağlanmıştır

2. Veri Tipleri
Kimlik Alanları: INT AUTO_INCREMENT

Metin Alanları: VARCHAR (20-100) ve TEXT

Tarih Alanları: DATE

Sayısal Alanlar: INT (ebat bilgileri, adet vb.)

Durum Bilgileri: VARCHAR (20) (varsayılan değerlerle)

Kullanım Senaryoları
1. Yeni Eser Kaydı
Önce tür ve yer bilgileri kontrol edilir veya eklenir

Depo ve raf bilgileri belirlenir

Eser tablosuna temel bilgiler kaydedilir

Gerekirse açıklama eklenir

2. Eser Konum Değişikliği
Eserin raf bilgisi güncellenir

Durum alanı (Depoda/Sergide/Restorasyonda) güncellenir

Mekân değişikliği yapılırsa yer_id güncellenir

3. Envanter Sorgulama
Tür, bölge veya duruma göre filtreleme yapılabilir

Fiziksel özelliklere göre arama yapılabilir

Açıklama metinleri içinde arama yapılabilir

Sistem Çıktıları ve Raporlar
1. Eser Envanter Raporu
Tür bazında eser sayıları

Bölgesel dağılım raporu

Durum bazında istatistikler

2. Depo Yönetim Raporları
Raf doluluk oranları

Depo bölümlerindeki eser dağılımı

Kat bazında envanter

3. Koruma ve Restorasyon Raporları
Restorasyondaki eserlerin listesi

Özel koruma gerektiren eserler

Açıklamalara göre filtreleme

Sonuç ve Öneriler
Bu veritabanı sistemi, vakıf eserlerinin profesyonel şekilde yönetimi için temel altyapıyı sağlamaktadır. İleriki aşamalarda:

Görsel Yönetim: Eser fotoğraflarını saklayacak bir modül eklenebilir

Ziyaretçi Takibi: Sergilenen eserlerin ziyaretçi istatistikleri eklenebilir

Restorasyon Modülü: Restorasyon süreçlerini detaylı takip eden bir modül oluşturulabilir

Eser Hareket Takibi: Eserlerin yer değişim geçmişi kaydedilebilir

Kullanıcı Yetkilendirme: Farklı erişim seviyeleri tanımlanabilir
