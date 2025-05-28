
# 📘 Catatan Materi: Navigasi Drawer, BottomNavigationBar & Input Widgets

---

## 🧭 Drawer Navigation

### ✅ Apa itu Drawer?
Drawer adalah panel navigasi yang muncul dari sisi kiri layar. Umumnya digunakan untuk menampilkan menu-menu sekunder seperti "Profile", "Settings", dll.

### 🔧 Contoh Penggunaan:
```dart
Scaffold(
  drawer: Drawer(
    child: ListView(
      children: [
        DrawerHeader(child: Text("Menu")),
        ListTile(
          title: Text("Home"),
          onTap: () {},
        ),
      ],
    ),
  ),
)
```

---

## ⬇️ BottomNavigationBar

### ✅ Apa itu BottomNavigationBar?
Navigasi bawah layar yang tetap terlihat untuk berpindah antar tab utama (biasanya 2–5 menu).

### 🔧 Contoh Penggunaan:
```dart
BottomNavigationBar(
  currentIndex: _index,
  onTap: (i) => setState(() => _index = i),
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
  ],
)
```

---

## 📦 Input Widgets

### ✅ Checkbox
```dart
Checkbox(
  value: isChecked,
  onChanged: (val) => setState(() => isChecked = val!),
)
```

### ✅ Switch
```dart
Switch(
  value: isSwitched,
  onChanged: (val) => setState(() => isSwitched = val),
)
```

### ✅ Dropdown
```dart
DropdownButton<String>(
  value: selectedItem,
  items: ['Merah', 'Hijau'].map((val) => DropdownMenuItem(value: val, child: Text(val))).toList(),
  onChanged: (val) => setState(() => selectedItem = val),
)
```

### ✅ showDatePicker
```dart
showDatePicker(
  context: context,
  initialDate: DateTime.now(),
  firstDate: DateTime(2000),
  lastDate: DateTime(2100),
);
```

### ✅ showTimePicker
```dart
showTimePicker(
  context: context,
  initialTime: TimeOfDay.now(),
);
```

---

## 📐 Struktur Layout Gabungan
```
Scaffold
├── AppBar
├── Drawer (aktif jika di tab Home)
├── BottomNavigationBar
│   ├── Tab 0: Home (form input interaktif)
│   └── Tab 1: Tentang Aplikasi (teks deskripsi)
```

---

## 💡 Tips
- Gunakan `setState()` untuk mengupdate nilai dari setiap input.
- Gunakan `IndexedStack` jika ingin mempertahankan state antar tab.
- `Drawer` bisa dikondisikan dengan:
```dart
drawer: _currentIndex == 0 ? Drawer(...) : null,
```

---

## 📌 Quote Penutup

> “Form bukan hanya tempat input data — ia adalah tempat kepercayaan pengguna dimulai.”

> “Navigasi bukan hanya alat berpindah, tapi jembatan antar pengalaman.”

---
