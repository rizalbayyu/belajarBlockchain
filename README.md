# belajarBlockchain

## Reentrancy.sol
Untuk mencegah penyerangan pada saat transaksi. Dapa membuat sebuah modifier noReentrant(). Ketika penyerang memanggil fungsi withdraw, maka fungsi ini akan memanggil fungsi modifier noReentrant dan set locked menjadi true, kemudian menjalankan fungsi tersebut dan melanjutkan fungsi yang ada pada withdraw. Jika penyerang berhasil melakukan callback pada fungsi withdraw maka modifier noReentrant() akan dipanggil dengan kondisi locked sudah menjadi true, sehingga transaksi dan penyerangan akan menjadi fail.

## concat.sol
1. Untuk melakukan concat string + string adalah dengan mennjalankan fungsi concat1(string calldata a, string calldata b) yang telah dibuat. Kemudian memasukkan nilai string. Setelah itu kedua value tersebut akan diubah menjadi bentuk byte dengan menggunakan abi.encodePacked() untuk melakukan concat. Kemudian diubah lagi menjadi string untuk dilakukan return value
2. Untuk melakukan concat string + uint dengan menjalankan fungsi concat2(string calldata a) yang telah dibuat. Terdapat sebuah fungsi uint2str() yang digunakan untuk merubah nilai uint menjadi string. Selanjutnya pada fungsi concat2 terdapat variable string d yang dimana digunakan untuk memanggil fungsi uint2str(). Selanjutnya untuk mendapatkan return value gabungan dari string + uint adalah dengan mengubah input string dan uint (untuk uint sudah di input secara hardcode) menjadi dalam bentuk byte dan di gabungkan kedua value ini dengan menggunakan abi.encodePacked(), kemudian diubah lagi menjadi string dengan fungsi string() dan dilakukan return value.
3. Untuk melakukan concat pada sebuah struct adalah dengan menjalankan fungsi concat3(). Sebelumnya diperlukan sebuah struct() dan fungsi untuk melakan set data pada struct tersebut. Jika value sudah di set pada struct tersebut maka dapat menjalankan fungsi pada concat3() dengan memanggil tiap value pada struct dan disimpan pada sebuah string seperti berikut: string memory a = ts.text1;string memory b = ts.text2;string memory c = ts.text3; Kemudian mengubah value tersebut menjadi dalam bentuk byte dan di gabungkan kedua value ini dengan menggunakan abi.encodePacked(), setelah itu diubah lagi menjadi string dengan fungsi string() dan dilakukan return value.

## verify.sol
Untuk mendapatkan hash value yang nantinya digunakan untuk mendapatkan signature value, harus menjalankan fungsi getMessageHash() dan memasukkan address, amount, string, dan uint. Setelah itu value berupa hash akan didaptkan, yang kemudian value ini digunakan untuk mendaptkan signature value pada fungsi getEthSignedMessageHash(). Untuk melakukan verify masih terdapat error

## ERC20.sol
Untuk pengerjaan yang ini yang masih bisa dilakukan adalah melihat balance, untuk melakukan transfer masih ada error
