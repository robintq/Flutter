import 'package:flutter/material.dart';
import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/common/utils/marvel_helper.dart';
import 'package:marvel/common/widgets/theme.dart';
import 'package:marvel/common/widgets/ui_elements.dart'
    show RenderFavouriteIcon;
// import 'package:random_pk/random_pk.dart';

/// A helper widget that only builds the [PageCardItem].
///
/// The card will be starred when [isInFavourites] is `true`.
class PageCardItemView extends StatelessWidget {
  final CardModel cardModel;
  final bool isRenderStar;
  final GestureTapCallback onFavTap;
  final StreamBuilder<bool> favouriteIcon;

  const PageCardItemView({
    Key key,
    @required this.cardModel,
    @required this.isRenderStar,
    @required this.onFavTap,
    this.favouriteIcon = null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var favStar = isRenderStar
        ? favouriteIcon == null
            ? RenderFavouriteIcon(onFavTap, isRenderStar, false)
            : favouriteIcon
        : RenderFavouriteIcon(onFavTap, isRenderStar, false);

    // var item_card = Padding(
    //   padding: EdgeInsets.only(bottom: 10.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    //     elevation: 5.0,
    //     child: ListTile(
    //       leading: Image(
    //           height: 70.0,
    //           image: NetworkImage(
    //             MarvelHelper.getImageUrl(cardModel.path, cardModel.extension),
    //           )),
    //       title: Text(
    //         cardModel.name,
    //         maxLines: 2,
    //         overflow: TextOverflow.ellipsis,
    //         style: TextStyle(
    //           fontSize: 20.0,
    //           fontWeight: FontWeight.w900,
    //         ),
    //       ),
    //       subtitle: Text(
    //         cardModel.description,
    //         maxLines: 3,
    //         overflow: TextOverflow.ellipsis,
    //         style: TextStyle(
    //           fontSize: 13.0,
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    var container = Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 5.0,
        child: Container(
          //padding: EdgeInsets.all(2.0),
          // decoration: linearGradient,
          decoration: BoxDecoration(
            color: Color(themeColor),
            borderRadius: BorderRadius.circular(5.0),
          ),
          //color: Color(themeColor),
          height: 100.0,
          child: Row(
            children: <Widget>[
              Container(
                width: 90.0,
                height: 90.0,
                margin: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    // colorFilter: ColorFilter.mode(
                    //     Color(themeColor55), BlendMode.srcOver),
                    image: NetworkImage(
                      MarvelHelper.getImageUrl(
                          cardModel.path, cardModel.extension),
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              cardModel.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: cardTextColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        favStar,
                      ],
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          cardModel.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: cardTextColor,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return container;
  }
}
