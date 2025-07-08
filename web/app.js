// Ana uygulama JavaScript dosyası

// Sayfa yüklendiğinde çalışacak kodlar
document.addEventListener('DOMContentLoaded', function() {
    // Navigation işlemleri
    setupNavigation();
    
    // İlk bölümü aktif et
    showSection('variables');
    
    // Enter tuşu ile çalıştırma
    setupKeyboardShortcuts();
});

// Navigation setup
function setupNavigation() {
    const navButtons = document.querySelectorAll('.nav-btn');
    
    navButtons.forEach(button => {
        button.addEventListener('click', function() {
            const section = this.getAttribute('data-section');
            
            // Active sınıfını güncelle
            navButtons.forEach(btn => btn.classList.remove('active'));
            this.classList.add('active');
            
            // İlgili bölümü göster
            showSection(section);
        });
    });
}

// Bölüm gösterme
function showSection(sectionId) {
    const sections = document.querySelectorAll('.content-section');
    
    sections.forEach(section => {
        section.classList.remove('active');
    });
    
    const targetSection = document.getElementById(sectionId);
    if (targetSection) {
        targetSection.classList.add('active');
    }
}

// Klavye kısayolları
function setupKeyboardShortcuts() {
    document.addEventListener('keydown', function(event) {
        if (event.ctrlKey && event.key === 'Enter') {
            event.preventDefault();
            const activeSection = document.querySelector('.content-section.active');
            if (activeSection) {
                const runButton = activeSection.querySelector('.run-btn');
                if (runButton) {
                    runButton.click();
                }
            }
        }
    });
}

// Çıktı gösterme yardımcı fonksiyonu
function displayOutput(elementId, content, isArray = false) {
    const outputElement = document.querySelector(`#${elementId} .output-content`);
    
    if (!outputElement) return;
    
    // Loading animation göster
    outputElement.innerHTML = '<div class="loading"></div> Çalışıyor...';
    
    // Kısa bir gecikme ile gerçekçilik katmak için
    setTimeout(() => {
        if (isArray) {
            outputElement.innerHTML = content.map((line, index) => 
                `<div class="output-line result-animation" style="animation-delay: ${index * 0.1}s">${line}</div>`
            ).join('');
        } else {
            outputElement.innerHTML = `<div class="output-line result-animation">${content}</div>`;
        }
    }, 500);
}

// Değişkenler örneğini çalıştır
function runVariablesExample() {
    const name = document.getElementById('name-input').value || 'Bilinmeyen';
    const surname = document.getElementById('surname-input').value || 'Kişi';
    const age = parseInt(document.getElementById('age-input').value) || 0;
    const height = parseFloat(document.getElementById('height-input').value) || 0;
    const isStudent = document.getElementById('student-input').value === 'true';
    
    const output = [
        '=== DEĞİŞKENLER VE VERİ TİPLERİ ===',
        '',
        `String (Metin): "${name}" ve "${surname}"`,
        `int (Tam Sayı): ${age}`,
        `double (Ondalık): ${height}`,
        `bool (Boolean): ${isStudent}`,
        '',
        '--- SONUÇ ---',
        `İsim: ${name} ${surname}`,
        `Yaş: ${age}`,
        `Boy: ${height}m`,
        `Öğrenci mi? ${isStudent ? 'Evet' : 'Hayır'}`,
        '',
        '--- VERİ TİPİ KONTROLÜ ---',
        `typeof isim: string`,
        `typeof yaş: number`,
        `typeof boy: number`,
        `typeof öğrenciMi: boolean`
    ];
    
    displayOutput('variables-output', output, true);
}

// Hesaplamalar örneğini çalıştır
function runCalculationsExample() {
    const num1 = parseInt(document.getElementById('num1-input').value) || 0;
    const num2 = parseInt(document.getElementById('num2-input').value) || 0;
    
    const output = [
        '=== HESAPLAMALAR ===',
        '',
        `Sayı 1: ${num1}`,
        `Sayı 2: ${num2}`,
        '',
        '--- TEMEL İŞLEMLER ---',
        `${num1} + ${num2} = ${topla(num1, num2)}`,
        `${num1} - ${num2} = ${cikar(num1, num2)}`,
        `${num1} × ${num2} = ${carp(num1, num2)}`,
        `${num1} ÷ ${num2} = ${bol(num1, num2)}`,
        '',
        '--- ÖZEL İŞLEMLER ---',
        `${num1}'ın karesi: ${kare(num1)}`,
        `${num1}'ın küpü: ${kup(num1)}`,
        `${num1}'ın karekökü: ${karekok(num1).toFixed(2)}`,
        `${num1} çift mi? ${ciftMi(num1) ? 'Evet' : 'Hayır'}`,
        `${num2} çift mi? ${ciftMi(num2) ? 'Evet' : 'Hayır'}`,
        `max(${num1}, ${num2}) = ${maksimum(num1, num2)}`,
        `min(${num1}, ${num2}) = ${minimum(num1, num2)}`
    ];
    
    displayOutput('calculations-output', output, true);
}

