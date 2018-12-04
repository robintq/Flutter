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
  final CardModel cardModel;
  final CorePageBloc<T> corePageBloc;
  final bool isPageCardItemViewBloc;

  PageCardItem({
    Key key,
    @required this.cardModel,
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
    // print('PageCardItem<T>: ${T}');
    final onFavTap = () => corePageBloc.coreItemAdditionModel
        .add(CoreItemAdditionModel<T>(cardModel));
    final pageCardItemView = isPageCardItemViewBloc
        ? PageCardItemViewBloc(
            key: Key(cardModel.id.toString()),
            coreItemModel: cardModel,
            isRenderStar: true,
            onFavTap: onFavTap,
            coreViewItemModels: corePageBloc.coreViewItemModels,
          )
        : PageCardItemView(
            cardModel: cardModel,
            isRenderStar: false,
            onFavTap: onFavTap,
          );
    return GestureDetector(
      onTap: () {
        coreItemBloc.coreItemModelAdd(cardModel);
        Navigator.pushNamed(
          context, getItemDetailRouteByType(T, cardModel.id),
          // '${AppRoutes.characterDetails}/${coreItemModel1.id}',
        );
      },
      child: pageCardItemView,
    );
  }
}
