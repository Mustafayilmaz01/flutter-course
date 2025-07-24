import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:full_learn/202/package/loading_bar.dart';
import 'package:full_learn/demos/password_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin {
  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _launchUrl('https://flutter.dev');
        },
        child: Icon(Icons.open_in_browser),
      ),
      body: Column(
        children: [
          PasswordTextField(),
          Card(margin: EdgeInsets.all(8.00), child: LoadingBar()),
        ],
      ),
    );
  }
}
