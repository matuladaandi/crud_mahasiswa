import 'dart:io';

import 'package:mahasiswa_crud/data/repository/mahasiswa_repository_impl.dart';
import 'package:mahasiswa_crud/use_case/add_mahasiswa.dart';

void main(List<String> args) {
  runApp();
}

void runApp(){
  final repository = MahasiswaRepositoryImp();
  final addMahasiswaUsecase = AddMahasiswa(repository);
  while (true) {
    print('Data Mahasiswa');
    print('1. Tambah Data Mahasiswa');
    print('2. Lihat Semua Data Mahasiswa');
    print('3. Edit Mahasiswa');
    print('4. Hapus Mahasiswa');
    print('5. Keluar');
    print('Pilih angka(1/2/3/4/5) : ');

   var input = stdin.readLineSync();
   switch (input) {
     case '1': //error
       addMahasiswaUsecase.addMhs();
       break;
     default:
     print("Pilihan tidak dikenal. Silakan Coba lagi :)");
   }
  }
}