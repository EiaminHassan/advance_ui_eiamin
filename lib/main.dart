import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06AdvanceUI());
}

class Lab06AdvanceUI extends StatelessWidget {
  const Lab06AdvanceUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Advance Flutter UI",
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.settings,size: 25,color: Colors.black,),
                    Icon(Icons.access_alarm_sharp,size: 25,color: Colors.blueAccent,)
                  ],
                )),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text("Images"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {},
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("ADvance UI"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "https://plus.unsplash.com/premium_photo-1683910767532-3a25b821f7ae?q=80&w=2008&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                CachedNetworkImage(
                  imageUrl:
                      "https://images.unsplash.com/photo-1626808642875-0aa545482dfb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ],
            ),
          ),
        ));
  }
}
