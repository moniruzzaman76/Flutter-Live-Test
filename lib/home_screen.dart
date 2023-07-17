import 'package:flutter/material.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Responsive'),
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return ListView.separated(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return  Column(
                  children: [
                    Container(
                      height: size.height / 5,
                      width: size.width,
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.grey,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Center(
                              child: Text(
                                  "${size.height.round()} x ${size.width.round()}")),
                        ),
                      ),
                    )
                  ],
                );
              }, separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 1,
                );
            },
            );
          },
        ));
  }
}
