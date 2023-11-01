# Knapsnack
 
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
