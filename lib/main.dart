import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 104, 90, 181),
        centerTitle: true,
        title: Text(
          "Login Screen",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "lib/assets/photo_5879786056604303448_x.jpg",
              height: 350,
              width: 350,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Enter Email"),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Enter Password"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 104, 90, 181),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "هاش بلس",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}