import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';

class PaymentComponentWidget extends StatelessWidget {
  const PaymentComponentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(top: 1.v),
          padding: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 30.v,
          ),
          decoration: AppDecoration.fillSecondaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text(
                "Master Card",
                style: theme.textTheme.labelMedium,
              ),
              SizedBox(height: 3.v),
              Text(
                "XXX-XXX",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 14.v),
              Text(
                "Name",
                style: theme.textTheme.labelMedium,
              ),
              SizedBox(height: 1.v),
              Text(
                "Prima",
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
