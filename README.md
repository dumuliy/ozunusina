# Özünü Sına — Android-приложение (WebView)

Приложение открывает https://ozunusina.az в нативной оболочке:
сохранение входа, обновление свайпом, экран «нет интернета», загрузка файлов,
внешние ссылки/звонки открываются в системных приложениях, экран не гаснет.

## Быстрая сборка без установки программ (GitHub Actions)
1. Создайте репозиторий на github.com и загрузите в него все файлы этой папки.
2. Вкладка **Actions** → **Build Android APK** → **Run workflow**.
3. Через 3–5 минут скачайте артефакт **apk-and-aab**.
   - `app-debug.apk` — устанавливается сразу.
   - `app-release.aab` — для Google Play (нужна подпись, см. ниже).

## Подпись (для Google Play / релиза)
Запустите `./create-keystore.sh` (нужен JDK), затем в GitHub:
Settings → Secrets and variables → Actions добавьте:
`KEYSTORE_BASE64`, `KEYSTORE_PASSWORD`, `KEY_ALIAS`, `KEY_PASSWORD`.
Файл `release.jks` храните в нескольких надёжных местах.

## Сборка в Android Studio
File → Open → эта папка → дождаться Sync → Build → Build APK(s).
