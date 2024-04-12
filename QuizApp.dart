import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Quiz-UP",
          style: GoogleFonts.manrope(
              color: Color.fromARGB(255, 23, 71, 25),
              fontStyle: FontStyle.italic,
              fontSize: 35,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color.fromARGB(255, 165, 218, 40),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 165, 218, 40),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                    color: Color.fromARGB(255, 23, 71, 25),
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Info'),
              onTap: () {
                print("Tapped on Home");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://as1.ftcdn.net/v2/jpg/05/48/67/90/1000_F_548679098_winiISnSIBGXXDG0x7OfjRF2u5nasPny.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: Color.fromARGB(180, 23, 71, 25),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.4,
                      MediaQuery.of(context).size.height * 0.25,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Maths',
                      style: TextStyle(
                          fontSize: 23.0,
                          color: Color.fromARGB(255, 165, 218, 40),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Physics(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: Color.fromARGB(180, 23, 71, 25),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.4,
                      MediaQuery.of(context).size.height * 0.25,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Physics',
                      style: TextStyle(
                          fontSize: 23.0,
                          color: Color.fromARGB(255, 165, 218, 40),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Chemistry(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: Color.fromARGB(180, 23, 71, 25),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.4,
                      MediaQuery.of(context).size.height * 0.25,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Chemistry',
                      style: TextStyle(
                          fontSize: 23.0,
                          color: Color.fromARGB(255, 165, 218, 40),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Biology(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: Color.fromARGB(180, 23, 71, 25),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.4,
                      MediaQuery.of(context).size.height * 0.25,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 20),
                    child: Text(
                      'Biology',
                      style: TextStyle(
                          fontSize: 23.0,
                          color: Color.fromARGB(255, 165, 218, 40),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60.0),
            const Center(
              child: Text(
                  '"Quizzes are the gentle nudge that keeps our curiosity alive."',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }

  //Function get newMethod => GoogleFonts.acme;
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About Quiz-UP",
          style: TextStyle(
              color: Color.fromARGB(255, 23, 71, 25),
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 165, 218, 40),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        foregroundDecoration: BoxDecoration(
            color: Color.fromARGB(99, 23, 71, 25),
            borderRadius: BorderRadius.circular(0)),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.eduTasBeginner(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                  text: "Quiz-UP: The Ultimate Knowledge Challenge!",
                  style: TextStyle(color: Color.fromARGB(255, 243, 247, 15)),
                  //textAlign: TextAlign.center,
                ),
                TextSpan(
                  text:
                      "\n\nWelcome to QuizMaster, your go-to destination for a thrilling knowledge adventure! Whether you're a science buff, math wizard, or just curious about the world, QuizMaster has something for everyone. \n\n",
                ),
                TextSpan(
                  text:
                      "Key Features:\n🧠 Diverse Topics: Explore a variety of subjects, from general knowledge to specific subjects like Maths, Physics, Chemistry, and Biology.\n🌐 Interactive Learning: Test your knowledge with thought-provoking questions and learn interesting facts along the way.\n🏆 Compete and Improve: Challenge yourself to beat your high score or compete with friends to see who's the ultimate QuizMaster.\n🌈 Stunning Visuals: Immerse yourself in a visually appealing interface, accompanied by beautiful backgrounds that make learning a delightful experience.\n🔥 Endless Fun: With a library of questions and regular updates, the fun never ends. Discover new facts and expand your knowledge with each quiz.\n\n",
                ),
                TextSpan(
                  text:
                      "How to Play:\n1.Choose your preferred category: Maths, Physics, Chemistry, or Biology.\n2.Answer a series of engaging questions with multiple-choice options.\n3.Test your skills, earn points, and see how you stack up against others.\n\n",
                ),
                TextSpan(
                  text:
                      "Why Quiz-Up?\n1.Engaging and educational for all ages.\n2.Perfect for individual learning or friendly competitions.\n3.Stay sharp and boost your knowledge in a fun and interactive way.\n\n",
                ),
                TextSpan(
                  text:
                      "Ready to become the QuizMaster? Embark on this exciting journey of discovery and challenge your intellect like never before!",
                ),
              ],
            ),
            //textAlign: TextAlign.center,
          ),
        ),
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(
        //         "https://as1.ftcdn.net/v2/jpg/05/48/67/90/1000_F_548679098_winiISnSIBGXXDG0x7OfjRF2u5nasPny.jpg"),
        //     fit: BoxFit.cover,
        //     // colorFilter: ColorFilter.mode(Colors.white, BlendMode.color)
        //   ),
        // ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _score = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      'questionText': '2x + 5 = 11',
      'answers': [
        {'text': 'x=3', 'isCorrect': true},
        {'text': 'x=4', 'isCorrect': false},
        {'text': 'x=1', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'Calculate 15% of 80',
      'answers': [
        {'text': '8', 'isCorrect': false},
        {'text': '12', 'isCorrect': true},
        {'text': '16', 'isCorrect': false},
      ],
    },
    {
      'questionText':
          'If a train travels at a speed of 60 miles per hour, how far will it travel in 3 hours?',
      'answers': [
        {'text': '120', 'isCorrect': false},
        {'text': '180', 'isCorrect': true},
        {'text': '90', 'isCorrect': false},
      ],
    },
  ];

  void _answerQuestion(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        _score++;
      }
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ready, Set, Quiz!',
          style: TextStyle(color: Color.fromARGB(255, 23, 71, 25)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 165, 218, 40),
      ),
      body: Center(
        child: _questionIndex < _questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _questions[_questionIndex]['questionText'],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 218, 40),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ...(_questions[_questionIndex]['answers']
                          as List<Map<String, dynamic>>)
                      .map((answer) {
                    return Answer(
                      answer['text'],
                      () => _answerQuestion(answer['isCorrect']),
                    );
                  }).toList(),
                ],
              )
            : Result(_score, _questions.length, _resetQuiz),
      ),
      backgroundColor: Color.fromARGB(255, 23, 71, 25),
    );
  }
}

