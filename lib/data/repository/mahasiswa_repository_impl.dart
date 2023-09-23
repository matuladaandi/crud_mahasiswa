import 'package:mahasiswa_crud/entities/mahasiswa.dart';
import 'package:mahasiswa_crud/interfaces/mahasiswa_repository_interface.dart';

// file ini memiliki kontrak dengan MahasiswaRepositoryInterface
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

  // edit mahasiswa
  @override
  void editMahasiswa(int nim, Mahasiswa updateMahasiswa){
    int index = _dataMahasiswa.indexWhere((mhs) => mhs.nim == nim);
    if (index != -1) {
      _dataMahasiswa[index] = updateMahasiswa;
    }
  }
}
