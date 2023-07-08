import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class AppConnectivityListenerService {
  final Connectivity _flutterNetworkConnectivity = Connectivity();

  Future<bool> isDeviceOnline() async {
    ConnectivityResult currentConnectionStatus =
        await _flutterNetworkConnectivity.checkConnectivity();
    if (currentConnectionStatus == ConnectivityResult.none) {
      return false;
    } else {
      return await checkInternetConnectivity();
    }
  }

  Future<bool> checkInternetConnectivity() async {
    var result = await InternetAddress.lookup('google.com');
    return (result.isNotEmpty && result[0].rawAddress.isNotEmpty);
  }

  Connectivity get flutterNetworkConnectivity => _flutterNetworkConnectivity;
}
