# Tugas 7
## Stateless dan stateful?
Konsep *stateful* dan *stateless* penting untuk dipahami sebab kedua hal ini merupakan konsep penting dalam pengembangan aplikasi Flutter. Biasanya kedua ini membahas tentang widget dan bagaimana mereka mengatur keadaan internal masing-masing. Berikut adalah penjelasan mengenai kedua konsep tersebut.
- **Stateless**:
    - **Definisi**: jenis widget yang sudah tidak bisa diubah lagi setelah propertinya sudah ditetapkan.
    - **Penggunaan**: bagian UI yang bersifat statis.
    - **Lifecycle**: *lifecycle* dari *stateless* widget cukup sederhana. *Widget* tersebut di-render dan jika *parent* dari *widget* tersebut di *rebuild*, maka *widget* tersebut akan di *rebuild* juga menggunakan *constructor*.
    - **Contoh**: segala hal yang bersifat statis seperti teks, tombol, dan gambar yang tidak akan berubah-ubah.
- **Stateful**:
    - **Definisi**: jenis *widget* yang masih bisa diubah setelah propertinya sudah ditetapkan.
    - **Penggunaan**: bagian UI yang bersifat dinamis.
    - **Lifecycle**: ketika *state* dari *widget* berubah, maka *widget* tersebut akan di *rebuild* menggunakan `setState`.
    - **Contoh**: checkbox, radio button, slider

## Widget yang digunakan
Pada tugas 7 ini, terdapat tiga buah *widget* yang digunakan, yaitu `MyApp` pada file `main.dart` serta `MyHomePage` dan `ShopCard` pada file `menu.dart`. Ketiga *widget* yang digunakan merupakan *stateless widget* sebab ketiga *widget* tersebut mengimplementasikan *stateless interface*. Berikut adalah penjelasan tentang kegunaan setiap *widget* yang digunakan.
- **MyApp**: aplikasi utama yang merupakan *parent* dari MyHomePage.
- **MyHomePage**: *parent* dari ShopCard yang berfungsi untuk menampung semua elemen ShopCard.
- **ShopCard**: menampilkan opsi untuk lihat makanan, tambah makanan, dan logout melalui tombol.

## Implementasi tugas
Berikut adalah langkah-langkah implementasi tugas:
1. Merapihkan repository dengan memisahkan aplikasi utama pada `main.dart` dengan aplikasi lainnya pada `menu.dart`.
2. Mengubah semua *stateful widget* menjadi *stateless*
3. Menyesuaikan isi aplikasi dengan suruhan pada *tutorial*, yaitu mengubah teks agar sesuai dengan tema *snack bar*.

---

# Tugas 8
## Perbedaan `navigator.push()` dengan `navigator.pushReplacement()`
Dalam Flutter, Navigator.push() dan Navigator.pushReplacement() adalah dua metode yang digunakan untuk navigasi antar halaman (screens). Kedua metode ini memiliki perbedaan penting dalam cara mereka memanipulasi stack navigasi:

### `Navigator.push()`
Navigator.push() digunakan untuk menavigasi ke halaman baru dengan menumpuknya di atas halaman saat ini dalam stack navigasi. Halaman sebelumnya tetap ada di stack, yang berarti pengguna dapat kembali ke halaman tersebut dengan tombol back atau dengan memanggil Navigator.pop().

