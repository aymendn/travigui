import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../../core/app_exension.dart';
import '../shared/custom_button.dart';
import '../shared/custom_text_form_field.dart';

class ProposalFormBottomSheet extends HookConsumerWidget {
  const ProposalFormBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final proposalText = useTextEditingController();
    final amount = useTextEditingController();
    final credit = useTextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 3,
              width: 70,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const Text(
            '10,000 Da/Mo',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColor.grey600,
            ),
          ),
          const SizedBox(height: 10),
          Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  controller: proposalText,
                  label: 'Text De Postulation',
                  hint: 'Convince The Recruiter To Accept Your Post',
                  isLarge: true,
                  tooltip: 'Convince The Recruiter To Accept Your Post',
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: amount,
                  label: 'Montant',
                  hint: '10,400 Da',
                  keyboradType: TextInputType.number,
                  tooltip: 'Enter The Amount You Want To Be Paid',
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: credit,
                  label: 'Crédit Pour Postuler',
                  hint: '5+',
                  keyboradType: TextInputType.number,
                  tooltip: 'Enter The Amount You Want To Be Paid',
                ),
                const SizedBox(height: 5),
                const Text(
                  'Crédit restant: 10',
                  style: TextStyle(
                    color: AppColor.primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Annuler',
                  onPressed: context.pop,
                  color: AppColor.grey,
                  textColor: AppColor.grey600,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomButton(
                  text: 'Valider',
                  onPressed: context.pop,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
