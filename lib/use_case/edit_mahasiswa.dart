import 'dart:io';

import 'package:mahasiswa_crud/entities/mahasiswa.dart';
import 'package:mahasiswa_crud/interfaces/mahasiswa_repository_interface.dart';

class EditMahasiswa {
  final MahasiswaRepositoryInterface repository;

  EditMahasiswa(this.repository);

  void execute(int oldNim, int newNim, Mahasiswa updateMahasiswa) {
    repository.editMahasiswa(newNim, updateMahasiswa);
  }

  void editMahasiswa() {
    print('Masukan NIM yang ingin anda edit : ');
    final oldNimString = stdin.readLineSync();
    final oldNim = int.tryParse(oldNimString ?? '');
    if (oldNim == null) {
      print('nim yang dimasukan tidak valid');
      return;
    }

    print('Masukan Nim baru');
    final newNimString = stdin.readLineSync();
    final newNim = int.tryParse(newNimString ?? '');
    if (newNim == null) {
      print('Nim baru yang anda masukan tidak valid');
      return;
    }

    print('Masukan Nama baru : ');
    var nama = stdin.readLineSync();

    print('Masukan Jurusan Baru : ');
    var jurusan = stdin.readLineSync();

    if (nama != null && jurusan != null) {
      final updateMahasiswa =
          Mahasiswa(newNim, nama, jurusan); // error (chtgpt(D))
      execute(oldNim, newNim, updateMahasiswa);
      print('Data Mahasiswa Berhasil diUbah');
    } else {
      print('Data yang diMasukan tidak Valid');
    }
  }
}
