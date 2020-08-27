import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';
import 'package:fluttercodelabs/main/data/codelabs_list.dart';

//Main Screen
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStringsI18N.mainScreenAppBarTitle),
      ),
      body: ListView.builder(
          itemCount: codeLabsList.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                ListTile(
                  onTap: () =>
                      Navigator.pushNamed(context, codeLabsList[index].route),
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),
                  title: Text(
                    codeLabsList[index].title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                const Divider(),
              ],
            );
          }),
    );
  }
}
