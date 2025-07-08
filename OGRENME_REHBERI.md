# Dart Öğrenme Rehberi

Bu dosya, oluşturduğumuz Dart projesini nasıl kullanacağınızı açıklamaktadır.

## Proje Yapısı

```
Azra/
├── bin/
│   └── main.dart           # Ana uygulama
├── lib/
│   ├── kisi.dart          # Sınıf örneği
│   ├── hesaplamalar.dart  # Matematik fonksiyonları
│   └── listeler.dart      # Liste işlemleri
├── examples/
│   ├── temel_ornekler.dart
│   ├── dongu_ornekleri.dart
│   ├── fonksiyon_ornekleri.dart
│   └── hesap_makinesi.dart
├── pubspec.yaml           # Proje ayarları
└── README.md             # Proje açıklaması
```

## Dosyaları Çalıştırma

### Ana Uygulamayı Çalıştırma
```bash
dart run bin/main.dart
```

### Örnek Dosyaları Çalıştırma
```bash
dart run examples/temel_ornekler.dart
dart run examples/dongu_ornekleri.dart
dart run examples/fonksiyon_ornekleri.dart
dart run examples/hesap_makinesi.dart
```

## Öğrenme Sırası

1. **Temel Kavramlar** (`examples/temel_ornekler.dart`)
   - Değişkenler
   - Veri tipleri
   - String işlemleri
   - Boolean mantığı

2. **Döngüler** (`examples/dongu_ornekleri.dart`)
   - for döngüsü
   - while döngüsü
   - do-while döngüsü
   - İç içe döngüler

3. **Fonksiyonlar** (`examples/fonksiyon_ornekleri.dart`)
   - Basit fonksiyonlar
   - Parametreli fonksiyonlar
   - Dönüş değerleri
   - Arrow fonksiyonlar

4. **Sınıflar** (`lib/kisi.dart`)
   - Sınıf tanımlama
   - Constructor
   - Metodlar
   - Nesne oluşturma

5. **Liste İşlemleri** (`lib/listeler.dart`)
   - Liste oluşturma
   - Eleman ekleme/çıkarma
   - Liste döngüleri
   - Map ve Set

6. **Praktik Uygulama** (`examples/hesap_makinesi.dart`)
   - Gerçek hayat örneği
   - Matematik işlemleri
   - Extension kullanımı

## Dart Temel Kavramları

### Değişken Tanımlama
```dart
String isim = 'Ahmet';      // String
int yas = 25;               // Tam sayı
double boy = 1.75;          // Ondalık sayı
bool aktif = true;          // Boolean
var otomatik = 'Dart';      // Otomatik tip
```

### Fonksiyon Tanımlama
```dart
// Basit fonksiyon
void selamVer() {
  print('Merhaba!');
}

// Parametreli fonksiyon
int topla(int a, int b) {
  return a + b;
}

// Arrow fonksiyon
int kare(int x) => x * x;
```

### Sınıf Tanımlama
```dart
class Kisi {
  String isim;
  int yas;
  
  Kisi(this.isim, this.yas);
  
  void bilgiVer() {
    print('$isim, $yas yaşında');
  }
}
```

### Liste İşlemleri
```dart
List<String> isimler = ['Ali', 'Ayşe', 'Mehmet'];
isimler.add('Fatma');       // Ekleme
isimler.remove('Ali');      // Çıkarma
print(isimler.length);      // Uzunluk
```

## Pratik Yapmak İçin

1. Ana uygulamayı çalıştırın ve çıktıları inceleyin
2. Her örnek dosyayı ayrı ayrı çalıştırın
3. Kodları okuyun ve anlamaya çalışın
4. Kendi değişikliklerinizi yapın
5. Yeni fonksiyonlar eklemeyi deneyin

## Önemli Dart Özellikleri

- **Null Safety**: Dart güvenli null kontrolü yapar
- **Type Inference**: Otomatik tip belirleme
- **Hot Reload**: Hızlı geliştirme döngüsü
- **Cross-platform**: Çok platform desteği

## Sonraki Adımlar

1. Flutter ile mobil uygulama geliştirme
2. Web uygulamaları
3. Server-side Dart
4. Package geliştirme

## Yardım Kaynakları

- [Dart Resmi Dokümantasyonu](https://dart.dev/guides)
- [DartPad Online Editor](https://dartpad.dev)
- [Dart API Referansı](https://api.dart.dev)
