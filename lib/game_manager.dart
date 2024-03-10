import 'dart:async';

class GameManager {
  // =============singleton=============
  static final GameManager _instance = GameManager._internal();

  factory GameManager() {
    return _instance;
  }

  GameManager._internal();

  // =============singleton=============

  final _durationController = StreamController<Duration>();
  final _stopwatch = Stopwatch();
  Timer? _timer;

  Stream<Duration> get durationStream => _durationController.stream;

  void start() {
    _stopwatch.start();
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      _durationController.add(_stopwatch.elapsed);
    });
  }

  void finish() {
    _stop();
  }

  void _stop() {
    _stopwatch.stop();
    _timer?.cancel();
    _durationController.add(_stopwatch.elapsed);
  }

  Duration scoreDuration() {
    return _stopwatch.elapsed;
  }
}
