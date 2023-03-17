import 'package:flutter/material.dart';

import 'index_container.dart';
import 'step_container.dart';
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
          index == 1
              ? indexContainer(
                  index: 1,
                  color: Color(0xffF56D38),
                )
              : index == 2
                  ? indexContainer(
                      index: 1,
                      color: Color(0xffF56D38),
                    )
                  : indexContainer(
                      color: Color(0xffF56D38),
                      index: 1,
                    ),
          index == 1
              ? StepContainer(
                  color1: Color(0xffF56D38), color2: Color(0xffE9ECEF))
              : index == 2
                  ? StepContainer(
                      color1: Color(0xffF56D38), color2: Color(0xffF56D38))
                  : StepContainer(
                      color1: Color(0xffF56D38), color2: Color(0xffF56D38)),
          index == 1
              ? indexContainer(
                  index: 2,
                  color: Color(0xffE9ECEF),
                )
              : index == 2
                  ? indexContainer(
                      index: 2,
                      color: Color(0xffF56D38),
                    )
                  : indexContainer(
                      index: 2,
                      color: Color(0xffF56D38),
                    ),
          index == 1
              ? StepContainer(
                  color1: Color(0xffE9ECEF), color2: Color(0xffE9ECEF))
              : index == 2
                  ? StepContainer(
                      color1: Color(0xffF56D38), color2: Color(0xffE9ECEF))
                  : StepContainer(
                      color1: Color(0xffF56D38), color2: Color(0xffF56D38)),
          index == 1
              ? indexContainer(
                  index: 3,
                  color: Color(0xffE9ECEF),
                )
              : index == 2
                  ? indexContainer(
                      index: 3,
                      color: Color(0xffE9ECEF),
                    )
                  : indexContainer(
                      index: 3,
                      color: Color(0xffF56D38),
                    ),
        ],
      ),
    );
  }
}