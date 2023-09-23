import 'package:mahasiswa_crud/interfaces/mahasiswa_repository_interface.dart';

class ViewMahasiswa {
  final MahasiswaRepositoryInterface repository;
  ViewMahasiswa(this.repository);

  void viewAll(){
    var allMahasiswa = repository.getAllMahasiswa();
    if (allMahasiswa.isEmpty) {
      print('Tidak Ada Mahasiswa');
    } else {
      for (var mhs in allMahasiswa) {
        print("Nim : ${mhs.nim} Nama : ${mhs.nama} Jurusan : ${mhs.jurusan}");
      }
    }
  }
}