#!/usr/bin/env bash
# Создаёт ключ подписи и выводит значения для секретов GitHub.
# Требуется установленный JDK (команда keytool).
set -e
keytool -genkeypair -v -keystore release.jks -alias ozunusina \
  -keyalg RSA -keysize 2048 -validity 10000
base64 -w0 release.jks > keystore.b64.txt 2>/dev/null || base64 release.jks | tr -d '\n' > keystore.b64.txt
echo
echo "Готово. Файл release.jks — СОХРАНИТЕ в надёжном месте (без него нельзя обновлять приложение)."
echo "Содержимое keystore.b64.txt вставьте в секрет KEYSTORE_BASE64."
echo "KEY_ALIAS = ozunusina"
