import 'package:calculatecalories/Func_List_Class/food.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class joint extends StatefulWidget {
   List<Food> foodList;
  final String text;
   joint({Key? key, required this.foodList,required this.text}) : super(key: key);

  @override
  _jointState createState() => _jointState();
}

class _jointState extends State<joint> {


  //Bu liste boş niye ? Bu liste ekranda seçmiş olduğumuz verileri  tutuyor
  List<int> selectedFoodIds = <int>[];

  List<Food> chooses = [
    Food(110, 'deneme', 241, 8, 12, 1),
    Food(111, 'deneme', 241, 8, 12, 1),
    Food(112, 'deneme', 241, 8, 12, 1),];

  @override
  Widget build(BuildContext context) {
    // Calculate butonuna tıkladığımızda seçili listeyi yazdırmasını istiyorum
    widget.text == "Calculate" ? widget.foodList = chooses : [];

    print(selectedFoodIds);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(widget.text),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      // Burdan hangi liste yazdırılacaksa onun ismini alıyoruz
      body: Listele(widget.foodList),
    );
  }


  // Listele Fonksyonu burasıda seçtiğimiz katagorideki besinleri listeleyen fonksyondur

  ListView Listele(List<Food> name) {
    //Listeyi oluşturduk
    return ListView.builder(
      // Listenin uzunluğunu veriyoruz
      itemCount: name.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.greenAccent),
              borderRadius: BorderRadius.circular(20),
            ),

            /** CheckboxListTile Widget **/
            //Burası özel bir Listeme yapmamızı sağlayan kısımdır
            child: CheckboxListTile(
              title: Text(name[index].name),
              subtitle: Text('${name[index].calori} calori'),
              secondary: const Icon(Icons.code),
              autofocus: false,
              //seçtiğimiizde gelen renk
              activeColor: Colors.green,
              checkColor: Colors.white,
              // Value değişkenini seçili ise .... Bu satırı sor ???????
              value: selectedFoodIds.contains(name[index].id),
              onChanged: (bool? value) {
                if (value ?? false) {  // Anlamı  Valu ==Null değilse sağdaki değeri value' ata
                  // if kontrolünden sonra value == True ve value!= Null ise seçili besini  selectedFoodIds listesine at ve
                  // value değerini yeniden false yap . Başta tru ise ifin içine girer ama daha sonra değeri false olacaktır
                  selectedFoodIds.add(name[index].id);
                } else {
                  // Else blogunda da seçili olan ama çıkarmak istedeğimiz besinleri ...... Sooor ?????
                  selectedFoodIds.removeWhere((id) {
                    return id == name[index].id;
                  });
                }
                setState(() {});
              },

            ), //CheckboxListTile
          ),

        );

      }, //Padding
    );
  }
}

