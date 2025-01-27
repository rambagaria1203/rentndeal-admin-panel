import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';

class AnimationLoaderWidget extends StatelessWidget {
  const AnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed, this.height, this.width, this.style,
    });

    final String text;
    final TextStyle? style;
    final String animation;
    final bool showAction;
    final String? actionText;
    final VoidCallback? onActionPressed;
    final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(animation, height: height ?? MediaQuery.of(context).size.height * 0.5, width: width, fit: BoxFit.contain,),
          //Lottie.asset(animation, height ?? MediaQuery.of(context).size.height * 0.5, width: width),
          const SizedBox(height: CSizes.defaultSpace),
          Text(text, style: style ?? Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
          const SizedBox(height: CSizes.defaultSpace),
          showAction ? 
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: onActionPressed, 
                style: OutlinedButton.styleFrom(backgroundColor: CColors.dark),
                child: Text(actionText!, style: Theme.of(context).textTheme.bodyMedium!.apply(color: CColors.light),)
              ),
            ) : const SizedBox(),
        ]
      )
    );
  }
}