import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_match_live_score_app_flutter/view/score_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Match List"),
      ),
      body: myList(),
    );
  }

  myList() => ListView(
        children: [
          ListTile(
            title: Text('Argentina vs Africa'),
            trailing: Icon(Icons.arrow_right_alt),
            onTap: () {
              Get.to(() => const ScoreScreen(
                    title: "Argentina vs Africa",
                    doc: 'argentina-vs-africa',
                  ));
            },
          ),
          ListTile(
            title: Text('Italy vs Spain'),
            trailing: Icon(Icons.arrow_right_alt),
            onTap: () {
              Get.to(() => const ScoreScreen(
                    title: "Italy-vs-Spain",
                    doc: 'italy-vs-spain',
                  ));
            },
          ),
          ListTile(
            title: Text('Brazil vs Portugal'),
            trailing: Icon(Icons.arrow_right_alt),
            onTap: () {
              Get.to(() => const ScoreScreen(
                    title: "Brazil-vs-Portugal",
                    doc: 'brazil-vs-portugal',
                  ));
            },
          ),
        ],
      );
}
