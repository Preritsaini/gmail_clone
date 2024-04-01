import 'package:flutter/material.dart';

class composePage extends StatefulWidget {
  const composePage({super.key});

  @override
  State<composePage> createState() => _composePageState();
}

class _composePageState extends State<composePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.attachment_outlined)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.send_outlined)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert_outlined)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  height: 50,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text("From"),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "preritsaini960@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(width: 25),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 30,
                          ))
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  height: 300,
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 360,
                        height: 40,
                        child: Row(
                          children: [
                            Text("To"),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none),
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                      Flexible(child: Divider()),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Subject"),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      Text("Compose Email"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
