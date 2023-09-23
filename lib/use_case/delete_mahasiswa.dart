import 'dart:io';

import 'package:mahasiswa_crud/interfaces/mahasiswa_repository_interface.dart';

class DeleteMahasiswa {
  DeleteMahasiswa(this.repository);

  final MahasiswaRepositoryInterface repository;

  void execute(int nim) => repository.deleteMahasiswa(nim);
  
  void deleteMhs(){
    print('Masukan nim mahasiswa yang ingin di hapus : ');
    final nimString = stdin.readLineSync();
    final nim = int.tryParse(nimString ?? '');

    if (nim != null) {
      execute(nim);
      print('Data Mahasiswa dengan Nim $nim berhasil diHapus');
    } else {
      print('Nim yang anda masukan tidak valid');
    }
  }
}
