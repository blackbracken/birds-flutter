sealed class Result<T, E extends Exception> {
  const Result();

  static Result<T, Never> success<T>(T value) {
    return Success(value);
  }

  static Result<Never, E> failureSpecified<E extends Exception>(E error) {
    return Failure(error);
  }

  static Result<Never, Exception> failure(Exception error) {
    return Failure(error);
  }

  Result<U, E> map<U>(U Function(T) mapping) {
    Success(1);

    return switch (this) {
      Success(value: var v) => Success(mapping.call(v)),
      Failure(exception: var e) => Failure(e),
      _ => throw UnimplementedError("Never supported dynamic types"),
    } as Result<U, E>;
  }

  T? getOrNull();
}

class Success<T> extends Result<T, Never> {
  const Success(this.value);

  final T value;

  @override
  T getOrNull() {
    return this.value;
  }
}

class Failure<E extends Exception> extends Result<Never, E> {
  const Failure(this.exception);

  final E exception;

  @override
  Never? getOrNull() {
    return null;
  }
}
