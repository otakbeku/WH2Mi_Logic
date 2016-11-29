CREATE TABLE Tabel_penyakit (
  idPenyakit INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nama_Penyakit VARCHAR NULL,
  Deskripsi_penyakit VARCHAR NULL,
  PRIMARY KEY(idPenyakit)
)
AUTO_INCREMENT = 1;

CREATE TABLE Tabel_SaranPenangananPertama (
  idSaranPenangananPertama INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Tabel_penyakit_idPenyakit INTEGER UNSIGNED NOT NULL,
  Text_saranPengananPertama VARCHAR NULL,
  PRIMARY KEY(idSaranPenangananPertama, Tabel_penyakit_idPenyakit),
  INDEX Tabel_SaranPenangananPertama_FKIndex1(Tabel_penyakit_idPenyakit)
);

CREATE TABLE Tabel_SaranPencegahan (
  id_SaranPencegahan INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Tabel_penyakit_idPenyakit INTEGER UNSIGNED NOT NULL,
  Text_saranPencegahan VARCHAR NULL,
  PRIMARY KEY(id_SaranPencegahan, Tabel_penyakit_idPenyakit),
  INDEX Tabel_SaranPencegahan_FKIndex1(Tabel_penyakit_idPenyakit)
);

CREATE TABLE Tabel_kondisiLingkungan (
  idKondisiLingkungan INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Tabel_penyakit_idPenyakit INTEGER UNSIGNED NOT NULL,
  Text_kondisiLingkungan INTEGER UNSIGNED NULL,
  PRIMARY KEY(idKondisiLingkungan, Tabel_penyakit_idPenyakit),
  INDEX Tabel_kondisiLingkungan_FKIndex1(Tabel_penyakit_idPenyakit)
);

CREATE TABLE Tabel_gejala (
  idGejala INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Tabel_penyakit_idPenyakit INTEGER UNSIGNED NOT NULL,
  Text_Gejala VARCHAR NULL,
  PRIMARY KEY(idGejala, Tabel_penyakit_idPenyakit),
  INDEX Tabel_gejala_FKIndex1(Tabel_penyakit_idPenyakit)
);