// Sınıflar örneğini çalıştır
function runClassesExample() {
    const person1Name = document.getElementById('person1-name').value || 'Kişi1';
    const person1Surname = document.getElementById('person1-surname').value || 'Soyad1';
    const person1Age = parseInt(document.getElementById('person1-age').value) || 0;
    
    const person2Name = document.getElementById('person2-name').value || 'Kişi2';
    const person2Surname = document.getElementById('person2-surname').value || 'Soyad2';
    const person2Age = parseInt(document.getElementById('person2-age').value) || 0;
    
    const kisi1 = new Kisi(person1Name, person1Surname, person1Age);
    const kisi2 = new Kisi(person2Name, person2Surname, person2Age);
    
    const output = [
        '=== SINIF VE NESNE ÖRNEĞİ ===',
        '',
        '--- KİŞİ 1 BİLGİLERİ ---',
        ...kisi1.bilgileriGoster(),
        '',
        '--- KİŞİ 2 BİLGİLERİ ---',
        ...kisi2.bilgileriGoster(),
        '',
        '--- REŞİTLİK KONTROLLÜ ---',
        `${kisi1.tamIsim()} reşit mi? ${kisi1.resitMi() ? 'Evet' : 'Hayır'}`,
        `${kisi2.tamIsim()} reşit mi? ${kisi2.resitMi() ? 'Evet' : 'Hayır'}`,
        '',
        '--- SELAMLAMA ---',
        kisi1.selamla(),
        kisi2.selamla()
    ];
    
    displayOutput('classes-output', output, true);
}

// Listeler örneğini çalıştır
function runListsExample() {
    const fruitsInput = document.getElementById('fruits-input').value;
    const numbersInput = document.getElementById('numbers-input').value;
    
    const fruits = fruitsInput.split(',').map(item => item.trim()).filter(item => item);
    const numbers = numbersInput.split(',').map(item => parseInt(item.trim())).filter(item => !isNaN(item));
    
    const output = [
        '=== LİSTE İŞLEMLERİ VE DÖNGÜLER ===',
        '',
        ...listeOrnekleri(fruits, numbers),
        '',
        ...donguOrnekleri()
    ];
    
    displayOutput('lists-output', output, true);
}

// Koşullar örneğini çalıştır
function runConditionsExample() {
    const grade = parseInt(document.getElementById('grade-input').value) || 0;
    const weather = document.getElementById('weather-input').value;
    
    const harfNotu = notHesapla(grade);
    const tavsiye = havaDurumuTavsiyesi(weather);
    
    const output = [
        '=== KOŞULLU İFADELER ===',
        '',
        '--- NOT HESAPLAMA ---',
        `Girilen not: ${grade}`,
        `Harf notu: ${harfNotu}`,
        '',
        '--- NOT ÖLÇEK TABLOSU ---',
        '90-100: AA (Mükemmel)',
        '80-89:  BA (Çok İyi)',
        '70-79:  BB (İyi)',
        '60-69:  CB (Orta)',
        '50-59:  CC (Geçer)',
        '0-49:   FF (Kalır)',
        '',
        '--- HAVA DURUMU TAVSİYESİ ---',
        `Hava durumu: ${weather}`,
        `Tavsiye: ${tavsiye}`,
        '',
        '--- KOŞUL KONTROL ÖRNEKLERİ ---',
        `${grade} >= 50 mi? ${grade >= 50 ? 'Evet (Geçti)' : 'Hayır (Kaldı)'}`,
        `${grade} >= 80 mi? ${grade >= 80 ? 'Evet (Başarılı)' : 'Hayır'}`,
        `Hava güneşli mi? ${weather === 'güneşli' ? 'Evet' : 'Hayır'}`
    ];
    
    displayOutput('conditions-output', output, true);
}

