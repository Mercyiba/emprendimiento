import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emprendimiento/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}*/
void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
 options: DefaultFirebaseOptions.currentPlatform,
 );
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sistema de emulador'),
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
  int _counter = 0;

  void getCliente() async {
 CollectionReference collectionReference =
FirebaseFirestore.instance.collection("tb_cliente");
 QuerySnapshot mensajes = await collectionReference.get();
 if(mensajes.docs.length != 0){
 for (var doc in mensajes.docs){
 print(doc.data());
 //chatsx.add(doc.data());
 }
 }
 }

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCliente() ;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
