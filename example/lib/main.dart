import 'package:dooadex_constants/dooadex_constants.dart';
import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dooadex Package Test App',
      theme: ThemeData(
        primarySwatch: MaterialColor(DooadexColor.primaryMaterialColor.colorHex, DooadexColor.primaryMaterialColor.swatch),
      ),
      home: const MyHomePage(title: 'Dooadex Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // DooadexRoute.init(routePath: DooadexRoute.path, namedRoute: DooadexRoute.name);
            // print(DooadexRoute.path.home);
            // print(DooadexRoute.name.home);
            print(HttpStatus.code.badRequest);
            print(HttpStatus.reason.badRequest);
            print(HttpConstant.method.get);
            print(HttpConstant.method.post);
            print(HttpConstant.method.put);
            print(HttpConstant.method.patch);
            print(HttpConstant.method.delete);
            print(HttpConstant.contentType.json);
            print(HttpConstant.tokenType.bearer);
          },
          child: const Text("Test"),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
