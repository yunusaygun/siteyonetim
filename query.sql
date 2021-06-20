use siteyonetim_v2

/*select * from gider
select * from yonetim
select * from uyeler 
select * from idariisler
select * from mevcut
select * fromdemirbas*/

select Ad_soyad,Y_id from uyeler where Y_id = (select Yonetici_Id from yonetim where Ad_Soyad like 'Yunus%')

select * from uyeler where Y_id in ( select Yonetici_Id from yonetim where Ad_Soyad = 'Yunus Aygün' or Yonetici_Id = 3) order by Ad_Soyad

select uyeler.Ad_soyad,uyeler.Y_id as 'Yönetici Ýsmi',yonetim.Ad_Soyad from uyeler,yonetim where 
yonetim.Yonetici_Id =uyeler.Y_id and Y_id = (select Yonetici_Id from yonetim where Ad_Soyad like 'Yunus%')

select Uye_ID,Ad_Soyad,sahip.Mulk_Numarasý from uyeler inner join sahip on sahip.Uye_Numarasi=uyeler.Uye_ID order by sahip.Mulk_Numarasý

select Meslek,yonetim.Yonetici_Id from idariisler left join yonetim on idariisler.Yonetici_Numarasý=yonetim.Yonetici_Id

select idari.personel_no,idari.Ad_Soyad,idari.Meslek,mulk.Mulk_No,mulk.Blok_No from idariisler idari,mulk
where mulk.Mulk_No = idari.Mulk_Numarasi and mulk.Mulk_No = 2

select top 3 * from uyeler

select top 3 * from uyeler order by newid()

select Uye_No,Su_f+Elektrik_F+Dogalgaz_F as 'Toplam Gider' from mevcut

select avg(Toplam_Gider) as 'Ortalama Gider',max(Toplam_Gider) as 'En Fazla Gider', 
min(Toplam_Gider) as 'En az Gider'from gider

select Yonetici_Numarasi,avg(Toplam_gider) as 'Ortalama Gider' ,count(Yonetici_Numarasi) as 
'Yöneticini Ýlgilendi Ýþ Sayýsý' from gider group by Yonetici_Numarasi order by avg(Toplam_Gider) DESC

select Apartman_No,count(Ad_Soyad) as 'Apartmanda Yaþayan Bireyler' from uyeler group by Apartman_No 

select Meslek,max(maas) as 'En fazla Maas' from idariisler group by Meslek
select Meslek,max(maas) as 'En fazla Maas' from idariisler group by Meslek having (max(maas)>3000) order by max(maas) DESC

select * from mevcut where Su_F>=200 and Elektrik_F>=200

select * from demirbas where Yonetici_Numarasý = 2

select * from idariisler order by maas desc,yas asc

select Uye_ID,Ad_Soyad,Telefon_No from uyeler where not  Ad_Soyad = 'Mehmet Kalkan'

select * from uyeler where Ad_Soyad like 'F%' order by Kat_No desc

select Uye_ID,Ad_Soyad,Telefon_No,Kat_No from uyeler where   Kat_No  in (2)

select * from sahip where boyut between 71 and 101

select lower(Ad_Soyad) as 'Küçük Harf' from idariisler
select RIGHT(Ad_Soyad,4) as 'Saðdan 4 Harf' from idariisler

select Uye_ID,Ad_Soyad,Telefon_No,REPLACE(Apartman_No,2,999) as 'Yeni Apartman No',Kat_No,Y_id 
,reverse(Ad_Soyad) as 'Tersten Üye Ýsimleri' from uyeler

select Demirbas_No,Demirbas_Ad,len(Demirbas_ad) as 'Demirbas Ad uzulunklarý' from demirbas

