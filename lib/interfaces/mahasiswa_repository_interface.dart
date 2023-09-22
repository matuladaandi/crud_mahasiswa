import 'package:mahasiswa_crud/entities/mahasiswa.dart';

abstract class MahasiswaRepositoryInterface {
  void addMahasiswa(Mahasiswa mahasiswa);
  // method lainnya seperti get, update, delete, dll.
}
