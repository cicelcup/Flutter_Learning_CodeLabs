import 'package:fluttercodelabs/chat/chat_provider.dart';
import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:fluttercodelabs/web_app/star_counter_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getAppProviders() {
  return [
    ChangeNotifierProvider(
      create: (context) => FirstAppProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => ChatProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => StartCounterProvider(),
    ),
  ];
}
