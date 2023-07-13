part of base_network;

class ApiNet extends GetConnect {
  @override
  GetHttpClient get httpClient => GetHttpClient(
        baseUrl: ApiConst.baseUrl,
        allowAutoSignedCert: true,
        timeout: const Duration(minutes: 1),
      );

  Future<bool> get _checkInternet async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        hideIndicator();
        'No internet connection'.showNetworkSnackBar;
        return false;
      }
    } on SocketException catch (_) {
      hideIndicator();
      'No internet connection'.showNetworkSnackBar;
      return false;
    }
  }

  Future<dynamic> generalGet(
    String url, {
    bool header = true,
    bool showError = true,
    Map<String, String>? query,
  }) async {
    final isNet = await _checkInternet;
    if (isNet) {
      final result = await get(url, query: query);
      'REQUEST:: ${result.request?.url}'.toHttpLog;
      if (result.statusCode == 200 || result.statusCode == 201) {
        'RESPONSE:: ${result.request?.url}::${result.body}'.toHttpLog;
        return result.body;
      } else {
        hideIndicator();

        'RESPONSE:: ${result.request?.url}::${result.body}'.toHttpLog;

        Map map = result.body;
        String message = map['message'];
        if (showError) {
          message.showErrorSnackBar;
        }
        return null;
      }
    } else {
      return null;
    }
  }
}
