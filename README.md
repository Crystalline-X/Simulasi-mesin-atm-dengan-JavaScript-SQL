# Mini Projek Pembuatan Simulasi Mesin ATM CLI

Project ini dibangun dengan menggunakan JavaScript, Node.js dan SQL sebagai databasenya, project ini menyimulasikan tentang cara kerja kerja mesin ATM dengan berbagai fitur sepeti register, login, tarik tunai, setor tunai, cek saldo, cek history transaksi, dan transfer secara real time

## Fitur Utama
- Register: Membuat akun/mendaftar dengan PIN 4 digit
- login: Masuk menggunakan akun yang sudah ada atau yang sudah dibuat dengan nama dan PIN 4 digit
- Cek Saldo: Mngecek saldo secara realtime
- HIstory Transaksi: Melacak aktivitas keuangan pada akun anda
- Tarik Tunai
- Setor Tunai
- Transfer ke akun lain
- Validasi Input: Cegah transfer ke akun sendiri, saldo negatif, dan input tidak valid

## Teknologi yang digunakan
- Node.js: runtime untuk menjalankan aplikasi
- MySQL: sebagai database manager
- Commander.js: untuk menjalankan CLI seperti register, login, withdraw, deposit, transfer, dan history transactions
- Visual Studio: IDE utuk kode editor

## Guide Installation
1. Buat file di dalam VS code lalu pergi ke opsi terminal lalu masukkan perintah "npm install" kemudian diikuti dengan "npm init" lalu setelahnya tinggal di isi sesuai keinginan masing masing
2. Setelah itu install extension MySQL di VS code untuk manajemen database nya
3. kemudian buat folder database dan buat file contoh: "database.sql"
4. lalu buat isi file "database.sql" seperti ini
   ![alt text](?raw=true)

