/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.31-MariaDB : Database - bsisalemba22
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bsisalemba22` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bsisalemba22`;

/*Table structure for table `data mahasiswa` */

DROP TABLE IF EXISTS `data mahasiswa`;

CREATE TABLE `data mahasiswa` (
  `NIM` int(6) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Tempat, Tanggal, Lahir` varchar(30) NOT NULL,
  `Alamat` varchar(150) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Jenis Kelamin` char(10) DEFAULT NULL,
  `Agama` varchar(10) DEFAULT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Tahun Masuk` year(4) NOT NULL,
  `Kelas` varchar(10) NOT NULL,
  `Status` char(20) NOT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data mahasiswa` */

/*Table structure for table `jadwal mengajar dosen` */

DROP TABLE IF EXISTS `jadwal mengajar dosen`;

CREATE TABLE `jadwal mengajar dosen` (
  `Kode Dosen` varchar(3) NOT NULL,
  `Nama Dosen` varchar(100) DEFAULT NULL,
  `hari` char(10) DEFAULT NULL,
  `Jam Mengajar` time(5) DEFAULT NULL,
  `Kelas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Kode Dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jadwal mengajar dosen` */

/*Table structure for table `nilai mahasiswa` */

DROP TABLE IF EXISTS `nilai mahasiswa`;

CREATE TABLE `nilai mahasiswa` (
  `NIM` int(6) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Kelas` varchar(10) DEFAULT NULL,
  `Mata Kuliah` varchar(50) DEFAULT NULL,
  `Nilai UTS` float DEFAULT NULL,
  `Nilai UAS` float DEFAULT NULL,
  `Nilai Akhir` float DEFAULT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nilai mahasiswa` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
