# 📘 Materi Flutter: Layouting & Assets (20 Mei 2025)

---

## 📚 Widget Layout yang Dipelajari

### 🏗 Scaffold

Struktur dasar tampilan Flutter: menyediakan `appBar`, `body`, `floatingActionButton`, dll.

### 📐 Column

Menyusun widget secara **vertikal (atas ke bawah)**.

### 📏 Row

Menyusun widget secara **horizontal (kiri ke kanan)**.

### 🔲 SizedBox

Memberi jarak antar elemen dengan ukuran tetap.

### 🧱 Padding

Memberi jarak di dalam elemen (inner spacing).

### 📦 Container

Widget serbaguna: bisa diberi warna, ukuran, margin, padding, border, dll.

### 🚀 Expanded

Mengisi ruang kosong tersisa di dalam `Row` atau `Column`.

### ↔️ Spacer

Memberi jarak fleksibel di antara elemen di dalam `Row`/`Column`.

### 🎯 Center

Memusatkan widget anak ke tengah parent-nya.

---

## 🧪 Studi Kasus Tugas: Halaman Profil Lengkap

### Struktur Tampilan:

1. **AppBar**: `'Profil Lengkap'`
2. **Nama** (Text besar, center)
3. **Email** (Icon + Text di dalam Container dan Padding)
4. **No. Telepon** (Row dengan Spacer)
5. **Dua Box Informasi** (Row → Expanded → Container)
6. **Deskripsi Diri** (Text kecil + Padding)
7. **Hiasan Visual** (Container height: 8, warna dekoratif)

---

## 🖼 Menambahkan Aset Gambar ke Flutter

### ✅ 1. Buat Folder

Buat folder `assets/images/` di dalam folder utama proyek Flutter.

```
my_app/
├── assets/
│   └── images/
│       └── profile.png
```

### ✅ 2. Daftarkan di `pubspec.yaml`

Tambahkan bagian ini ke dalam file `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/profile.png
```

> Kamu juga bisa mendaftarkan semua isi folder:

```yaml
flutter:
  assets:
    - assets/images/
```

### ✅ 3. Gunakan dalam Kode

Gunakan `Image.asset()` untuk menampilkan gambar:

```dart
Image.asset("assets/images/profile.png")
```

---

## 💬 Quotes Hari Ini

> **“Dalam coding, layout bukan sekadar susunan — ia adalah cara kita menyampaikan makna secara visual. Rapi di struktur, indah di tampilan.”**

> **“Setiap baris padding, setiap widget yang disejajarkan, adalah bukti bahwa detail kecil menciptakan pengalaman besar.”**

---
