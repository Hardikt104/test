part of base_ext;

extension ObjectExtension on Object? {
  /// Log in debug mode
  void get toLog {
    if (kDebugMode) {
      print('[x]::HYLL::LOG:: $this');
    }
  }

  void get toHttpLog {
    if (kDebugMode) {
      print('[x]::HYLL::HTTP:: $this');
    }
  }

  void get toErrorLog {
    if (kDebugMode) {
      print('[x]::HYLL::ERROR:: $this');
    }
  }
}
