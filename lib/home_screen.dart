import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {

    bool isPortrait = MediaQuery.orientationOf(context) == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Flex(
                      direction: isPortrait ? Axis.horizontal : Axis.vertical,
                      children: [
                        Expanded(
                          flex: isPortrait ? 3 : 5,
                          child: Image.network('https://resources.pulse.icc-cricket.com/ICC/photo/2023/03/14/bacdca20-b066-4f8f-968e-66972d6a2623/Shakib-fielding.jpg',
                            width: MediaQuery.sizeOf(context).width * 0.40,
                          ),
                        ),
                        Expanded(
                          flex: isPortrait ? 3 : 2,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Shakib All Hasan',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10,),
                                Text('Greatest All rounder of all time in bangladesh',
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          )
      ),
    );
  }
}