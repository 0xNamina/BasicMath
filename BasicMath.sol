// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BasicMath {
    function adder(uint _a, uint _b) public pure returns (uint sum, bool error) {
        // Gunakan `unchecked` untuk memungkinkan overflow
        unchecked {
            uint c = _a + _b;
            // Jika hasil penjumlahan lebih kecil dari _a, berarti terjadi overflow
            if (c < _a) {
                return (0, true);
            }
            return (c, false);
        }
    }

    function subtractor(uint _a, uint _b) public pure returns (uint difference, bool error) {
        // Cek secara manual apakah akan terjadi underflow (saat _a lebih kecil dari _b)
        if (_a < _b) {
            return (0, true);
        }
        // Gunakan `unchecked` untuk menghindari underflow check Solidity yang akan menghentikan transaksi
        unchecked {
            uint c = _a - _b;
            return (c, false);
        }
    }
}