class Physics extends StatefulWidget {
  @override
  _Physics createState() => _Physics();
}

class _Physics extends State<Physics> {
  int _questionIndex = 0;
  int _score = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      'questionText': 'What is force?',
      'answers': [
        {'text': 'The speed of an object', 'isCorrect': false},
        {
          'text': 'A push or pull that can cause an object to move',
          'isCorrect': true
        },
        {'text': 'The weight of an object', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'What force keeps us on the ground?',
      'answers': [
        {'text': 'Light force', 'isCorrect': false},
        {'text': 'Magnet force', 'isCorrect': false},
        {'text': 'Gravity', 'isCorrect': true},
      ],
    },
    {
      'questionText': 'What is the unit of measurement for force?',
      'answers': [
        {'text': ' Watts', 'isCorrect': false},
        {'text': 'Volts', 'isCorrect': false},
        {'text': 'Newtons', 'isCorrect': true},
      ],
    },
  ];

  void _answerQuestion(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        _score++;
      }
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ready, Set, Quiz!'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 165, 218, 40),
      ),
      body: Center(
        child: _questionIndex < _questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _questions[_questionIndex]['questionText'],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 218, 40),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ...(_questions[_questionIndex]['answers']
                          as List<Map<String, dynamic>>)
                      .map((answer) {
                    return Answer(
                      answer['text'],
                      () => _answerQuestion(answer['isCorrect']),
                    );
                  }).toList(),
                ],
              )
            : Result(_score, _questions.length, _resetQuiz),
      ),
      backgroundColor: Color.fromARGB(255, 23, 71, 25),
    );
  }
}

class Chemistry extends StatefulWidget {
  @override
  _Chemistry createState() => _Chemistry();
}

class _Chemistry extends State<Chemistry> {
  int _questionIndex = 0;
  int _score = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      'questionText': 'Which of these is a liquid?',
      'answers': [
        {'text': 'Rock', 'isCorrect': false},
        {'text': 'Water', 'isCorrect': true},
        {'text': 'Wood', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'What is the chemical symbol for water?',
      'answers': [
        {'text': 'O2', 'isCorrect': false},
        {'text': 'CO2', 'isCorrect': false},
        {'text': 'H2O', 'isCorrect': true},
      ],
    },
    {
      'questionText': 'Which of the following is a gas?',
      'answers': [
        {'text': 'Iron', 'isCorrect': false},
        {'text': 'Oxygen', 'isCorrect': true},
        {'text': 'Wood', 'isCorrect': false},
      ],
    },
  ];

  void _answerQuestion(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        _score++;
      }
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ready, Set, Quiz!'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 165, 218, 40),
      ),
      body: Center(
        child: _questionIndex < _questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _questions[_questionIndex]['questionText'],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 218, 40),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ...(_questions[_questionIndex]['answers']
                          as List<Map<String, dynamic>>)
                      .map((answer) {
                    return Answer(
                      answer['text'],
                      () => _answerQuestion(answer['isCorrect']),
                    );
                  }).toList(),
                ],
              )
            : Result(_score, _questions.length, _resetQuiz),
      ),
      backgroundColor: Color.fromARGB(255, 23, 71, 25),
    );
  }
}

class Biology extends StatefulWidget {
  @override
  _Biology createState() => _Biology();
}

class _Biology extends State<Biology> {
  int _questionIndex = 0;
  int _score = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      'questionText': 'What is the main job of the heart?',
      'answers': [
        {'text': 'Pumping blood', 'isCorrect': true},
        {'text': 'Digesting food', 'isCorrect': false},
        {'text': 'Breathing air', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'What is the powerhouse of the cell?',
      'answers': [
        {'text': 'Nucleus', 'isCorrect': false},
        {'text': 'Mitochondria', 'isCorrect': true},
        {'text': 'Chloroplast', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'How do plants get their energy?',
      'answers': [
        {'text': 'Photosynthesis', 'isCorrect': true},
        {'text': 'Respiration', 'isCorrect': false},
        {'text': 'Ingestion', 'isCorrect': false},
      ],
    },
  ];

  void _answerQuestion(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        _score++;
      }
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ready, Set, Quiz!'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 165, 218, 40),
      ),
      body: Center(
        child: _questionIndex < _questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _questions[_questionIndex]['questionText'],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 218, 40),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ...(_questions[_questionIndex]['answers']
                          as List<Map<String, dynamic>>)
                      .map((answer) {
                    return Answer(
                      answer['text'],
                      () => _answerQuestion(answer['isCorrect']),
                    );
                  }).toList(),
                ],
              )
            : Result(_score, _questions.length, _resetQuiz),
      ),
      backgroundColor: Color.fromARGB(255, 23, 71, 25),
    );
  }
}

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, dynamic>> answers;
  final Function(bool) answerQuestion;

  Quiz({
    required this.questionText,
    required this.answers,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          questionText,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 165, 218, 40),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        ...answers.map((answer) {
          return Answer(
            answer['text'],
            () => answerQuestion(answer['isCorrect']),
          );
        }).toList(),
      ],
    );
  }
}

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 165, 218, 40),
            shape: StadiumBorder()),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 18,
            color: const Color.fromARGB(255, 23, 71, 25),
          ),
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final VoidCallback resetHandler;

  Result(this.score, this.totalQuestions, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You scored $score out of $totalQuestions!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 165, 218, 40),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 165, 218, 40)),
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 23, 71, 25),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 165, 218, 40)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
            child: Text(
              'Return to Home Page',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 23, 71, 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
