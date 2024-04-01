import 'package:flutter/material.dart';
import 'package:gmail_clone2/compose.dart';
import 'package:gmail_clone2/meet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textController = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Builder(
                      builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(Icons.menu),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          controller: _textController,
                          decoration: InputDecoration(
                            hintText: 'Search in emails',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              insetPadding: EdgeInsets.all(10),
                              backgroundColor: Colors.indigo[50],
                              actionsPadding: EdgeInsets.all(5),
                              actions: [
                                Row(
                                  children: [
                                    IconButton(onPressed: (){
                                      Navigator.pop(context);
                                    }, icon: Icon(Icons.close,size: 20,),),
                                    SizedBox(width: 80),
                                    Container(child: Row(
                                      children: [
                                        Text('G',style: TextStyle(color: Colors.blue,fontSize: 20),),
                                        Text('o',style: TextStyle(color: Colors.red,fontSize: 20),),
                                        Text('o',style: TextStyle(color: Colors.yellow,fontSize: 20),),
                                        Text('g',style: TextStyle(color: Colors.blue,fontSize: 20),),
                                        Text('l',style: TextStyle(color: Colors.green,fontSize: 20),),
                                        Text('e',style: TextStyle(color: Colors.red,fontSize: 20),),
                                      ],
                                    ))
                                  ],),
                                Container(
                                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text('Prerit Saini',style: TextStyle(fontWeight:
                                        FontWeight.bold,fontSize: 13),),
                                        subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('preritsaini960@gmail.com',style: TextStyle(fontSize: 11),),
                                            SizedBox(height: 15),
                                            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(
                                                width: 1,color: Colors.grey
                                            )),child: Text('  Google Account  '),),
                                          ],
                                        ),
                                        trailing: Text('99+'),
                                        leading: Column(
                                          children: [
                                            CircleAvatar(radius: 17,backgroundColor: Colors.blue,child: Text('P',style: TextStyle(
                                                color: Colors.white,fontSize: 18
                                            ),),),
                                          ],
                                        ),
                                        onTap: (){},
                                      ),
                                      Divider(color: Colors.indigo[50],),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(child: Row(children: [
                                          SizedBox(width: 13),
                                          Icon(Icons.cloud_outlined,size: 15,),
                                          SizedBox(width: 20),
                                          Text('Storage used: 4% of 15 GB',style: TextStyle(fontSize: 12),)
                                        ],),),
                                      ),
                                      Divider(color: Colors.indigo[50],),
                                      ListTile(title: Text('Abc Def',style: TextStyle(
                                          fontSize: 13,fontWeight: FontWeight.bold
                                      ),),subtitle: Text('abcdefghji123@gmail.com',style: TextStyle(fontSize: 11),),
                                        trailing: Text('99+'),
                                        leading: CircleAvatar(radius: 17,backgroundColor: Colors.orange,child: Text('A',
                                          style: TextStyle(fontSize:18,color: Colors.white),),),),
                                      ListTile(title: Text('Add another account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                                        leading: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.person_add_alt),
                                        ), onTap: (){},),
                                      ListTile(title: Text('Manage accounts on this device',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                                        leading: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.person_2_outlined),
                                        ),
                                        onTap: (){},),

                                    ],
                                  ),

                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(onPressed: (){}, child: Text('Privacy policy',style: TextStyle(color: Colors.black,fontSize: 10),)),
                                    Icon(Icons.circle,size: 6,),
                                    TextButton(onPressed: (){}, child: Text('Terms of service',style: TextStyle(color: Colors.black,fontSize: 10),)),

                                  ],)
                              ],
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.blue[700],
                          radius: 16,
                          child: Text(
                            'P',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 5),
                  Text(
                    'Primary',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(headings[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                subtitle[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(secondSubtitle[index]),
                            ],
                          ),
                        ],
                      ),
                      leading: Column(
                        children: [
                          CircleAvatar(
                              backgroundColor: avatarColors[index],
                              radius: 20,
                              child: Text(avatarText[index],style: TextStyle(color: Colors.white,fontSize: 22),)
                          ),
                        ],
                      ),
                      trailing: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(dates[index]),
                          Icon(Icons.star_outline),
                        ],
                      ),
                      onTap: () {
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.indigo[50],
          child: ListView(
            padding: EdgeInsets.all(5.0),
            children: [
              ListTile(
                title: Text(
                  'Gmail',
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ),
              ),
              Divider(height: 1),
              ListTile(
                leading: Icon(Icons.library_books_outlined),
                title: Text('All inbox'),
                onTap: () {},
              ),
              Divider(height: 1),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text('Primary'),
                trailing: Container(alignment: AlignmentDirectional.center,width: 50,height: 24,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)
                    ,color: Colors.grey),child: Text('   1 new     ',style: TextStyle(fontSize: 10),),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.local_offer_outlined),
                title: Text('Promotions'),
                trailing: Container(alignment: AlignmentDirectional.center,width: 50,height: 24,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)
                    ,color: Colors.green[400]),child: Text('  31 new ',style: TextStyle(fontSize:10 ),),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.people_alt_outlined),
                title: Text('Social'),
                trailing: Container(alignment: AlignmentDirectional.center,width: 50,height: 24,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)
                    ,color: Colors.blue[300]),child: Text('  10 new ',style: TextStyle(fontSize: 10),) ,),
                onTap: () {},
              ),
              Row(
                children: [SizedBox(width: 14),
                  Text('All lables',style: TextStyle(fontSize: 12),),
                ],
              ),
              ...List.generate(
                icons.length,
                    (index) => ListTile(
                  leading: Icon(icons[index]),
                  title: Text(title[index]),
                  trailing: Text(trailing[index]),
                  onTap: () {},
                ),
              ),
              Row(
                children: [SizedBox(width: 14),
                  Text('Google apps',style: TextStyle(fontSize: 12),),
                ],
              ),
              ListTile(
                leading: Icon(Icons.calendar_month_outlined),
                title: Text('Calendar'),),
              ListTile(
                leading: Icon(Icons.account_circle_outlined),
                title: Text('Contacts'),),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),),
              ListTile(
                leading: Icon(Icons.question_mark_rounded),
                title: Text('Help and feedback'),)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => composePage()));

        },
        label: Text('compose'),
        icon: Icon(Icons.create),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo[50],
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Badge(label: Text('99+'),
                  child: Icon(Icons.mail_outline)),
              onPressed: () {},
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.videocam_outlined),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => MeetingPage()));
              },
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

      ),
    );
  }
  List<String> trailing = [
    '','','3','','','','','243','2','',
  ];

  List<IconData> icons = [
    Icons.star_outline,
    Icons.watch_later_outlined,
    Icons.label_important_outline,
    Icons.send,
    Icons.send_and_archive_outlined,
    Icons.outbox_outlined,
    Icons.drafts_outlined,
    Icons.mail_outline,
    Icons.report_gmailerrorred,
    Icons.delete_outline,

  ];

  List<String> title = [
    "Starred",
    "Snoozed",
    "Important",
    "Sent",
    "Scheduled",
    "Outbox",
    "Drafts",
    "All mails",
    "Spam",
    "Bin",
  ];
  List<String> headings = ['Google Account','Shiksha','Youtube','Amrita school of engi...','Google Play','Google',
    'Xtremex','Fuark',' AthFlex','Hotstar'];
  List<String> subtitle =['Pass the blood test','Regarding admission in C.','Subcription Expiry is ','Your Admission is',
    'Ammount has received','This is trending','Thanks for the purchase','New session dropped','New range LIVE','Your login code is'];
  List<String> secondSubtitle =['... with Flying colours','welcoming the students w...','the annual subcription h...',
    'admission form sent to the a..','purchase of uc c...','these news are all over..','You will be notified as soon as',
    'the new winter session is...','Here is the time of shopping','login to your account'];
  List<String> avatarText = ['G ','S','Y','A','G','G','X','F','A','H'];
  List<String> dates = [ '28 Mar','19 Mar','17 Mar','12 Mar','3 Mar','10 Feb','8 Feb','3 Feb','1 Feb','12 Jan'];
  List<Color> avatarColors =[Colors.lightBlueAccent,Colors.orange,Colors.orangeAccent,Colors.blue,Colors.purple,
    Colors.pink,Colors.redAccent,Colors.green,Colors.lightBlue,Colors.teal];
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
