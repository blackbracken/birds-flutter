typedef Result<T> = ResultStrictly<T, Exception>;

sealed class ResultStrictly<T, E extends Exception> {
  const ResultStrictly();

  static ResultStrictly<T, Never> success<T>(T value) => Success(value);

  static ResultStrictly<Never, E> failure<E extends Exception>(E error) =>
      Failure(error);

  ResultStrictly<U, E> map<U>(U Function(T) mapping) => switch (this) {
        Success(value: final v) => Success(mapping.call(v)),
        Failure() => this,
        _ => throw UnimplementedError('Never supported dynamic types'),
      } as ResultStrictly<U, E>;

  T? getOrNull();

  bool isSuccess();

  ResultStrictly<T, E> onSuccess(void Function(T) predicate);

  ResultStrictly<T, E> onFailure(void Function(E) predicate);
}

class Success<T> extends ResultStrictly<T, Never> {
  const Success(this.value);

  final T value;

  @override
  T getOrNull() => value;

  @override
  bool isSuccess() => true;

  @override
  ResultStrictly<T, Never> onSuccess(void Function(T) predicate) {
    predicate.call(value);
    return this;
  }

  @override
  ResultStrictly<T, Never> onFailure(void Function(Never) predicate) => this;
}

class Failure<E extends Exception> extends ResultStrictly<Never, E> {
  const Failure(this.exception);

  final E exception;

  @override
  Never? getOrNull() => null;

  @override
  bool isSuccess() => false;

  @override
  ResultStrictly<Never, E> onSuccess(void Function(Never) predicate) => this;

  @override
  ResultStrictly<Never, E> onFailure(void Function(E) predicate) {
    predicate.call(exception);
    return this;
  }
}
