import 'package:fci_sci/orders_screen.dart';
import 'package:fci_sci/sofa_screen.dart';
import 'package:fci_sci/veg_screen.dart';
import 'package:flutter/material.dart';

// stateless widget

// stateful widget

void main() {
  runApp(const MyApp());
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
      home: const VegScreen(),
      // home: OrderDetailScreen(),
      // home: OrdersScreen(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          leading: const Icon(Icons.arrow_back),
          actions: const [
            Icon(Icons.search, color: Colors.white, size: 30),
            Icon(Icons.more_vert),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const LinearProgressIndicator(
              color: Colors.teal,
              value: 12 / 100,
            ),
            InkWell(
              onTap: () {
                print("Image 1");
              },
              child: Image.network(
                "https://static.vecteezy.com/system/resources/thumbnails/027/254/720/small_2x/colorful-ink-splash-on-transparent-background-png.png",
                width: 200,
              ),
            ),
            const SizedBox(height: 16),
            // InkWell(
            GestureDetector(
              onTap: () {
                print("Image 2");
              },
              child: Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(16),
                  color: Colors.amber,
                  border: Border.all(),
                  // shape: BoxShape.circle,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Image 1"),
                    // Image.asset("assets/images/camera.jpg", width: 200),
                  ],
                ),
              ),
            ),
            // buttons
            ElevatedButton(
              onPressed: () {
                print("Go To Orders Screen");
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const OrdersScreen()),
                );
              },
              child: const Text("Go To Orders Screen"),
            ),
            TextButton(
              onPressed: () {
                print("Text Button");
              },
              child: const Text("Text Button"),
            ),
            OutlinedButton(
              onPressed: () {
                print("Outlined Button");
              },
              child: const Text("Outlined Button"),
            ),
            IconButton(
              onPressed: () {
                print("Icon Button");
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const SofaScreen()),
                );
              },
              icon: const Icon(Icons.security_update_outlined),
            ),
          ],
        ),
        // body: SingleChildScrollView(
        //   child: SizedBox(
        //     height: MediaQuery.of(context).size.height,
        //     width: MediaQuery.of(context).size.width,
        //     child: Column(
        //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       // crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Container(
        //           color: Colors.tealAccent,
        //           padding: const EdgeInsets.all(16),
        //           margin: const EdgeInsets.all(16),
        //           alignment: Alignment.center,
        //           // height: MediaQuery.of(context).size.height*.2,
        //           // width: MediaQuery.of(context).size.width,
        //           // width: 200,
        //           // height: 100,
        //           // constraints: const BoxConstraints(
        //           //   maxHeight: 100,
        //           //   maxWidth: 300,
        //           //   minHeight: 50,
        //           //   minWidth: 200,
        //           // ),
        //           child: const Text(
        //             "Hello World",
        //           ),
        //         ),
        //         const Text(
        //             "Hello World",
        //           ),
        //           const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),const Text(
        //             "Hello World",
        //           ),
        //         Expanded(
        //           flex: 2,
        //           child: Column(
        //             children: [
        //               const Text(
        //                 'You have pushed the button this many times:',
        //                 style: TextStyle(
        //                   fontSize: 20,
        //                   color: Colors.amber,
        //                   fontWeight: FontWeight.w900,
        //                 ),
        //                 textAlign: TextAlign.center,
        //               ),
        //               Text(
        //                 '$_counter',
        //                 style: Theme.of(context).textTheme.headlineMedium,
        //               ),
        //             ],
        //           ),
        //         ),
        //         Flexible(
        //           flex: 6,
        //           fit: FlexFit.tight,
        //           child: Container(
        //             color: Colors.blue,
        //             child: const Padding(
        //               // padding: EdgeInsets.all(16.0),
        //               // padding: EdgeInsets.fromLTRB(50, 0, 9, 4),
        //               // padding:  EdgeInsetsDirectional.fromSTEB(6, 12, 6, 12),
        //               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
        //               child: Wrap(
        //                 // child: Row(
        //                 // mainAxisAlignment: MainAxisAlignment.center,
        //                 // crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   SizedBox(width: 12),
        //                   // Spacer(),
        //                   Text(
        //                     "SCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   SizedBox(width: 12),
        //                   // Spacer(),
        //                   Text(
        //                     "SCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   SizedBox(width: 12),
        //                   // Spacer(),
        //                   Text(
        //                     "SCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   SizedBox(width: 12),
        //                   // Spacer(),
        //                   Text(
        //                     "SCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   SizedBox(width: 12),
        //                   // Spacer(),
        //                   Text(
        //                     "SCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   Text(
        //                     "FCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                   SizedBox(width: 12),
        //                   // Spacer(),
        //                   Text(
        //                     "SCI",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //         Flexible(
        //           flex: 3,
        //           fit: FlexFit.loose,
        //           child: Container(
        //             color: Colors.red,
        //             child: const Padding(
        //               padding: EdgeInsets.all(16.0),
        //               child: Text(
        //                 "Hello",
        //                 style: TextStyle(fontSize: 20),
        //               ),
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
