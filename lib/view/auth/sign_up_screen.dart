import 'package:flutter/material.dart';
import '../shared/back_button.dart';

class SignUpScreen extends StatelessWidget {
  final index;
  SignUpScreen({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            BackButtons(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Few Steps Before Getting Your First Job !',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Step(index: 1,),
          ],
        ),
      ),
    );
  }
}

class Step extends StatelessWidget {
  const Step({
    this.index,
  });
  final index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index == 1 ? indexContainer(
            color: Color(0xffF56D38),
          ): index == 2 ? indexContainer(
            color: Color(0xffE9ECEF),
          ): indexContainer( color: Color(0xffE9ECEF),),
          
          index == 1 ? StepContainer(
              color1: Color(0xffF56D38), color2: Color(0xffE9ECEF)):StepContainer(
              color1: Color(0xffE9ECEF), color2: Color(0xffE9ECEF)),
       
          indexContainer(
            color: Color(0xffE9ECEF),
          ),
          StepContainer(
            color1: Color(0xffE9ECEF),
            color2: Color(0xffE9ECEF),
          ),
          indexContainer(
            color: Color(0xffE9ECEF),
          ),
        ],
      ),
    );
  }
}

class StepContainer extends StatelessWidget {
  const StepContainer({
    required this.color1,
    required this.color2,
  });
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}

class indexContainer extends StatelessWidget {
  const indexContainer({
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: Center(child: Text('1')),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
    );
  }
}