**Contoh Penggunaan**: penggunaan yang paling umum untuk Navigator.push() adalah ketika Anda ingin membawa pengguna ke halaman detail atau layar berikutnya tanpa mengganti halaman saat ini.
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => DetailScreen(item: item)),
);
```

Dalam contoh ini, DetailScreen ditambahkan ke stack. Jika pengguna menekan tombol back, mereka akan kembali ke halaman sebelumnya.

### `Navigator.pushReplacement()`
Navigator.pushReplacement() digunakan untuk menavigasi ke halaman baru dengan mengganti halaman saat ini di stack. Halaman sebelumnya dihapus dari stack, yang berarti pengguna tidak dapat kembali ke halaman itu.

**Contoh Penggunaan**: penggunaan yang umum untuk Navigator.pushReplacement() adalah dalam kasus flow login. Setelah pengguna berhasil login, Anda mungkin ingin membawa mereka ke HomePage dan tidak mengizinkan mereka kembali ke halaman login.

```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomePage()),
);
```
Dalam contoh ini, setelah navigasi ke HomePage, pengguna tidak akan bisa kembali ke halaman login dengan tombol back karena HomePage menggantikan halaman login di stack.

## Layout Widget pada Flutter dan Konteks Penggunaan
Flutter menyediakan beragam widget layout untuk mengatur tata letak UI. Berikut ini adalah penjelasan beberapa layout widget utama dan konteks penggunaan mereka:

1. Container
- **Deskripsi**: Container adalah widget yang memungkinkan Anda menyesuaikan anaknya dalam berbagai cara, seperti padding, margin, borders, dan background color. Container juga dapat memberikan batasan pada ukuran anaknya.
- **Konteks Penggunaan**: Gunakan Container untuk membuat kotak dengan ukuran spesifik, padding, margin, atau untuk menerapkan dekorasi seperti background color atau border. Sering digunakan untuk wrapping widget lain dengan tujuan styling.
2. Column dan Row
- **Deskripsi**: Column adalah widget layout vertikal, dan Row adalah widget layout horizontal. Keduanya mengatur anak-anaknya secara linier.
- **Konteks Penggunaan**: Gunakan Column untuk layout vertikal (misalnya, daftar item yang satu di atas yang lain) dan Row untuk layout horizontal (misalnya, ikon dan teks yang berdampingan). Cocok untuk membuat struktur dasar UI.
3. Stack
- **Deskripsi**: Stack memungkinkan widget anaknya ditumpuk di atas satu sama lain.
- **Konteks Penggunaan**: Gunakan Stack untuk overlay widget, seperti menempatkan teks di atas gambar, atau untuk posisi yang bebas (misalnya, badge notification di atas ikon).
4. Padding
- **Deskripsi**: Padding memberikan jarak dalam sebuah widget.
- **Konteks Penggunaan**: Gunakan Padding untuk memberikan ruang di sekitar widget. Misalnya, jika Anda ingin jarak antara teks dan tepi layar.
5. Align dan Center
- **Deskripsi**: Align mengatur posisi anaknya dalam dirinya sendiri, sedangkan Center adalah versi khusus dari Align yang memusatkan anaknya.
- **Konteks Penggunaan**: Gunakan Align untuk mengatur posisi anak di lokasi spesifik, dan Center untuk memusatkan konten.
6. Expanded dan Flexible
- **Deskripsi**: Expanded dan Flexible memungkinkan anak-anaknya untuk mengisi ruang yang tersedia dalam Column, Row, atau Flex.
- **Konteks Penggunaan**: Gunakan Expanded ketika Anda ingin widget anak mengisi ruang tersedia, atau Flexible untuk kontrol yang lebih detail atas penggunaan ruang dan faktor fleksibilitas.
7. ListView
- **Deskripsi**: ListView adalah widget scrollable yang menampilkan daftar anak-anak secara linier.
- **Konteks Penggunaan**: Gunakan ListView untuk menampilkan daftar item yang bisa discroll, seperti daftar email atau pengaturan.
8. GridView
- **Deskripsi**: GridView menampilkan widget dalam grid dua dimensi.
- **Konteks Penggunaan**: Gunakan GridView untuk menampilkan item dalam format grid, seperti galeri foto.
9. Wrap
- **Deskripsi**: Wrap menampilkan anak-anaknya dalam beberapa baris atau kolom dan akan secara otomatis berpindah ke baris atau kolom berikutnya bila tidak ada ruang.
- **Konteks Penggunaan**: Gunakan Wrap untuk layout yang membutuhkan wrapping seperti tag chips atau button group yang perlu berpindah ke baris baru bila ruang habis.
10. ConstrainedBox dan SizedBox
- **Deskripsi**: ConstrainedBox memberikan batasan tambahan kepada anaknya, sedangkan SizedBox memberikan kotak dengan ukuran tetap.
- **Konteks Penggunaan**: Gunakan ConstrainedBox untuk membatasi ukuran maksimum atau minimum dari widget, dan SizedBox untuk memberikan ukuran spesifik, sering digunakan untuk memberi jarak.

## Elemen Input Form
`TextField` dan `TextFormField`, yaitu widget untuk input teks dasar. Digunakan untuk memungkinkan pengguna memasukkan teks. TextFormField biasanya digunakan dalam kombinasi dengan Form untuk validasi data.

## Clean Architecture
Penerapan Clean Architecture pada aplikasi Flutter membantu dalam mengorganisir kode agar mudah dipahami, diuji, dan dikelola. Clean Architecture memisahkan kode menjadi lapisan dengan tanggung jawab yang berbeda-beda, memastikan bahwa aplikasi tetap fleksibel, dapat diperluas, dan mudah dijaga. Berikut adalah panduan untuk menerapkan Clean Architecture di Flutter:

1. Pembagian Lapisan
Clean Architecture biasanya dibagi menjadi beberapa lapisan:

- **Presentation Layer**: Mengatur UI dan logika tampilan. Ini termasuk widgets dan state management (e.g., Provider, Bloc, atau Riverpod).
- **Domain Layer**: Inti dari aplikasi Anda, termasuk business logic dan entitas. Layer ini tidak bergantung pada framework lain dan dapat dipindahkan ke proyek lain dengan mudah.
- **Data Layer**: Mengatur akses data, baik dari jaringan, database lokal, atau sumber lain. Ini termasuk API calls, database operations, dan data caching.

2. Membuat Struktur Direktori
Struktur direktori aplikasi Anda harus mencerminkan pembagian lapisan ini. Contoh struktur:
```bash
/lib
|-- /src
    |-- /presentation
        |-- /screens
        |-- /widgets
        |-- /blocs (or /providers, /viewmodels)
    |-- /domain
        |-- /entities
        |-- /repositories
        |-- /usecases
    |-- /data
        |-- /models
        |-- /datasources
        |-- /repositories
