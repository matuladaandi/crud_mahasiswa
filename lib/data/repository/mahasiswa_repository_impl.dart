import 'package:mahasiswa_crud/entities/mahasiswa.dart';
import 'package:mahasiswa_crud/interfaces/mahasiswa_repository_interface.dart';

class MahasiswaRepositoryImp implements MahasiswaRepositoryInterface {
  final List<Mahasiswa> _dataMahasiswa = [];
  // add mahasiswa
  @override
  void addMahasiswa(Mahasiswa mahasiswa) {
    _dataMahasiswa.add(mahasiswa);
  }

  // view mahasiswa
  @override
  List<Mahasiswa> getAllMahasiswa() {
    return _dataMahasiswa;
  }
}
