import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'dart:math';


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scholify',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),    );
  }
}



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(
      begin: 2.0,
      end: 0.0,
    ).animate(_controller);

    _controller.forward();

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _animation,
        child: Center(
          child: Image.asset('lib/assets/splash.png'),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CommunityPage(),
    HomePageContent(),
    ChatBotPage(),
    ReportPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,  //AppBar(
        //title: Text('Bottom Navigation Demo'),
      //),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat Bot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Report',
          ),
        ],
      ),
    );
  }
}







class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final List<ChatMessages> _messages = [
    ChatMessages(sender: 'Faiz', text: 'Hey, how was your first day at college?'),
    ChatMessages(sender: 'Akshit', text: 'It was great! Met some cool people.'),
    ChatMessages(sender: 'Shankar', text: 'Nice! I got lost on my way to class.'),
    ChatMessages(sender: 'Aayush', text: 'I slept through my first lecture 😅'),
    ChatMessages(sender: 'Faiz', text: 'Did you guys find the library?'),
    ChatMessages(sender: 'Akshit', text: 'Yeah, it\'s huge!'),
    ChatMessages(sender: 'Shankar', text: 'I need to buy some books.'),
    ChatMessages(sender: 'Aayush', text: 'Let\'s go together after class.'),
    ChatMessages(sender: 'Faiz', text: 'Sounds good!'),
    ChatMessages(sender: 'Akshit', text: 'I heard there\'s a party tonight.'),
    ChatMessages(sender: 'Shankar', text: 'We should go!'),
    ChatMessages(sender: 'Aayush', text: 'Definitely!'),
    ChatMessages(sender: 'Faiz', text: 'Let\'s meet at the hostel before heading out.'),
    ChatMessages(sender: 'Akshit', text: 'Hey, I found this cool study group. Anyone interested?'),
    ChatMessages(sender: 'Shankar', text: 'I\'m in!'),
    ChatMessages(sender: 'Aayush', text: 'Me too!'),
    ChatMessages(sender: 'Faiz', text: 'Count me in as well.'),
    ChatMessages(sender: 'Akshit', text: 'Great! I\'ll add us to the group chat.'),
    ChatMessages(sender: 'Shankar', text: 'Thanks, Akshit!'),
    ChatMessages(sender: 'Aayush', text: 'This is going to be so helpful.'),
  ];

  Map<String, Color> _senderColors = {};

  bool _isScrollingDown = false;
  ScrollController _scrollController = ScrollController();
  bool _isVisible = false;

  TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 0) {
        setState(() {
          _isVisible = true;
        });
      } else {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }

  Color _getSenderColor(String sender) {
    if (!_senderColors.containsKey(sender)) {
      final random = Random();
      _senderColors[sender] = Color((random.nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    }
    return _senderColors[sender]!;
  }

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.insert(0, ChatMessages(sender: 'You', text: message));
      });
      _textController.clear(); // Clear the text field
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Page'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            controller: _scrollController,
            reverse: true,
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  _messages[index].sender + ':',
                  style: TextStyle(
                    color: _isScrollingDown ? Colors.black : _getSenderColor(_messages[index].sender),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  _messages[index].text,
                  style: TextStyle(fontSize: 18.0),
                ),
              );
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onSubmitted: _sendMessage,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.attach_file),
                    onPressed: () {
                      // Handle attachment button press
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      _sendMessage(_textController.text);
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 86.0,
            right: 16.0,
            child: Visibility(
              visible: _isVisible,
              child: FloatingActionButton(
                backgroundColor: Colors.white.withOpacity(0.8),
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.position.minScrollExtent,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeOut,
                  );
                },
                child: Icon(Icons.arrow_downward),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessages {
  final String sender;
  final String text;

  ChatMessages({required this.sender, required this.text});
}



//************************************
//-----------------------------------
// From here the Home page starts
//-----------------------------------
//************************************


class HomePageContent extends StatelessWidget {
  final List<Scholarship> scholarships = [
    Scholarship(
      title: 'Engineering Excellence Scholarship',
      description:
      'This scholarship is awarded to students who demonstrate outstanding academic achievement, leadership qualities, and a passion for engineering.',
      amount: '\$5000',
    ),
    Scholarship(
      title: 'Women in Science Scholarship',
      description:
      'This scholarship is aimed at encouraging and supporting women pursuing careers in science. Recipients demonstrate academic excellence and a commitment to their field.',
      amount: '\$3000',
    ),
    Scholarship(
      title: 'Community Leadership Scholarship',
      description:
      'The Community Leadership Scholarship recognizes students who have made significant contributions to their communities through volunteer work and community service.',
      amount: '\$2000',
    ),
    Scholarship(
      title: 'Creative Arts Fellowship',
      description:
      'The Creative Arts Fellowship is awarded to students who demonstrate exceptional talent and creativity in the arts, including visual arts, music, and performing arts.',
      amount: '\$4000',
    ),
    Scholarship(
      title: 'Entrepreneurship Grant',
      description:
      'The Entrepreneurship Grant is awarded to students who have demonstrated entrepreneurial spirit and a desire to start their own business or innovate in their field.',
      amount: '\$2500',
    ),
    Scholarship(
      title: 'Global Studies Scholarship',
      description:
      'The Global Studies Scholarship is awarded to students who have shown a commitment to global issues and understanding through their studies and extracurricular activities.',
      amount: '\$3500',
    ),
    Scholarship(
      title: 'Social Sciences Excellence Scholarship',
      description:
      'This scholarship recognizes students who have excelled in the field of social sciences, demonstrating academic excellence and a commitment to making a positive impact on society.',
      amount: '\$3000',
    ),
    Scholarship(
      title: 'Healthcare Innovation Scholarship',
      description:
      'The Healthcare Innovation Scholarship is awarded to students who have shown innovative thinking and a passion for improving healthcare systems and services.',
      amount: '\$4000',
    ),
    Scholarship(
      title: 'Environmental Conservation Grant',
      description:
      'The Environmental Conservation Grant is awarded to students who have demonstrated a commitment to environmental conservation and sustainability.',
      amount: '\$2500',
    ),
    Scholarship(
      title: 'Digital Technology Scholarship',
      description:
      'This scholarship is aimed at students who have shown exceptional skills and innovation in the field of digital technology, including computer science and information technology.',
      amount: '\$3500',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        itemCount: scholarships.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              title: Text(
                scholarships[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: Text(
                scholarships[index].description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(
                scholarships[index].amount,
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Scholarship {
  final String title;
  final String description;
  final String amount;

  Scholarship({required this.title, required this.description, required this.amount});
}

//************************************
//-----------------------------------
// From here the chatbot page starts
//-----------------------------------
//************************************

class ChatBotPage extends StatefulWidget {
  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  final List<ChatMessage> _messages = [];

  TextEditingController _controller = TextEditingController();

  void _addMessage(String text) {
    setState(() {
      _messages.insert(0, ChatMessage(text: text, isUser: true));
    });
    _controller.clear();
    _sendMessage(text);
  }

  void _sendMessage(String text) {
    // Simulate a bot reply after a short delay
    Future.delayed(Duration(milliseconds: 500), () {
      String reply = "Thanks for your message! How can I assist you?";
      setState(() {
        _messages.insert(0, ChatMessage(text: reply, isUser: false));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Bot'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: _messages[index].isUser
                        ? null
                        : Icon(Icons.android, color: Colors.green),
                    title: Text(
                      _messages[index].text,
                      style: TextStyle(
                        color: _messages[index].isUser ? Colors.black : Colors.green,
                      ),
                    ),
                    tileColor: _messages[index].isUser ? Colors.blueAccent : Colors.grey.shade200,
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        border: InputBorder.none,
                      ),
                      onSubmitted: _addMessage,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _addMessage(_controller.text),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});
}
//************************************
//-----------------------------------
// From here the Report page starts
//-----------------------------------
//************************************




class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isButtonBlue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            onChanged: () {
              setState(() {
                _isButtonBlue = _formKey.currentState!.validate();
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Report a Person or Organization',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Your Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name of the Person/Organization to Report'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the name of the person/organization';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Position in the Organization (if applicable)'),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Crime Details'),
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the crime details';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name of the Organization (if applicable)'),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Your Contact Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your contact email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Your Contact Number'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your contact number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                Text('Upload Photo Proof (optional)'),
                ElevatedButton(
                  onPressed: () {
                    // Add file upload logic
                  },
                  child: Text('Upload'),

                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _isButtonBlue
                      ? () {
                    // Submit logic here
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Report Submitted'),
                          content: Text('Your report is now in review. You may receive further communication regarding this.'),
                          actions: [
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.grey; // Disabled color
                        }
                        return Colors.blue; // Enabled color
                      },
                    ),
                  ),
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
