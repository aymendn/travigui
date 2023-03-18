import 'package:flutter/material.dart';

import '../../core/app_color.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.isRead});

  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isRead ? Colors.white : AppColor.grey100,
        border: const Border(
          bottom: BorderSide(
            color: AppColor.grey300,
          ),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              'https://t4.ftcdn.net/jpg/04/31/64/75/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Mokhtar Djelloul',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          if (!isRead)
            const CircleAvatar(
              radius: 5,
              backgroundColor: Colors.red,
            ),
        ],
      ),
    );
  }
}
