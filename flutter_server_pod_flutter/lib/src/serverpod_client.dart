import 'package:flutter_server_pod_client/flutter_server_pod_client.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

late SessionManager sessionManager;
late Client client;

Future<void> initializeServerpodClient() async {
  const ipAddress = '192.168.42.159';

  client = Client(
    'http://$ipAddress:8080/',
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();

  sessionManager = SessionManager(
    caller: client.modules.auth,
  );

  await sessionManager.initialize();
}
