create database siteyonetim_v2

use siteyonetim_v2

create table yonetim(
Yonetici_Id int primary key,
Ad_Soyad nvarchar(50),
Y_Telefon_No int default 11111111111)

create table uyeler(
Uye_ID int primary key,
Ad_Soyad nvarchar(50) not null,
Telefon_No int default 11111111111,
Apartman_No int,
Kat_No int,
Y_id int foreign key references yonetim(Yonetici_Id)
)

create table mulk(
Mulk_No int primary key,
Blok_No int)

create table sahip(
sahip_no int primary key,
Uye_Numarasi int foreign key references uyeler(Uye_ID),
Mulk_Numarası int foreign key references mulk(Mulk_No),
Boyut int check (Boyut >=1),
Oda_Sayisi int check (Oda_Sayisi >=1),
Konut_Tipi nvarchar(20) not null
)

create table idariisler(
Personel_No int primary key,
Ad_Soyad nvarchar(60) not null,
yas int,
Telefon_No int,
Meslek nvarchar(25),
kıdem nvarchar(25),
maas int,
Mulk_Numarasi int foreign key references mulk(Mulk_No),
Yonetici_Numarası int foreign key references yonetim(Yonetici_ID))

create table demirbas(
Demirbas_No int primary key,
Demirbas_Ad nvarchar(40) not null,
Yonetici_Numarası int foreign key references yonetim(Yonetici_ID))

create table gider(
Yonetici_Numarasi int foreign key references yonetim(Yonetici_ID),
Gider_No int Primary Key,
Toplam_Gider int,
Demirbas int)

create table mevcut(
Uye_No int foreign key references uyeler(Uye_ID),
Fat_Aidat_No int primary key,
Su_F int check (Su_F >=0),
Elektrik_F int check (Elektrik_F>=0),
Dogalgaz_F int check (Dogalgaz_F>=0),
Gider_Numarasi int foreign key references gider(Gider_No))
