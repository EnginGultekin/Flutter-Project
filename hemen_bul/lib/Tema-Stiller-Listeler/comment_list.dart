class Comments {
  String? name ;
  String comment;
  double giveRate;
  String? dateTime;

  Comments(this.name, this.comment, this.giveRate,this.dateTime);

}

class commentList {
   List<Comments> commensts = [
    Comments(
        'Engin',
        'Biz kahvaltıya gitmiştim ancak gittigim yer restorantmış uzak oldugu için ne iyebiliriz diye sorduk ve ciger var dedi sabah sabah ciger mükemmel gerçekten '
            'tavsiye ediyorum kesinlikler gitt',
        4.5,'01.12.2021'),
    Comments(
        'Deliler',
        ' Urfadan geldik ama ordaymış gibi ciger yedik urfayı aratmadı o yüzden beg'
            'enmedik isteseydik orda yerdik dimi ama  ',
        3.0,'01.04.2022'),
    Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.0,'25.08.2021'),
     Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 4.0,'18.05.2022'),
     Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 2.5,'29.12.2021'),
     Comments('Anonim','Bence gayet güzel ama geliştirilmesi gereken çok şey var mesela garsonlar o ne biçim  Garsundur ki yaa yemekler güzel olanbilir ama çok iyi olmalı Comman', 3.5,'20.02.2022'),

  ];
}
