import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tiket/src/features/authentification/screens/welcome/welcome_screen.dart';
import 'package:tiket/src/features/core/screens/dashboard/dashboard.dart';
import 'package:tiket/src/repository/authentification_repository/exceptions/signup_email_password_faild.dart';

class AuthentificationRepository extends GetxController{
  static AuthentificationRepository get instance=>Get.find();

  //variables
  final _auth=FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
    @override
  void onReady(){
  firebaseUser=Rx<User?>(_auth.currentUser);
  firebaseUser.bindStream(_auth.userChanges());
  ever(firebaseUser, _setInutialScreen);

  }
  _setInutialScreen(User? user){
  user== null? Get.offAll(()=>  WelcomePage()): Get.offAll(()=> const Dashboard());
  }

  // create user with email and password
  Future<void> createUserWithEmailAndPassword(String email,String password)async{
  try{
    await _auth.createUserWithEmailAndPassword(email: email, password: password );
    firebaseUser.value!=null ? Get.offAll(()=> const Dashboard()):Get.to(()=>  WelcomePage());
  } on FirebaseAuthException catch(e){
    final ex=SignUpWithEmailAndPasswordFailure(e.code);
    print('FIREBASE AUTH EXCEPTION - ${ex.message}');
    throw ex;

  }

  }
  //login with email and password
    Future<void> loginWithEmailAndPassword(String email,String password)async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    // ignore: empty_catches
    }on FirebaseAuthException catch(e){
      const ex=SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }

  }

  // logout
Future<void> logout() async => await _auth.signOut();
}