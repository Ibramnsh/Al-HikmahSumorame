#!/bin/bash

# Keluar dari skrip jika ada perintah yang gagal
set -o errexit

# 1. Instal semua package dari requirements.txt
pip install -r requirements.txt

# 2. Jalankan fungsi init_db() dari app.py untuk membuat tabel database
# Perintah ini akan mengimpor file app.py sebagai modul dan menjalankan fungsi init_db
python -c "from app import init_db; init_db()"

echo "Build selesai."