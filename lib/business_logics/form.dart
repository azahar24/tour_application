import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:tour_application/ui/route/route.dart';

class UsersInfo {
  final FirebaseAuth _auth = FirebaseAuth.instance; 
  
  sendFromDataToDB(String name, int phone, String address, String gender) async {
    try {
      CollectionReference _course = FirebaseFirestore.instance.collection('user-form-data');
      _course.doc(_auth.currentUser!.email).set({
        'name': name,
        'phone' : phone,
        'address': address,
        'gender': gender,
      }).whenComplete(() {
        Fluttertoast.showToast(msg: 'Added Successfully');
        Get.toNamed(privacyPolicy);
      },
      );
    } catch (e){
      Fluttertoast.showToast(msg: 'error: $e');
    }
  }
}