// 差し替え可能な時刻提供クラス
class Clock {
  DateTime nowLocal() => DateTime.now();

  DateTime nowUtc() => DateTime.now().toUtc();
}
