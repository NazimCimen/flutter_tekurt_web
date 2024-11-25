import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/core/size/constant_size.dart';

class FooterHeaderWidget extends StatelessWidget {
  const FooterHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          StringConstants.appName,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: context.cMediumValue),

        SelectableText(
          '${StringConstants.our_services1} / ${StringConstants.our_services2} / ${StringConstants.our_services3}',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
        ),
        SizedBox(height: context.cMediumValue),

        ///TO DO : This will implement later
        /*       Row(
          children: [
            SelectableText(
              StringConstants.footer_social_media,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (Responsive.isDesktop(context))
              SizedBox(width: context.cMediumValue * 2),
            if (!Responsive.isDesktop(context)) const Spacer(),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.twitter,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.linkedin,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.instagram,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {},
            ),
          ],
        ),
     */
      ],
    );
  }
}
