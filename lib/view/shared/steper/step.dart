import 'package:flutter/material.dart';

import 'index_container.dart';
import 'step_container.dart';

class Step extends StatelessWidget {
  const Step({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index == 1
              ? const IndexContainer(
                  index: 1,
                  color: Color(0xffF56D38),
                )
              : index == 2
                  ? const IndexContainer(
                      index: 1,
                      color: Color(0xffF56D38),
                    )
                  : const IndexContainer(
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
              ? const IndexContainer(
                  index: 2,
                  color: Color(0xffE9ECEF),
                )
              : index == 2
                  ? const IndexContainer(
                      index: 2,
                      color: Color(0xffF56D38),
                    )
                  : const IndexContainer(
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
              ? const IndexContainer(
                  index: 3,
                  color: Color(0xffE9ECEF),
                )
              : index == 2
                  ? const IndexContainer(
                      index: 3,
                      color: Color(0xffE9ECEF),
                    )
                  : const IndexContainer(
                      index: 3,
                      color: Color(0xffF56D38),
                    ),
        ],
      ),
    );
  }
}
