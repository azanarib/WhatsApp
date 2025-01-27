import 'package:flutter/material.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade500,
            foregroundColor: Colors.white,
            title: Text(
              'WhatsApp',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                child: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      'Your group',
                      style: TextStyle(
                        fontSize: 21,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      'setting',
                      style: TextStyle(
                        fontSize: 21,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text(
                      'log out',
                      style: TextStyle(
                        fontSize: 21,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(
                    Icons.camera_alt,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    'chat',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'status',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'call',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: TabBarView(
              children: [
                Center(
                  child: Text(
                    'Camera',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 63,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://d3e6ckxkrs5ntg.cloudfront.net/artists/images/2887676/original/resize:600x808/crop:x0y18w315h236/aspect:1.0/hash:1467366432/1398084193_10152120578712970_1701701876_n.jpg?1467366432',
                        ),
                      ),
                      title: Text('Maher Zain'),
                      subtitle: Text('last message: what are you doing'),
                      trailing: Text('06:10 pm'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 63,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3.0,
                              color: Colors.green,
                            )),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://d3e6ckxkrs5ntg.cloudfront.net/artists/images/2887676/original/resize:600x808/crop:x0y18w315h236/aspect:1.0/hash:1467366432/1398084193_10152120578712970_1701701876_n.jpg?1467366432'),
                        ),
                      ),
                      title: Text('Maher Zain'),
                      subtitle: Text('Maher zain update his status.'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 63,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://d3e6ckxkrs5ntg.cloudfront.net/artists/images/2887676/original/resize:600x808/crop:x0y18w315h236/aspect:1.0/hash:1467366432/1398084193_10152120578712970_1701701876_n.jpg?1467366432'),
                      ),
                      title: Text('Maher Zain'),
                      subtitle: index ~/ 2 >= 2
                          ? Text(
                              'you missed call.',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            )
                          : Text(
                              'you attempt call.',
                              style: TextStyle(color: Colors.lightGreen),
                            ),
                      trailing: index / 2 == 0
                          ? Icon(Icons.call)
                          : Icon(Icons.video_call),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
