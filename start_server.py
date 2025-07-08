import http.server
import socketserver
import webbrowser
import os
import sys
from pathlib import Path

# Web klasörüne git
web_dir = Path(__file__).parent / "web"
os.chdir(web_dir)

PORT = 8080

class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cache-Control', 'no-cache, no-store, must-revalidate')
        self.send_header('Pragma', 'no-cache')
        self.send_header('Expires', '0')
        super().end_headers()

try:
    with socketserver.TCPServer(("", PORT), CustomHTTPRequestHandler) as httpd:
        print(f"🚀 Dart Öğrenme Projesi Web Sunucusu")
        print(f"📡 Sunucu başlatıldı: http://localhost:{PORT}")
        print(f"📁 Çalışma dizini: {web_dir}")
        print(f"🌐 Chrome'da otomatik olarak açılacak...")
        print(f"⏹️  Sunucuyu durdurmak için Ctrl+C kullanın")
        print("-" * 50)
        
        # Chrome'da otomatik aç
        webbrowser.open(f'http://localhost:{PORT}/start.html')
        
        # Sunucuyu başlat
        httpd.serve_forever()
        
except KeyboardInterrupt:
    print(f"\n🛑 Sunucu durduruldu.")
    sys.exit(0)
except OSError as e:
    if e.errno == 10048:  # Port already in use
        print(f"❌ Port {PORT} zaten kullanımda. Başka bir port deneyin.")
        print(f"💡 Tarayıcınızda manuel olarak şu adresi açın: http://localhost:{PORT}/start.html")
    else:
        print(f"❌ Sunucu hatası: {e}")
    sys.exit(1)
