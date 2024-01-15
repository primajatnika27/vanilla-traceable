import 'package:flutter/material.dart';
import 'package:vanilla_traceability/core/app_export.dart';

class BalanceComponentWidget extends StatelessWidget {
  const BalanceComponentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(top: 1.v),
          padding: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 30.v,
          ),
          decoration: AppDecoration.fillIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text(
                "Wallet Balance:",
                style: theme.textTheme.labelMedium,
              ),
              SizedBox(height: 3.v),
              Text(
                "IDR 7.000",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 14.v),
              Text(
                "Total Selling",
                style: theme.textTheme.labelMedium,
              ),
              SizedBox(height: 1.v),
              Text(
                "1",
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
