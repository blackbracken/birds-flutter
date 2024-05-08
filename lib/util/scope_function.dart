extension ScopeFunction<T> on T {
  R let<R>(R Function(T) block) => block.call(this);

  T? takeIf(bool Function(T) filter) => filter.call(this) ? this : null;
}
