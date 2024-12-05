# **TubesPebol**

Proyek ini adalah aplikasi berbasis Java yang menggunakan **Absolute Layout** dan koneksi database **MySQL**. Proyek ini terdiri dari beberapa file Java yang terorganisasi dalam package tertentu.

## **Struktur Proyek**
    TubesPebol/
    │
    ├── Source Packages/
    │   ├── config/
    │   ├── image/
    │   ├── report/
    │   └── tubespebol/
    │       ├── TubesPebol.java
    │       ├── admin.java
    │       ├── barista.java
    │       └── login.java
    │
    ├── Test Packages/
    ├── Libraries/
    │   ├── Absolute Layout - AbsoluteLayout.jar
    │   ├── mysql-connector-j-9.1.0.jar
    │   └── JDK 22 (Default)
### **Langkah-Langkah Instalasi dan Penggunaan**

#### **1. Prasyarat**
- **Java Development Kit (JDK)** versi 22 atau lebih tinggi.
- **NetBeans IDE** atau IDE lain yang mendukung pengembangan Java.
- **MySQL Server** untuk menyimpan data aplikasi.
- **Absolute Layout** library (sudah disertakan di proyek).
- **MySQL Connector JAR** (sudah disertakan di proyek).

#### **2. Clone Repository**
Clone repository ini menggunakan perintah Git:
```
git clone https://github.com/username/TubesPebol.git
```
### **3. Impor Proyek ke NetBeans**
```
1. Buka **NetBeans IDE**.
2. Klik **File > Open Project**.
3. Pilih folder proyek `TubesPebol` dan klik **Open**.
```

### **4. Tambahkan Library**
```
- Pastikan library berikut sudah ada di proyek:
  - **AbsoluteLayout.jar**
  - **mysql-connector-j-9.1.0.jar**
- Jika belum, tambahkan melalui **Libraries > Add JAR/Folder** di NetBeans.
```

### **5. Konfigurasi Database**
```
1. Buat database MySQL baru, misalnya `tubespebol_db`.
2. Import file SQL (jika ada) untuk membuat tabel yang diperlukan.
3. Sesuaikan konfigurasi koneksi database di file `config` (jika ada):
   ```java
   String url = "jdbc:mysql://localhost:3306/tubespebol_db";
   String username = "root";  // sesuaikan dengan username MySQL Anda
   String password = "";      // sesuaikan dengan password MySQL Anda
```
### *6. Menjalankan Aplikasi*
```
Jalankan file utama TubesPebol.java.
Aplikasi akan terbuka dan dapat digunakan sesuai dengan fitur yang tersedia.
```

### Daftar Dependensi
```
AbsoluteLayout.jar: Untuk mendukung tata letak GUI.
mysql-connector-j-9.1.0.jar: Untuk menghubungkan aplikasi dengan database MySQL.
```
