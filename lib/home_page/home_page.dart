import 'package:advance_flutter_exam/main.dart';
import 'package:advance_flutter_exam/provider/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  late NewsProvider providerW;
  late NewsProvider providerR;
  @override
  Widget build(BuildContext context) {
  providerR = context.read<NewsProvider>();
  providerW = context.watch<NewsProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
      ),
    );
  }
}
