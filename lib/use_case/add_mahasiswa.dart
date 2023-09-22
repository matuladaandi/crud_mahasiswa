import 'dart:io';

import 'package:mahasiswa_crud/entities/mahasiswa.dart';
import 'package:mahasiswa_crud/interfaces/mahasiswa_repository_interface.dart';

class AddMahasiswa {
  final MahasiswaRepositoryInterface repository;
  AddMahasiswa(this.repository);
  
  void addMhs(){
    print("Masukan NIM : ");
    var nimStr = stdin.readLineSync();
    int nim = int.tryParse(nimStr ?? '') ?? 0;  // Konversi String ke int, jika gagal atau null, tetapkan ke 0

    print("Masukan Nama : ");
    var nama = stdin.readLineSync() ?? 'Unknown'; // Nilai default 'Unknown' jika input null

    print("Jurusan  : ");
    var jurusan = stdin.readLineSync() ?? 'Unknown'; // Nilai default 'Unknown' jika input null

    Mahasiswa mahasiswa = Mahasiswa(nim, nama, jurusan);
    repository.addMahasiswa(mahasiswa);

    print("Data Mahasiswa Berhasil diTambahkan");
  }
}
