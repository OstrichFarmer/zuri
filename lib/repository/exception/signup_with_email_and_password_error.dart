class SignupWithEmailAndPasswordFailure {
  final String message;

  const SignupWithEmailAndPasswordFailure(
      [this.message = "An unknown error occured"]);

  factory SignupWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignupWithEmailAndPasswordFailure(
            'please return a stronger password');
      case 'email-invalid':
        return const SignupWithEmailAndPasswordFailure(
            'Email is not valid or badly formatted');

      case 'email-already-in-use':
        return const SignupWithEmailAndPasswordFailure(
            'An account already exist for this email');

      case 'operation-not-allowed':
        return const SignupWithEmailAndPasswordFailure(
            'Operation is not allowed, please contact support');

      case 'user-disabled':
        return const SignupWithEmailAndPasswordFailure(
            'This user have been disabled, contact support for assistance');
      default:
        return const SignupWithEmailAndPasswordFailure();
    }
  }
}