// Tüm örnekleri çalıştır
function runAllExamples() {
    // Tüm inputlardan değerleri al
    const name = document.getElementById('name-input').value || 'Ahmet';
    const surname = document.getElementById('surname-input').value || 'Yılmaz';
    const age = parseInt(document.getElementById('age-input').value) || 25;
    const height = parseFloat(document.getElementById('height-input').value) || 1.75;
    const isStudent = document.getElementById('student-input').value === 'true';
    
    const num1 = parseInt(document.getElementById('num1-input').value) || 15;
    const num2 = parseInt(document.getElementById('num2-input').value) || 7;
    
    const person1Name = document.getElementById('person1-name').value || 'Ayşe';
    const person1Surname = document.getElementById('person1-surname').value || 'Demir';
    const person1Age = parseInt(document.getElementById('person1-age').value) || 30;
    
    const person2Name = document.getElementById('person2-name').value || 'Mehmet';
    const person2Surname = document.getElementById('person2-surname').value || 'Kaya';
    const person2Age = parseInt(document.getElementById('person2-age').value) || 22;
    
    const grade = parseInt(document.getElementById('grade-input').value) || 85;
    const weather = document.getElementById('weather-input').value || 'güneşli';
    
    // Nesneleri oluştur
    const kisi1 = new Kisi(person1Name, person1Surname, person1Age);
    const kisi2 = new Kisi(person2Name, person2Surname, person2Age);
    
    // Liste verileri
    const fruits = ['elma', 'armut', 'muz', 'çilek', 'üzüm'];
    const numbers = [5, 12, 8, 23, 1, 67, 34];
    
    const output = [
        '=== DART ÖĞRENME PROJESİ - KAPSAMLI ÇIKTI ===',
        '',
        '1. DEĞİŞKENLER VE VERİ TİPLERİ',
        '-'.repeat(35),
        '',
        `İsim: ${name} ${surname}`,
        `Yaş: ${age}`,
        `Boy: ${height}m`,
        `Öğrenci mi? ${isStudent ? 'Evet' : 'Hayır'}`,
        '',
        '2. HESAPLAMALAR',
        '-'.repeat(20),
        '',
        `${num1} + ${num2} = ${topla(num1, num2)}`,
        `${num1} - ${num2} = ${cikar(num1, num2)}`,
        `${num1} × ${num2} = ${carp(num1, num2)}`,
        `${num1} ÷ ${num2} = ${bol(num1, num2)}`,
        '',
        '3. SINIF VE NESNE ÖRNEĞİ',
        '-'.repeat(25),
        '',
        ...kisi1.bilgileriGoster(),
        '',
        ...kisi2.bilgileriGoster(),
        '',
        `${kisi1.tamIsim()} reşit mi? ${kisi1.resitMi() ? 'Evet' : 'Hayır'}`,
        `${kisi2.tamIsim()} reşit mi? ${kisi2.resitMi() ? 'Evet' : 'Hayır'}`,
        '',
        '4. LİSTE İŞLEMLERİ VE DÖNGÜLER',
        '-'.repeat(32),
        '',
        ...listeOrnekleri(fruits, numbers).slice(0, 15), // İlk 15 satırı al
        '',
        '5. KOŞULLU İFADELER',
        '-'.repeat(20),
        '',
        `Not: ${grade} -> Harf notu: ${notHesapla(grade)}`,
        `Hava durumu: ${weather}`,
        `Tavsiye: ${havaDurumuTavsiyesi(weather)}`,
        '',
        '=== PROJE TAMAMLANDI ===',
        '',
        '🎉 Tebrikler! Dart dilinin temel konularını başarıyla çalıştırdınız.',
        '📚 Daha fazla pratik yapmak için yukarıdaki bölümlerden istediğinizi seçebilirsiniz.',
        '💡 Değerleri değiştirerek farklı sonuçlar elde edebilirsiniz.',
        '',
        'Toplam işlem süresi: ~2.5 saniye',
        `İşlem tarihi: ${new Date().toLocaleString('tr-TR')}`
    ];
    
    displayOutput('all-output', output, true);
}

// Utility fonksiyonları
function clearOutput(elementId) {
    const outputElement = document.querySelector(`#${elementId} .output-content`);
    if (outputElement) {
        outputElement.innerHTML = '';
    }
}

function showNotification(message, type = 'info') {
    // Basit bildirim sistemi (gelecekte geliştirilebilir)
    console.log(`${type.toUpperCase()}: ${message}`);
}

// Sayfa başlığını dinamik olarak güncelle
function updatePageTitle(section) {
    const titles = {
        'variables': 'Değişkenler - Dart Öğrenme',
        'calculations': 'Hesaplamalar - Dart Öğrenme',
        'classes': 'Sınıflar - Dart Öğrenme',
        'lists': 'Listeler - Dart Öğrenme',
        'conditions': 'Koşullar - Dart Öğrenme',
        'all': 'Tüm Örnekler - Dart Öğrenme'
    };
    
    document.title = titles[section] || 'Dart Öğrenme Projesi';
}
