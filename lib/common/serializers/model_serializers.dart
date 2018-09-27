import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:marvel/common/models/characters/characters_model.dart';
import 'package:marvel/common/models/comics/comics_model.dart';
import 'package:marvel/common/models/creators/creators_model.dart';
import 'package:marvel/common/models/events/events_model.dart';
import 'package:marvel/common/models/series/series_model.dart';
import 'package:marvel/common/models/stories/stories_model.dart';

part 'model_serializers.g.dart';

@SerializersFor(const [
  CharacterDataWrapper,
  ComicDataWrapper,
  CreatorDataWrapper,
  EventDataWrapper,
  SeriesDataWrapper,
  StoryDataWrapper
])
final Serializers modelSerializers =
    (_$modelSerializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
