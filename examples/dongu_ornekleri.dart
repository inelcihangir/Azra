// Döngü örnekleri - Dart öğrenme projesi

void main() {
  print('=== DÖNGÜ ÖRNEKLERİ ===\n');
  
  // For döngüsü örnekleri
  forDongusuOrnekleri();
  
  // While döngüsü örnekleri
  whileDongusuOrnekleri();
  
  // Do-while döngüsü örneği
  doWhileDongusuOrnek();
  
  // İç içe döngüler
  icIceDonguler();
}

void forDongusuOrnekleri() {
  print('1. FOR DÖNGÜSÜ ÖRNEKLERİ');
  print('-' * 25);
  
  // Basit for döngüsü
  print('1\'den 5\'e kadar sayılar:');
  for (int i = 1; i <= 5; i++) {
    print('Sayı: $i');
  }
  
  // Geriye doğru sayma
  print('\n5\'ten 1\'e kadar sayılar:');
  for (int i = 5; i >= 1; i--) {
    print('Sayı: $i');
  }
  
  // Çift sayıları yazdırma
  print('\n1\'den 10\'a kadar çift sayılar:');
  for (int i = 2; i <= 10; i += 2) {
    print('Çift sayı: $i');
  }
  
  print('');
}

void whileDongusuOrnekleri() {
  print('2. WHILE DÖNGÜSÜ ÖRNEKLERİ');
  print('-' * 27);
  
  // Basit while döngüsü
  int sayac = 1;
  print('While ile 1\'den 3\'e kadar:');
  while (sayac <= 3) {
    print('Sayaç: $sayac');
    sayac++;
  }
  
  // Kullanıcı girişi simülasyonu
  int tahmin = 1;
  int hedef = 7;
  print('\nTahmin oyunu (hedef: $hedef):');
  while (tahmin != hedef) {
    print('Tahmin: $tahmin (yanlış)');
    tahmin++;
  }
  print('Tahmin: $tahmin (doğru!)\n');
}

void doWhileDongusuOrnek() {
  print('3. DO-WHILE DÖNGÜSÜ ÖRNEĞİ');
  print('-' * 27);
  
  int sayi = 10;
  print('10\'dan 0\'a kadar azaltan döngü:');
  do {
    print('Sayı: $sayi');
    sayi -= 2;
  } while (sayi > 0);
  
  print('');
}

void icIceDonguler() {
  print('4. İÇ İÇE DÖNGÜLER');
  print('-' * 18);
  
  // Çarpım tablosu
  print('3x3 çarpım tablosu:');
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('$i x $j = ${i * j}');
    }
    print('---');
  }
  
  // Yıldız deseni
  print('Yıldız deseni:');
  for (int i = 1; i <= 4; i++) {
    String satir = '';
    for (int j = 1; j <= i; j++) {
      satir += '* ';
    }
    print(satir);
  }
}
