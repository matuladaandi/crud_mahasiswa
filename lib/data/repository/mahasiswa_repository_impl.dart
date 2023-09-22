import 'package:mahasiswa_crud/entities/mahasiswa.dart';
import 'package:mahasiswa_crud/interfaces/mahasiswa_repository_interface.dart';

class MahasiswaRepositoryImp implements MahasiswaRepositoryInterface {
  final List<Mahasiswa> _dataMahasiswa = [];
  @override
  void addMahasiswa(Mahasiswa mahasiswa){
    _dataMahasiswa.add(mahasiswa);
  }
  // implementasi method lainnya seperti get, update, delete, dll.
}