import 'package:sqflite/sqflite.dart';

final String idColumn = "idColumin";
final String nameColumn = "naameColumin";
final String emailColumn = "emailColumin";
final String phoneColumn = "phoneColumin";
final String imgColumn = "imgColumin";

class ContactHelper {

}

class Contact {

  int? id;
  String? name;
  String? email;
  String? phone;
  String? img;

  Contact.fromMap(Map map){
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    img = map[imgColumn];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imgColumn: img
    };

    if(id !=null){
      map[idColumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Contato: (id: $id, name: $name, email: $email, phone: $phone, img: $img)";
  }
}
