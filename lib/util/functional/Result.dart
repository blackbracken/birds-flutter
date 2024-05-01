typedef Result<T> = ResultStrictly<T, Exception>;

sealed class ResultStrictly<T, E extends Exception> {
  const ResultStrictly();

  static ResultStrictly<T, Never> success<T>(T value) {
    return Success(value);
  }

  static ResultStrictly<Never, E> failure<E extends Exception>(E error) {
    return Failure(error);
  }

  ResultStrictly<U, E> map<U>(U Function(T) mapping) {
    Success(1);

    return switch (this) {
      Success(value: var v) => Success(mapping.call(v)),
      Failure(exception: var e) => Failure(e),
      _ => throw UnimplementedError("Never supported dynamic types"),
    } as ResultStrictly<U, E>;
  }

  T? getOrNull();
}

class Success<T> extends ResultStrictly<T, Never> {
  const Success(this.value);

  final T value;

  @override
  T getOrNull() {
    return this.value;
  }
}

class Failure<E extends Exception> extends ResultStrictly<Never, E> {
  const Failure(this.exception);

  final E exception;

  @override
  Never? getOrNull() {
    return null;
  }
}
