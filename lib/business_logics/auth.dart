import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tour_application/ui/route/route.dart';

class Auth {
  final box = GetStorage();

  Future registration(String emailAddress, String password, context) async {
    try {
      UserCredential usercredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddress, password: password);

      var authCredential = usercredential.user;
      print(authCredential);
      if (authCredential!.uid.isNotEmpty) {
        Fluttertoast.showToast(msg: 'registration Successfull');
        box.write('uid', authCredential.uid);
        Get.toNamed(userForm);
      } else {
        print('Sign up failed');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error is : $e');
    }
  }

  Future login(emailAddress, password, context) async {
    try {
      UserCredential usercredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);

      var authCredential = usercredential.user;
      print(authCredential);
      if (authCredential!.uid.isNotEmpty) {
        Fluttertoast.showToast(msg: 'Login Successfull');
        Get.toNamed(mainHomeScreen);
      } else {
        print('Sign In faild');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error is : $e');
    }
  }
}
