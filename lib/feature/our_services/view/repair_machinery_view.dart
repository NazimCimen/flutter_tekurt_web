import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/config/routes/app_routes.dart';
import 'package:tekkom_web/core/base/base_stateless.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/image_enum.dart';
import 'package:tekkom_web/feature/base_ui/base_layout.dart';
import 'package:tekkom_web/feature/header/header_desktop.dart';
import 'package:tekkom_web/feature/home/widgets/brand_carousel_widget.dart';
import 'package:tekkom_web/product/widgets/section_background_widget.dart';

class RepairMachineryView extends StatefulWidget {
  const RepairMachineryView({
    super.key,
  });

  @override
  State<RepairMachineryView> createState() => _CarRepairServiceViewState();
}

class _CarRepairServiceViewState extends BaseLayout<RepairMachineryView> {
  _CarRepairServiceViewState();
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
      currentPage: AppRoutes.repairMachineryView,
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              key: sectionKeys.first,
            ),
            SectionBackgroundWidget(
              title: StringConstants.our_services2,
              desc: StringConstants.our_services2_sub_desc,
              bgImagePath: ImageEnumsPng.img_services2.toPathPng,
            ),
            const _Body(),
            Padding(
              padding: context.pageHorizontolPadding(context),
              child: _title(context, ''),
            ),
            const BrandCarousel(),
          ],
        ),
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

class _Body extends BaseStateless<void> {
  const _Body();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.pageHorizontolPadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: context.cXLargeValue),
          _title(
            context,
            StringConstants.our_services2,
          ),
          _description(
            context,
            StringConstants.our_services2_desc,
          ),
          _title(
            context,
            StringConstants.our_services2_subtitle1,
          ),
          _description(
            context,
            StringConstants.our_services2_subtitle2_desc1,
          ),
          _title(
            context,
            StringConstants.our_services2_subtitle2,
          ),
          _description(
            context,
            StringConstants.our_services2_subtitle2_desc2,
          ),
          _title(
            context,
            StringConstants.our_services2_subtitle3,
          ),
          _description(
            context,
            StringConstants.our_services2_subtitle2_desc3,
          ),
          _subTitle(
            context,
            StringConstants.our_services2_subtitle4,
          ),
          _description(
            context,
            StringConstants.our_services2_subtitle2_desc4,
          ),
          _subTitle(
            context,
            StringConstants.our_services2_subtitle5,
          ),
          _description(
            context,
            StringConstants.our_services2_subtitle2_desc5,
          ),
          _subTitle(
            context,
            StringConstants.our_services2_subtitle6,
          ),
          _description(
            context,
            StringConstants.our_services2_subtitle2_desc6,
          ),
          _subTitle(
            context,
            StringConstants.our_services2_subtitle7,
          ),
          _description(
            context,
            StringConstants.our_services2_subtitle2_desc7,
          ),
          SizedBox(height: context.cMediumValue),
        ],
      ),
    );
  }

  SelectableText _subTitle(BuildContext context, String text) {
    return SelectableText(
      text,
      style: textTheme(context).titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
    );
  }

  SelectableText _description(BuildContext context, String text) {
    return SelectableText(
      text,
      style:
          textTheme(context).bodyLarge?.copyWith(fontStyle: FontStyle.normal),
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