import 'package:flutter/material.dart';

class JoiningPage extends StatefulWidget {
  const JoiningPage({super.key});

  @override
  State<JoiningPage> createState() => _JoiningPageState();
}

class _JoiningPageState extends State<JoiningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(children: [
            Row(children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_rounded)),
              Text('Join with a code',style: TextStyle(fontSize: 20),),
              SizedBox(width: 80),
              TextButton(onPressed: (){}, child: Text('Join'))
            ],),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 10),
                Text('Enter a code provided by the meeting organizer.'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Example- abc-mnop-xyz ',fillColor: Colors.indigo[50],filled: true,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container( height: 30,margin: EdgeInsets.all(5),
                    alignment: Alignment.center,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5),
                        Icon(Icons.keyboard_outlined,size: 16,),
                        SizedBox(width: 10),
                        Text("Rejoin 'stq-wuaj-tam'"),
                        SizedBox(width: 10),
                      ],
                    ),),
                ],
              ),
            )
          ],),
        ),
      ),
    );
  }
}
