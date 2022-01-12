# belajarBlockchain

## Reentrancy.sol
Untuk mencegah penyerangan pada saat transaksi. Dapa membuat sebuah modifier noReentrant(). Ketika penyerang memanggil fungsi withdraw, maka fungsi ini akan memanggil fungsi modifier noReentrant dan set locked menjadi true, kemudian menjalankan fungsi tersebut dan melanjutkan fungsi yang ada pada withdraw. Jika penyerang berhasil melakukan callback pada fungsi withdraw maka modifier noReentrant() akan dipanggil dengan kondisi locked sudah menjadi true, sehingga transaksi dan penyerangan akan menjadi fail.
