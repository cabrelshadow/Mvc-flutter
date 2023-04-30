class SignUpWithEmailAndPasswordFailure{
  final String message;
  const SignUpWithEmailAndPasswordFailure([this.message="An Unknown error occured ."]);
  factory SignUpWithEmailAndPasswordFailure.code(String code){
switch(code){
  case 'weake-password':
    return SignUpWithEmailAndPasswordFailure('please entrer a stronger password');
  case 'invalid-email':
    return const SignUpWithEmailAndPasswordFailure('Email is not valid or baly formated');
  case 'email-already-in-use':
    return const SignUpWithEmailAndPasswordFailure('An account already exists for this email');
  case 'operation-not-allowed':
    return const SignUpWithEmailAndPasswordFailure('Operation is not allowed. Please contact support');
  case 'user-desabled':
      return const SignUpWithEmailAndPasswordFailure('this user has been disabled. please contact support for help.');

  default:return SignUpWithEmailAndPasswordFailure();
   }
  }
}