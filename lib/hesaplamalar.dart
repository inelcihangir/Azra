// Matematik hesaplamaları için fonksiyonlar

// Toplama işlemi
int topla(int a, int b) {
  return a + b;
}

// Çıkarma işlemi
int cikar(int a, int b) {
  return a - b;
}

// Çarpma işlemi
int carp(int a, int b) {
  return a * b;
}

// Bölme işlemi (double döndürür)
double bol(int a, int b) {
  if (b == 0) {
    print('Hata: Sıfıra bölme yapılamaz!');
    return 0.0;
  }
  return a / b;
}

// Üs alma işlemi
double usAl(double taban, int us) {
  double sonuc = 1;
  for (int i = 0; i < us; i++) {
    sonuc *= taban;
  }
  return sonuc;
}

// Faktöriyel hesaplama
int faktoriyel(int n) {
  if (n <= 1) {
    return 1;
  }
  int sonuc = 1;
  for (int i = 2; i <= n; i++) {
    sonuc *= i;
  }
  return sonuc;
}

// Sayının çift mi tek mi olduğunu kontrol etme
bool ciftMi(int sayi) {
  return sayi % 2 == 0;
}

// İki sayının maksimumunu bulma
int maksimum(int a, int b) {
  return a > b ? a : b;
}

// İki sayının minimumunu bulma
int minimum(int a, int b) {
  return a < b ? a : b;
}

// Sayının mutlak değerini bulma
int mutlakDeger(int sayi) {
  return sayi < 0 ? -sayi : sayi;
}

// Ortalama hesaplama
double ortalama(List<int> sayilar) {
  if (sayilar.isEmpty) {
    return 0.0;
  }
  
  int toplam = 0;
  for (int sayi in sayilar) {
    toplam += sayi;
  }
  
  return toplam / sayilar.length;
}

// Gelişmiş hesaplama örneği
void hesaplamaOrnekleri() {
  print('=== GELİŞMİŞ HESAPLAMALAR ===');
  
  print('5! = ${faktoriyel(5)}');
  print('2^8 = ${usAl(2, 8)}');
  print('15 çift mi? ${ciftMi(15)}');
  print('24 çift mi? ${ciftMi(24)}');
  print('max(45, 67) = ${maksimum(45, 67)}');
  print('min(45, 67) = ${minimum(45, 67)}');
  print('|-15| = ${mutlakDeger(-15)}');
  
  List<int> notlar = [85, 92, 78, 88, 95];
  print('Notlar: $notlar');
  print('Ortalama: ${ortalama(notlar).toStringAsFixed(1)}');
}
