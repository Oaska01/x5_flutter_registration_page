import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Registration Page',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Registration Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Center(
            child:
            Text(widget.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(

          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            const SizedBox(height: 15,),

              _builtInputLabel('name'),
              _builtTextField(hintText: 'Enter your full name'),

              const SizedBox(height: 15,),
              const Text('Email'),
              const SizedBox(height: 15,),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter you email',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
        
              const SizedBox(height: 15,),
              const Text('Phone Number'),
              const SizedBox(height: 15,),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter you phone number',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
        
              const SizedBox(height: 15,),
              const Text('Country'),
              const SizedBox(height: 15,),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter you country',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()
                ),
              ),
        
              const SizedBox(height: 15,),
              const Text('Password'),
              const SizedBox(height: 15,),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    border: OutlineInputBorder()
                ),
                obscureText: true,
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){

                      },
                      child: const Text('Submit')
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}

Widget _builtInputLabel(String label){
  return Text(
    label,
    style:
    const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color:Colors.grey
    ),
  );
}

Widget _builtTextField(
    {required String hintText, bool isPassword = false})
{
  return TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      filled: true,
      fillColor: Colors.grey.shade100,
    ),
        obscureText: isPassword,
  );
}
