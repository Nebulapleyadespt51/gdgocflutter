import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // START APPBAR
        backgroundColor: Colors.blue,
        title: const Text(
          'Facebook',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        automaticallyImplyLeading: false
        // END APPBAR
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            // STORY
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/person.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/person.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/person.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/person.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/person.png"),
                    ),
                  ),
                ],
              ),
            ),

            // POST
            Column(
              children: [
                // header post
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/person.png"),
                    ),
                    Text("User Name"),
                  ],
                ),
                // content post
                Image.asset("assets/person.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}