// Basit hesap makinesi - Dart pratiği için

void main() {
  print('=== BASİT HESAP MAKİNESİ ===\n');
  
  // Test hesaplamaları
  double sayi1 = 20;
  double sayi2 = 8;
  
  print('Sayı 1: $sayi1');
  print('Sayı 2: $sayi2\n');
  
  print('Toplama: ${sayi1} + ${sayi2} = ${topla(sayi1, sayi2)}');
  print('Çıkarma: ${sayi1} - ${sayi2} = ${cikar(sayi1, sayi2)}');
  print('Çarpma: ${sayi1} × ${sayi2} = ${carp(sayi1, sayi2)}');
  print('Bölme: ${sayi1} ÷ ${sayi2} = ${bol(sayi1, sayi2)}');
  
  print('\n--- Özel İşlemler ---');
  print('${sayi1}\'nın karesi: ${kare(sayi1)}');
  print('${sayi1}\'nın küpü: ${kup(sayi1)}');
  print('${sayi1}\'nın karekökü: ${karekok(sayi1).toStringAsFixed(2)}');
  
  // Yaş hesaplama örneği
  print('\n--- Yaş Hesaplama ---');
  int dogumYili = 1998;
  int suankiYil = 2025;
  int yas = yasHesapla(dogumYili, suankiYil);
  print('Doğum yılı: $dogumYili');
  print('Şuanki yıl: $suankiYil');
  print('Yaş: $yas');
  
  // Not ortalaması hesaplama
  print('\n--- Not Ortalaması ---');
  List<double> notlar = [85.5, 92.0, 78.5, 88.0, 95.5];
  double ortalama = notOrtalamasi(notlar);
  print('Notlar: $notlar');
  print('Ortalama: ${ortalama.toStringAsFixed(1)}');
  print('Harf notu: ${harfNotu(ortalama)}');
}

// Temel matematik işlemleri
double topla(double a, double b) => a + b;
double cikar(double a, double b) => a - b;
double carp(double a, double b) => a * b;
double bol(double a, double b) => b != 0 ? a / b : 0;

// Özel matematik işlemleri
double kare(double sayi) => sayi * sayi;
double kup(double sayi) => sayi * sayi * sayi;
double karekok(double sayi) => sayi > 0 ? sayi.sqrt() : 0;

// Yaş hesaplama
int yasHesapla(int dogumYili, int suankiYil) {
  return suankiYil - dogumYili;
}

// Not ortalaması hesaplama
double notOrtalamasi(List<double> notlar) {
  if (notlar.isEmpty) return 0;
  
  double toplam = 0;
  for (double not in notlar) {
    toplam += not;
  }
  return toplam / notlar.length;
}

// Harf notu belirleme
String harfNotu(double ortalama) {
  if (ortalama >= 90) return 'AA';
  if (ortalama >= 85) return 'BA';
  if (ortalama >= 80) return 'BB';
  if (ortalama >= 75) return 'CB';
  if (ortalama >= 70) return 'CC';
  if (ortalama >= 65) return 'DC';
  if (ortalama >= 60) return 'DD';
  if (ortalama >= 50) return 'FD';
  return 'FF';
}

// sqrt metodunu eklemek için extension
extension DoubleExtension on double {
  double sqrt() {
    if (this < 0) return 0;
    double x = this;
    double y = 1;
    double e = 0.000001; // hassasiyet
    while ((x - y).abs() > e) {
      x = (x + y) / 2;
      y = this / x;
    }
    return x;
  }
}
