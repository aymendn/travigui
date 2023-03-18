import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../shared/custom_button.dart';
import 'proposal_form_bottom_sheet.dart';

class SellerDetailsScreen extends HookConsumerWidget {
  const SellerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFav = useState(false);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      color: AppColor.grey200,
                      height: 250,
                      child: Image.network(
                        'https://picsum.photos/800/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: CustomButton(
                        onPressed: Navigator.of(context).pop,
                        color: AppColor.grey400.withOpacity(0.4),
                        textColor: AppColor.grey600,
                        icon: Icons.arrow_back,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(
                            child: Text(
                              'Taking My dog On A Trip everyday for 2h',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              isFav.value = !isFav.value;
                            },
                            icon: Icon(
                              isFav.value
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFav.value ? Colors.red : Colors.grey,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColor.grey500,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Cheraga,Alger',
                            style: TextStyle(
                              color: AppColor.grey500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Job Description',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'The dog walker is responsible for taking clients dogs out for regular walks and ensuring that they receive adequate exercise, fresh air, and potty breaks. The job may also involve providing food and water to the dog as instructed by the owner, as well as cleaning up after the dog during and after the walk.',
                        style: TextStyle(color: Color(0xffADB5BD)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Demanded Skills',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color(0xffDEE2E6),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                  'Experience and knowledge of dog behavior'),
                            ),
                            Divider(
                                height: 1,
                                color: Color.fromARGB(167, 222, 226, 230)),
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                  'Experience and knowledge of dog behavior'),
                            ),
                            Divider(
                                height: 1,
                                color: Color.fromARGB(167, 222, 226, 230)),
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                  'Experience and knowledge of dog behavior'),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Published By',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xffFFFFFF)),
                        child: Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 25,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Mohamed kadous',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff343A40),
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: AppColor.grey100,
                  offset: Offset(0, -1),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '56 bids Rest',
                      style: TextStyle(color: Color(0xff1B5BFF)),
                    ),
                    Text(
                      '10,000 Da/Mo',
                      style: TextStyle(
                          color: Color(0xff495057),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                CustomButton(
                  text: 'Postuler',
                  onPressed: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      isScrollControlled: true,
                      constraints: BoxConstraints(
                        maxHeight: height * 0.9,
                      ),
                      context: context,
                      builder: (context) {
                        return const ProposalFormBottomSheet();
                      },
                    );
                  },
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
