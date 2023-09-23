  import 'dart:io';

  import 'package:mahasiswa_crud/entities/mahasiswa.dart';
  import 'package:mahasiswa_crud/interfaces/mahasiswa_repository_interface.dart';

  class EditMahasiswa {
    final MahasiswaRepositoryInterface repository;

    EditMahasiswa(this.repository);

    void execute(int nim, Mahasiswa updateMahasiswa) {
      repository.editMahasiswa(nim, updateMahasiswa);
    }

    void editMahasiswa() {
      print('Masukan NIM yang ingin anda edit : ');
      final nimString = stdin.readLineSync();
      final nim = int.tryParse(nimString ?? '');
      if (nim == null) {
        print('nim yang dimasukan tidak valid');
      }

      print('Masukan Nama baru : ');
      var nama = stdin.readLineSync();

      print('Masukan Jurusan Baru : ');
      var jurusan = stdin.readLineSync();

      if (nama != null && jurusan != null && nim != null) {
        final updateMahasiswa = Mahasiswa(nim, nama, jurusan); // error (chtgpt(D))
        execute(nim, updateMahasiswa);
        print('Data Mahasiswa Berhasil diUbah');
      } else {
        print('Data yang diMasukan tidak Valid');
      }
    }
  }
