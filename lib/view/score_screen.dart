import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({
    super.key,
    required this.title,required this.doc,
  });

  final title;
  final doc;

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('matches')
              .doc(widget.doc)
              // .collection('abs')
              // .doc('dfdf')
              // .collection('abs')
              // .doc('dfdf')
              // .collection('abs')
              // .doc('dfdf')
              // .collection('abs')
              // .doc('dfdf')
              // .collection('abs')
              // .doc('dfdf')
              .snapshots(),
          builder:
              (context, AsyncSnapshot<DocumentSnapshot<Object?>> snapshot) {
            print(snapshot.data?.data());
            if (snapshot.hasData) {
              final score = snapshot.data!;
              return Container(
                alignment: Alignment.topCenter,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          score.get('match-name'),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          score.get('score').toString(),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Time: ${score.get('played-time').toString()}",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Total Time: ${score.get('total-time').toString()}",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
