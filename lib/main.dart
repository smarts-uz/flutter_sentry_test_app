import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://ae25336f8d7f7ae39974f3c679f2a370@o4505634390212608.ingest.sentry.io/4505634411249664';
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () => throw Exception('Intentional Exception Message'),
            child: const Text('Throw Exception'),
          ),
        ),
      ),
    );
  }
}
