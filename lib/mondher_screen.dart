import 'package:flutter/material.dart';
import 'view/shared/back_button.dart';

class MondherScreen extends StatelessWidget {
  final index;
  const MondherScreen({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 30,
            ),
            BackButtons(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Few Steps Before Getting Your First Job !',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Step(
              index: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class Step extends StatelessWidget {
  const Step({
    super.key,
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
          index == 1
              ? const indexContainer(
                  index: 1,
                  color: Color(0xffF56D38),
                )
              : index == 2
                  ? const indexContainer(
                      index: 1,
                      color: Color(0xffF56D38),
                    )
                  : const indexContainer(
                      color: Color(0xffF56D38),
                      index: 1,
                    ),
          index == 1
              ? const StepContainer(
                  color1: Color(0xffF56D38), color2: Color(0xffE9ECEF))
              : index == 2
                  ? const StepContainer(
                      color1: Color(0xffF56D38), color2: Color(0xffF56D38))
                  : const StepContainer(
                      color1: Color(0xffF56D38), color2: Color(0xffF56D38)),
          index == 1
              ? const indexContainer(
                  index: 2,
                  color: Color(0xffE9ECEF),
                )
              : index == 2
                  ? const indexContainer(
                      index: 2,
                      color: Color(0xffF56D38),
                    )
                  : const indexContainer(
                      index: 2,
                      color: Color(0xffF56D38),
                    ),
          index == 1
              ? const StepContainer(
                  color1: Color(0xffE9ECEF), color2: Color(0xffE9ECEF))
              : index == 2
                  ? const StepContainer(
                      color1: Color(0xffF56D38), color2: Color(0xffE9ECEF))
                  : const StepContainer(
                      color1: Color(0xffF56D38), color2: Color(0xffF56D38)),
          index == 1
              ? const indexContainer(
                  index: 3,
                  color: Color(0xffE9ECEF),
                )
              : index == 2
                  ? const indexContainer(
                      index: 3,
                      color: Color(0xffE9ECEF),
                    )
                  : const indexContainer(
                      index: 3,
                      color: Color(0xffF56D38),
                    ),
        ],
      ),
    );
  }
}

class StepContainer extends StatelessWidget {
  const StepContainer({
    super.key,
    required this.color1,
    required this.color2,
  });
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
      ),
    );
  }
}

class indexContainer extends StatelessWidget {
  const indexContainer({
    super.key,
    required this.color,
    required this.index,
  });
  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child: Center(
          child: Text(index.toString(),
              style: const TextStyle(color: Colors.white))),
    );
  }
}
