sealed class CreateUserException implements Exception {
  const CreateUserException();
}

class CreateUserEmailAlreadyExistsException extends CreateUserException {
  const CreateUserEmailAlreadyExistsException();
}

class CreateUserOtherwiseException extends CreateUserException {
  const CreateUserOtherwiseException(this.exception);

  final Exception exception;
}
