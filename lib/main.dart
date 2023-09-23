import 'dart:io';

import 'package:mahasiswa_crud/data/repository/mahasiswa_repository_impl.dart';
import 'package:mahasiswa_crud/use_case/add_mahasiswa.dart';
import 'package:mahasiswa_crud/use_case/delete_mahasiswa.dart';
import 'package:mahasiswa_crud/use_case/edit_mahasiswa.dart';
import 'package:mahasiswa_crud/use_case/view_mahasiswa.dart';

void main(List<String> args) {
  runApp();
}

void runApp(){
  final repository = MahasiswaRepositoryImp();
  final addMahasiswaUsecase = AddMahasiswa(repository);
  ViewMahasiswa viewMahasiswa = ViewMahasiswa(repository);
  EditMahasiswa editMhs = EditMahasiswa(repository);
  DeleteMahasiswa deleteMahasiswa = DeleteMahasiswa(repository);
  while (true) {
    print('================================');
    print('-- welcome to the student app--');
    print('================================');
    print('1. Tambah Data Mahasiswa');
    print('2. Lihat Semua Data Mahasiswa');
    print('3. Edit Mahasiswa');
    print('4. Hapus Mahasiswa');
    print('5. Keluar');
    print('---------------------------------');
    print('Pilih angka(1/2/3/4/5) : ');

   var input = stdin.readLineSync();
   switch (input) {
     case '1':
       addMahasiswaUsecase.addMhs();
       break;
     case '2':
      viewMahasiswa.viewAll();
      break;
    case '3':
    editMhs.editMahasiswa();
      break;
    case '4':
    deleteMahasiswa.deleteMhs();
    break;
     case '5' :
     print("Terima kasih telah menggunakan aplikasi. Sampai jumpa!");
     return;
     default:
     print("Pilihan tidak dikenal. Silakan Coba lagi :)");
   }
  }
}