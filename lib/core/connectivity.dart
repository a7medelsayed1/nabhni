import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

class ConnectivityController {
  ConnectivityController._();

  static final ConnectivityController instance = ConnectivityController._();
  ValueNotifier<bool> isOnline = ValueNotifier(true); //false>
  Future<void> checkConnection() async {
    final result = await Connectivity().checkConnectivity();
    isConnected(result.first);
    // Connectivity().onConnectivityChanged.listen(isConnected as void Function(ConnectivityResult result));
  } //false>

  bool isConnected(ConnectivityResult? result) {
    if (result == ConnectivityResult.none) {
      isOnline.value = false;
      return false;
    } else if (result == ConnectivityResult.wifi || result == ConnectivityResult.mobile) {
      isOnline.value = true;
      return true;
    }
    return false;
  }
}
