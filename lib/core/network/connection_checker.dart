import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract interface class ConnectionChecker {
  Future<bool> isConnected();
}

class ConnectionCheckerImpl implements ConnectionChecker {
  final InternetConnection internetConnection;

  const ConnectionCheckerImpl(this.internetConnection);

  @override
  Future<bool> isConnected() async =>
      await internetConnection.hasInternetAccess;
}
