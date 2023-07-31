import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:teresa/domains/painter/shape_painter.dart';
import 'package:teresa/widgets/header_menu_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesura',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Uint8List? bytes;
  Offset offset = Offset(100, 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderMenuBar(),
          Expanded(
            child: Listener(
              onPointerMove: (event) {
                setState(() {
                  offset = event.localPosition;
                });
              },
              child: CustomPaint(
                painter: ShapePainter(offset: offset),
                child: Container(
                  child: bytes == null ? null : Image.memory(bytes!),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
