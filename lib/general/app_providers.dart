import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:provider/provider.dart';

List<ChangeNotifierProvider<FirstAppProvider>> getAppProviders() {
  return [
    ChangeNotifierProvider(
      create: (_) => FirstAppProvider(),
    ),
  ];
}
