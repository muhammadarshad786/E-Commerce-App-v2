import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dotted Stepper Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TimeStemp(),
    );
  }
}

class DottedLine extends StatelessWidget {
  final double height;

  const DottedLine({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2, // Fixed width for vertical line
      height: height,
      child: CustomPaint(
        painter: DottedLinePainter(),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue // Color of the dotted line
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    const double dashWidth = 4.0;
    const double dashSpace = 4.0;
    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace+6;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class TimeStemp extends StatelessWidget {
  TimeStemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dotted Stepper Example'),
      ),
      body: Center(
        child: Container(
          height: 450,
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.centerLeft, // Align dotted lines to the left
                  children: [
                    // Positioned Dotted Lines
                    Positioned(
                      left: 20, // Adjust this value as needed
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DottedLine(height: 80), // Height for each dotted line
                          SizedBox(height: 40), // Space between lines
                          DottedLine(height: 80),
                          SizedBox(height: 40), // Space between lines
                          DottedLine(height: 80),
                        ],
                      ),
                    ),
                    // Stepper Widget
                    AnotherStepper(
                      stepperList: [
                        StepperData(
                          iconWidget: Icon(Icons.done, color: Colors.blue),
                          title: StepperText('Step 1'),
                          subtitle: StepperText('Description of Step 1'),
                        ),
                        StepperData(
                          iconWidget: Icon(Icons.check, color: Colors.blue),
                          title: StepperText('Step 2'),
                          subtitle: StepperText('Description of Step 2'),
                        ),
                        StepperData(
                          iconWidget: Icon(Icons.check_circle, color: Colors.blue),
                          title: StepperText('Step 3'),
                          subtitle: StepperText('Description of Step 3'),
                        ),
                      ],
                      inActiveBarColor: Colors.transparent, // Hide the default bar
                      activeBarColor: Colors.transparent,
                      iconHeight: 40,
                      iconWidth: 40,
                      stepperDirection: Axis.vertical,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
