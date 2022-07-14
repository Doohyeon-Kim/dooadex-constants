import 'package:dooadex_constants/dooadex_constants.dart';
import 'package:dooadex_logger/dooadex_logger.dart';
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
      debugShowCheckedModeBanner: false,
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
            DdxLogger(DdxHttpStatus.code.badRequest);
            DdxLogger(DdxHttpStatus.reason.badRequest);
            DdxLogger(DdxHttpConst.method.get);
            DdxLogger(DdxHttpConst.method.post);
            DdxLogger(DdxHttpConst.method.put);
            DdxLogger(DdxHttpConst.method.patch);
            DdxLogger(DdxHttpConst.method.delete);
            DdxLogger(DdxHttpConst.contentType.json);
            DdxLogger(DdxHttpConst.tokenType.bearer);
            DdxLogger(DdxHttpConst.jsonEncodingOption.utf8);
          },
          child: const Text("Test"),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
