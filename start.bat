@echo off
echo 🚀 Dart Öğrenme Projesi Web Sunucusu Başlatılıyor...
echo.

cd /d "%~dp0"

REM Python kontrolü
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python bulunamadı! Python yüklü olduğundan emin olun.
    echo 💡 Python'u https://python.org adresinden indirebilirsiniz.
    pause
    exit /b 1
)

echo ✅ Python bulundu, sunucu başlatılıyor...
echo.

REM Web sunucusunu başlat
python start_server.py

pause
