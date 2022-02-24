import 'package:flutter/material.dart';

import 'package:kubenav/utils/constants.dart';
import 'package:kubenav/utils/custom_icons.dart';
import 'package:kubenav/utils/helpers.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    Key? key,
    required this.error,
  }) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: const EdgeInsets.only(
          top: Constants.spacingSmall,
          bottom: Constants.spacingSmall,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Constants.shadowColorGlobal,
              blurRadius: Constants.sizeBorderBlurRadius,
              spreadRadius: Constants.sizeBorderSpreadRadius,
              offset: const Offset(0.0, 0.0),
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(Constants.sizeBorderRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Constants.colorPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Constants.sizeBorderRadius),
                  topRight: Radius.circular(Constants.sizeBorderRadius),
                ),
              ),
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: const Icon(
                CustomIcons.kubernetes,
                color: Colors.white,
                size: 108,
              ),
            ),
            const SizedBox(height: Constants.spacingSmall),
            Padding(
              padding: const EdgeInsets.only(
                left: Constants.spacingSmall,
              ),
              child: Text(
                'Error',
                style: primaryTextStyle(),
              ),
            ),
            const SizedBox(height: Constants.spacingExtraSmall),
            Padding(
              padding: const EdgeInsets.only(
                left: Constants.spacingSmall,
              ),
              child: Text(
                error,
                style: secondaryTextStyle(),
              ),
            ),
            const SizedBox(height: Constants.spacingSmall),
          ],
        ),
      ),
    );
  }
}
