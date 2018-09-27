import 'package:flutter/material.dart';
import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/page_card/page_card_item_view.dart';
import 'package:marvel/common/widgets/page_card/page_card_item_view_bloc.dart';
import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/core/blocs/core_page_bloc.dart';
import 'package:marvel/core/models/core_item_addition_model.dart';
import 'package:meta/meta.dart';

class PageCardItem<T> extends StatelessWidget {
  final CardModel coreItemModel;
  final CorePageBloc<T> corePageBloc;
  final bool isPageCardItemViewBloc;

  PageCardItem({
    Key key,
    @required this.coreItemModel,
    @required this.corePageBloc,
    @required this.isPageCardItemViewBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final dynamic coreItemModel1 = coreItemModel;
    final coreProvider = ScreenProvider.of(context);
    final coreItemBloc = coreProvider.coreItemBloc;
    // corePageBloc.coreViewItemModels.first.then(
    //     (value) => print('corePageBloc.coreViewItemModels.first: $value'));
    //print('corePageBloc: ${}');
    final onFavTap = () => corePageBloc.coreItemAdditionModel
        .add(CoreItemAdditionModel<T>(coreItemModel));
    final pageCardItemView = isPageCardItemViewBloc
        ? PageCardItemViewBloc(
            key: Key(coreItemModel.id.toString()),
            coreItemModel: coreItemModel,
            isRenderStar: true,
            onFavTap: onFavTap,
            coreViewItemModels: corePageBloc.coreViewItemModels,
          )
        : PageCardItemView(
            cardModel: coreItemModel,
            isRenderStar: false,
            onFavTap: onFavTap,
          );
    return GestureDetector(
      onTap: () {
        coreItemBloc.coreItemModelAdd(coreItemModel);
        Navigator.pushNamed(
          context, getItemDetailRouteByType(T, coreItemModel.id),
          // '${AppRoutes.characterDetails}/${coreItemModel1.id}',
        );
      },
      child: pageCardItemView,
    );
  }
}
