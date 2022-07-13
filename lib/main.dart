import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Banking App'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          CircleAvatar(),
        ],
        title: Column(
          children: const [
            Text('Welcome Back'),
            Text('Kureysi'),
          ],
        ),
      ),
      body: Column(
        children: [
          const BankCardWidget(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SendMoneyWidget(),
              SizedBox(width: 20),
              ReceiveMoneyWidget(),
            ],
          ),
          Text('Recent Transactions'),
          Expanded(
            child: Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            color: Colors.black12,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      Icon(Icons.home),
                      Text('Home'),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      Icon(Icons.payments),
                      Text('Payments'),
                    ],
                  ),
                ),
                Expanded(child: Container(width: double.infinity)),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      Icon(Icons.message),
                      Text('Chats'),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      Icon(Icons.assignment),
                      Text('More'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ReceiveMoneyWidget extends StatelessWidget {
  const ReceiveMoneyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(5)),
        minimumSize: MaterialStateProperty.all(Size(150, 80)),
        backgroundColor: MaterialStateProperty.all(Colors.blue.shade300),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text('Receive'),
              Text('Money'),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Icon(Icons.file_download_outlined),
        ],
      ),
    );
  }
}

class SendMoneyWidget extends StatelessWidget {
  const SendMoneyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(5)),
        minimumSize: MaterialStateProperty.all(Size(150, 80)),
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(255, 196, 152, 59)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text('Send'),
              Text('Money'),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Icon(Icons.ios_share),
        ],
      ),
    );
  }
}

class BankCardWidget extends StatelessWidget {
  const BankCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      constraints: const BoxConstraints(
        maxHeight: 300,
        minHeight: 150,
        maxWidth: double.infinity,
        minWidth: 300,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
        gradient: const LinearGradient(colors: [
          Color(0xFF0A1034),
          Color(0xFF0A1034),
          Color(0xFF0001FC),
        ]),
      ),
      margin: EdgeInsets.all(15),
      height: 150,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'REMAINING BALANCE  >',
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
              letterSpacing: 1.5,
            ),
          ),
          Row(
            children: const [
              Text(
                'Rs',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                '98200',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Row(
            children: const [
              Text(
                'EXP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '18/32',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'CVC',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '432',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                '4212**********56',
                style: TextStyle(color: Colors.white),
              ),
              Expanded(child: Container()),
              const Text(
                'VISA',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
