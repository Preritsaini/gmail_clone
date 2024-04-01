
import 'package:flutter/material.dart';
import 'package:gmail_clone2/joiningpage.dart';
import 'package:gmail_clone2/main.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({Key? key}) : super(key: key);

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}
final PageController _pageController = PageController();
int _currentPage = 0;


List<String> images = [
  'https://i.ibb.co/RSMYMqv/Whats-App-Image-2024-03-29-at-7-51-24-PM.jpg',
  'https://i.ibb.co/HnTd99v/Whats-App-Image-2024-03-29-at-7-51-23-PM.jpg'
];

class _MeetingPageState extends State<MeetingPage> {

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
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu, size: 25),
                    ),
                  ),
                  Text(
                    'Meet',
                    style: TextStyle(fontSize: 20),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue[700],
                    child: Text(
                      'P',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {
                      showModalBottomSheet(context: context, builder: (BuildContext context){
                        return SizedBox(height: 220,
                          child: Column(
                            children: [
                              Row(children: [],),
                              SizedBox(height: 30),
                              ListTile(title: Text('Get a meeting link to share'),
                                leading: Icon(Icons.link),onTap: (){},),
                              ListTile(title: Text('Start an instant meeting'),
                                leading: Icon(Icons.videocam_outlined),onTap: (){},),
                              ListTile(title: Text('Schedule in Google Calender'),
                                leading: Icon(Icons.calendar_month_outlined),onTap: (){},)
                            ],
                          ),
                        );
                      });

                    },
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            'New Meeting',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> JoiningPage()));
                    },
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            'Join with code',
                            style: TextStyle(color: Colors.blue[700]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  controller: _pageController,
                  itemBuilder: (context, pagePosition) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      child: Image.network(images[pagePosition]),
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
                    ,color: Colors.grey),child: Text('  1 new  '),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.local_offer_outlined),
                title: Text('Promotions'),
                trailing: Container(alignment: AlignmentDirectional.center,width: 50,height: 24,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)
                    ,color: Colors.green[400]),child: Text('  31 new '),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_2_rounded),
                title: Text('Social'),
                trailing: Container(alignment: AlignmentDirectional.center,width: 50,height: 24,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)
                    ,color: Colors.blue[300]),child: Text('  10 new '),),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo[50],
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Badge(
                label: Text('99+'),
                child: Icon(Icons.mail_outline),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: '')),
                );
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.videocam_outlined),
              onPressed: () {},
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
