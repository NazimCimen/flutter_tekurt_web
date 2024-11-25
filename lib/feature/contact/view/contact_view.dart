import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/feature/contact/widget/contact_form_widget.dart';
import 'package:tekkom_web/feature/contact/widget/contact_info_widget.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/product/widgets/section_background_widget.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends BaseLayout<ContactView> {
  @override
  Widget buildBody() {
    return _BodyContent(
      scrollController: scrollController,
      sectionKeys: sectionKeys,
    );
  }

  @override
  Widget buildHeaderDesktop() {
    return HeaderDesktop(
      currentPage: AppRoutes.contactView,
      scrollController: scrollController,
    );
  }
}

class _BodyContent extends BaseStateless<void> {
  const _BodyContent({
    required this.scrollController,
    required this.sectionKeys,
  });

  final ScrollController scrollController;
  final List<GlobalKey<State<StatefulWidget>>> sectionKeys;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          key: sectionKeys.first,
        ),
        SectionBackgroundWidget(
          title: StringConstants.contact_us,
          desc: StringConstants.contact_us_description,
          bgImagePath: ImageEnumsPng.bg_contact.toPathPng,
        ),
        SizedBox(height: context.cXxLargeValue),
        const ContactFormWidget(
          isOnContactPage: true,
        ),
        SizedBox(height: context.cXxLargeValue),
        SizedBox(
          width: Responsive.getWidth(context),
          height: Responsive.isDesktop(context)
              ? context.cXxLargeValue * 8
              : context.cXxLargeValue * 12,
          child: const ContactInfoWidget(),
        ),
        Padding(
          padding: context.pageHorizontolPadding(context),
          child: _title(context, ''),
        ),
        SizedBox(height: context.cXxLargeValue),
      ],
    );
  }

  SelectableText _title(BuildContext context, String text) {
    return SelectableText(
      text,
      style: textTheme(context).headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            height: 2,
          ),
    );
  }
}
