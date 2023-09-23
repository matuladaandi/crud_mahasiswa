import 'package:mahasiswa_crud/entities/mahasiswa.dart';

abstract class MahasiswaRepositoryInterface {
  // add mahasiswa
  void addMahasiswa(Mahasiswa mahasiswa);

  // view mahasiswa
  List<Mahasiswa> getAllMahasiswa();

  // edit mahasiswa
  void editMahasiswa(int nim, Mahasiswa updateMahasiswa);
}