```

3. Domain Layer
- **Entities**: Kelas sederhana yang mewakili objek bisnis.
- **Use Cases/Interactors**: Berisi logika bisnis spesifik.
- **Repositories Interfaces**: Antarmuka untuk mengakses data. Didefinisikan di domain layer tetapi diimplementasikan di data layer.

4. Data Layer
- **Models**: Representasi data yang biasanya sesuai dengan format JSON dari API atau skema database.
- **Data Sources**: Kelas yang bertanggung jawab untuk mengakses sumber data eksternal, seperti API atau database lokal.
- **Repositories Implementation**: Mengimplementasikan interfaces dari domain layer.

5. Presentation Layer
- **Screens/Pages**: Layar UI.
- **Widgets**: Widget yang lebih kecil dan dapat digunakan kembali.
- **State Management**: Kelola state UI dan business logic yang berkaitan dengan UI.

6. Dependency Injection
Gunakan teknik dependency injection untuk mengurangi ketergantungan antar lapisan. Hal ini memudahkan pengujian dan pemeliharaan kode.

7. Testing
- **Unit Tests**: Untuk setiap entitas, use case, dan repositories.
- **Widget Tests**: Untuk memeriksa UI.
- **Integration Tests**: Untuk menguji alur kerja aplikasi secara keseluruhan.

8. Penggunaan
Dalam aplikasi:
- **Screens**: Panggil use cases dan tampilkan data.
- **Use Cases**: Ambil data dari repositories, lakukan logika bisnis, dan kembalikan hasilnya.
- **Repositories**: Dapatkan data dari sumber yang sesuai, lakukan transformasi data jika perlu, dan kembalikan data ke use cases.

Menerapkan Clean Architecture di Flutter membutuhkan disiplin dalam pemisahan kode dan tanggung jawab, tetapi manfaatnya adalah kode yang lebih terorganisir, mudah diuji, dan mudah dikelola. Pendekatan ini sangat berguna untuk aplikasi berskala besar atau yang terus berkembang.

---

# Tugas 9
## Pengambilan JSON tanpa Membuat Model
Ya, pengambilan data JSON di Flutter bisa tanpa membuat model kelas terlebih dahulu. Hal ini bisa dilakukan dengan langsung menggunakan struktur data Map yang disediakan oleh Dart. Namun, pendekatan ini memiliki kelebihan dan kekurangan dibandingkan dengan menggunakan model kelas.

### Kelebihan
- **Kemudahan dan Kecepatan**: Anda tidak perlu mendefinisikan model terlebih dahulu, yang berarti lebih sedikit kode dan lebih cepat untuk implementasi awal.
- **Fleksibilitas**: Cocok untuk data yang tidak terstruktur dengan baik atau jika struktur data sering berubah.
### Kekurangan
- **Kurangnya Type Safety**: Anda kehilangan keamanan tipe yang diberikan oleh model kelas. Hal ini bisa menyebabkan kesalahan runtime jika tipe data tidak sesuai.
- **Kode Lebih Sulit Dipahami dan Dipelihara**: Menggunakan Map secara langsung membuat kode lebih sulit dipahami, terutama ketika struktur data menjadi kompleks.
- **Refactoring Lebih Sulit**: Jika struktur JSON berubah, Anda harus memperbarui setiap tempat di mana data tersebut digunakan.


## CookieRequest
### Fungsi CookieRequest
Dalam pengembangan aplikasi yang berinteraksi dengan server web atau API, cookie sering digunakan untuk berbagai tujuan seperti:
- **Otentikasi**: Membawa token atau identitas pengguna yang telah login untuk otentikasi pada server.
- **Manajemen Sesi**: Mempertahankan sesi pengguna saat berpindah antar halaman atau permintaan.
- **Simpan Preferensi**: Menyimpan preferensi pengguna seperti tema atau lokalitas.
- **Tracking dan Analitik**: Digunakan untuk tracking perilaku pengguna dan analitik.

### Berbagi Instance CookieRequest
Dalam aplikasi Flutter akan terdapat komponen atau layanan yang melakukan permintaan HTTP ke server. Jika aplikasi memerlukan otentikasi atau manajemen sesi yang menggunakan cookie, ada beberapa alasan mengapa instance yang menangani cookie ini perlu dibagikan di seluruh aplikasi:
- **Konsistensi Sesi**: Untuk memastikan bahwa semua permintaan yang keluar dari aplikasi Anda membawa informasi sesi atau otentikasi yang sama, memungkinkan pengguna tetap login atau sesi tetap aktif saat menggunakan aplikasi.
- **Efisiensi**: Menghindari kebutuhan untuk mengatur ulang cookie atau informasi otentikasi untuk setiap permintaan baru atau komponen yang berbeda dalam aplikasi.
- **Keamanan**: Memastikan bahwa semua permintaan yang dibuat dari aplikasi Anda secara konsisten menerapkan kebijakan keamanan yang sama, seperti penggunaan token yang aman.
- **Pemeliharaan**: Memudahkan pemeliharaan dan update kode. Jika logika untuk mengelola cookie perlu diubah, Anda hanya perlu memodifikasinya di satu tempat.

## Mekanisme Pengambilan Data JSON pada Flutter
Mekanisme pengambilan data dari JSON dan menampilkannya pada aplikasi Flutter melibatkan beberapa langkah penting. Ini termasuk melakukan permintaan HTTP ke server, mengurai respons JSON, dan kemudian menampilkan data tersebut dalam UI Flutter. Berikut adalah langkah-langkahnya secara rinci:

1. Tambahkan Dependensi ke `pubspec.yaml`.
2. Buat Model Data (Opsional).
3. Lakukan Permintaan HTTP.
4. Tampilkan Data dalam Widget.
5. Jalankan dan Uji Aplikasi.

Proses pengambilan dan menampilkan data JSON dalam aplikasi Flutter melibatkan permintaan jaringan, parsing respons, dan kemudian menggunakan data tersebut dalam widget. Praktik terbaik termasuk memodelkan data Anda, mengelola state dengan benar, dan menangani berbagai kondisi seperti loading dan error. Ini memastikan bahwa aplikasi Anda dapat menangani data dengan cara yang efisien dan pengguna mendapatkan pengalaman yang lancar.

## Mekanisme Autentikasi Input Data Akun
Mekanisme autentikasi dari input data akun pada Flutter ke Django melibatkan beberapa langkah. Pertama, pengguna memasukkan informasi akun seperti username dan password melalui antarmuka pengguna Flutter. Data ini dikirim ke server Django melalui permintaan HTTP, yang kemudian diproses oleh API Django. Django menggunakan sistem autentikasi bawaan atau pustaka pihak ketiga seperti Django Rest Framework untuk memverifikasi kredensial pengguna. Jika autentikasi berhasil, server Django menghasilkan token akses yang dikirim kembali ke aplikasi Flutter. Aplikasi Flutter kemudian menyimpan token ini secara lokal untuk digunakan dalam permintaan berikutnya.

Setelah proses autentikasi selesai, menu pada Flutter dapat ditampilkan berdasarkan status otentikasi pengguna. Aplikasi dapat membuat permintaan ke endpoint tertentu pada Django yang memerlukan otorisasi, dan token akses disertakan dalam setiap permintaan untuk memverifikasi identitas pengguna. Django kemudian memproses permintaan tersebut dan memberikan respons yang sesuai, memungkinkan aplikasi Flutter untuk menampilkan menu atau konten yang sesuai dengan hak akses pengguna yang sudah diautentikasi. Proses ini memastikan bahwa hanya pengguna yang sah yang dapat mengakses bagian tertentu dari aplikasi berbasis Flutter yang terhubung ke backend Django.

## Widget yang Digunakan 
- **MaterialApp**: Widget utama untuk konfigurasi aplikasi Flutter.
- **Scaffold**: Widget yang menyediakan struktur dasar untuk antarmuka visual aplikasi, termasuk AppBar dan body.
- **AppBar**: Menampilkan bilah aplikasi di bagian atas layar.
- **Container**: Digunakan untuk styling dengan memberikan latar belakang gradient.
- **Column**: Menyusun widget-widget anak secara vertikal.
- **Stack**: Menempatkan widget-widget anak di atas satu sama lain.
- **Text**: Menampilkan teks dengan gaya tertentu.
- **TextField**: Input teks untuk memasukkan username dan password.
- **ElevatedButton**: Tombol dengan latar belakang terisi. Digunakan untuk tombol login.
- **GestureDetector**: Mendeteksi gesture. Digunakan untuk membuat teks "Create New Account" dapat diklik.
- **Navigator**: Digunakan untuk navigasi antar halaman.
- **Form**: Kontainer untuk elemen-elemen formulir. Memungkinkan validasi dan pengiriman formulir.
- **GlobalKey**: Kunci global untuk mengakses state Form.
- **TextFormField**: Elemen formulir spesifik untuk menangani input teks.
- **Icon**: Ikon grafis. Digunakan untuk ikon di samping kolom input.
- **TextButton**: Tombol dengan tampilan datar. Digunakan untuk tombol "Submit".
- **Navigator**: Digunakan untuk navigasi antar halaman.
- **Drawer**: Menu sisi kiri yang dapat diakses dengan menggeser dari kiri.
- **FutureBuilder**: Widget untuk membangun antarmuka berdasarkan hasil masa depan (asynchronous).
- **ListView.builder**: Menampilkan daftar item dengan builder callback.
- **InkWell**: Widget yang mendeteksi ketukan dan memberikan respons visual.