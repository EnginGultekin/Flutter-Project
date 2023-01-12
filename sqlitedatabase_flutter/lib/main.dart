import 'package:flutter/material.dart';

// Bu üç satır veritabanı bağlantısı için import edildi
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  //Veritabanını açtık
  final database = openDatabase(
    // Ve Veritabanının yolunu aşağıdaki gibi tanımladık
    join(await getDatabasesPath(),'doggie_database.db'),

    //Tablo oluşturalım
    onCreate: (db,version) {
      return db.execute(
        'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },

    version: 1,
  );


  // --------- Insert ---------
  // Define a function that inserts dogs into the database
  Future<void> insertDog(Dog dog) async {
    // Get a reference to the database.
    final db = await database;

    //insert işlemi
    await db.insert(
      'dogs',          // Tablo ismi
      dog.toMap(),    //  'dog' tablosunu Map'e aktarıyor
      conflictAlgorithm: ConflictAlgorithm.replace,  // Bu satır aynı verinin ikince kez yazılmasını engelliyor
    );
  }


  // --------- Write List of Dogs ---------
  Future<List<Dog>> dogs() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table fol all the Dogs.
    final List<Map<String, dynamic>> maps = await db.query('dogs');

    //convert the List<Map<String ,dynamic>> into a List<Dog>
    return List.generate(maps.length, (i) {
      return Dog(
      id: maps[i]['id'],
      name: maps[i]['name'],
      age: maps[i]['age'],
      );
    });
  }


  // --------- Update İşlemi ---------
  Future<void> updateDog(Dog dog) async {
    // Get a reference to the database.
    final db = await database;

    //Update the given Dog
    await db.update(
      'dogs',        // tablo
      dog.toMap(),   // 'dog' tablosunu Map'a aktarıyor
      // Dog id'nin eşleştiğden emin olmamız lazım
      where: 'id = ?',  // Burda istediğimiz kşulu yazıyoruz
      // SQL injection hatasını engellemek için  alttaki satırı yazarız
      whereArgs: [dog.id],
    );
  }


  // --------- Delete İşlemi ---------
  Future<void> deleteDog(int id) async{
    // Get a reference to the database.
    final db = await database;

    //Remove the Dog from the database
    await db.delete(
      'dogs',  // tablo
      where: 'id = ?',
      // SQL injection hatasını engellemek için  alttaki satırı yazarız
      whereArgs: [id],
    );
  }


  // Create a Dog and add it to the dogs table
  var fido = Dog(
    id: 0,
    name: 'Fido',
    age: 35,
  );
  await insertDog(fido);
  var alex = Dog(
    id: 1,
    name: 'Alex',
    age: 12,
  );
  await insertDog(alex);
  var mavi = Dog(
    id: 2,
    name: 'Mavi',
    age: 2,
  );
  await insertDog(mavi);

  // İnsert etmiş olduğumuz 'fido' nun bilgilerini değiştirelim

  fido = Dog(
    id: fido.id,
    name: fido.name,
    age: fido.age + 15,
  );
  await updateDog(fido);

  mavi = Dog(
    id: mavi.id,
    name:'Mavis',
    age:mavi.age + 6,
  );
  await updateDog(mavi);

  // Delete Fido from the database.
  await deleteDog(fido.id);


  // Print all Date
  print(await dogs());


}


class Dog{
  final int id;
  final String name;
  final int age;

  Dog({
    required this.id,
    required this.name,
    required this.age
  });

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.

  Map<String ,dynamic> toMap(){
    return {
      'id' : id,
      'name' : name,
      'age' : age,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.

  @override
  String toString() {
    return 'Dog{id:$id, name:$name , age:$age}';
  }

}
