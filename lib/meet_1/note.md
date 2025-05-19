# 📘 Catatan Materi Flutter: Scaffold, Column, Row, Text, TextStyle, Icon

---

## 🏗️ Scaffold

### ✅ Apa itu?

`Scaffold` adalah kerangka utama tampilan (layout) halaman di Flutter.

### 📌 Fungsi:

- Menyediakan struktur dasar seperti AppBar, body, drawer, bottom navigation.

### 📦 Contoh:

```dart
Scaffold(
  appBar: AppBar(title: Text('Profil')),
  body: Center(child: Text('Halo')),
)
```

---

## 📐 Column

### ✅ Apa itu?

`Column` adalah widget layout untuk menyusun widget lain secara **vertikal (atas ke bawah)**.

### 📌 Fungsi:

- Menyusun elemen UI dalam urutan ke bawah (misalnya: judul → gambar → tombol)

### 📦 Contoh:

```dart
Column(
  children: [
    Text("Judul"),
    Text("Deskripsi"),
  ],
)
```

---

## 📏 Row

### ✅ Apa itu?

`Row` adalah widget layout untuk menyusun widget secara **horizontal (kiri ke kanan)**.

### 📌 Fungsi:

- Menampilkan beberapa widget dalam satu baris (ikon + teks, 2 tombol, dll)

### 📦 Contoh:

```dart
Row(
  children: [
    Icon(Icons.location_on),
    Text("Jakarta"),
  ],
)
```

---

## 📝 Text

### ✅ Apa itu?

`Text` adalah widget untuk menampilkan tulisan dalam aplikasi Flutter.

### 📌 Fungsi:

- Menampilkan judul, label, paragraf, dan keterangan

### 📦 Contoh:

```dart
Text("Selamat datang di Flutter")
```

---

## 🎨 TextStyle

### ✅ Apa itu?

`TextStyle` digunakan di dalam `Text` untuk memberikan gaya tulisan.

### 📌 Contoh Properti:

- `fontSize`: ukuran huruf
- `fontWeight`: ketebalan huruf (FontWeight.bold)
- `color`: warna tulisan

### 📦 Contoh:

```dart
Text(
  "Nama",
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
)
```

---

## ⭐ Icon

### ✅ Apa itu?

`Icon` adalah widget untuk menampilkan simbol/gambar kecil dari koleksi `Material Icons`.

### 📌 Contoh Penggunaan:

```dart
Icon(Icons.star, color: Colors.orange, size: 32)
```

> Untuk daftar lengkap ikon: https://api.flutter.dev/flutter/material/Icons-class.html

---

## 📌 Ringkasan:

| Widget    | Fungsi Utama                           |
| --------- | -------------------------------------- |
| Scaffold  | Struktur layar: AppBar, body, FAB, dll |
| Column    | Menyusun elemen secara vertikal        |
| Row       | Menyusun elemen secara horizontal      |
| Text      | Menampilkan tulisan                    |
| TextStyle | Gaya tampilan teks                     |
| Icon      | Menampilkan ikon material design       |

---
