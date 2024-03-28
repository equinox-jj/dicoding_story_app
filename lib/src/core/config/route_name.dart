// ignore_for_file: constant_identifier_names

abstract class RouteName {
  const RouteName._();
  static const String LOGIN = 'initial';
  static const String REGISTER = 'register';
  static const String LIST_STORY = 'list-story';
  static const String DETAIL_STORY = 'detail-story';
  static const String ADD_STORY = 'add-story';
  static const String ADD_STORY_MAPS = 'add-story-maps';
}

abstract class RouterPath {
  const RouterPath._();
  static const String INITIAL = '/';
  static const String REGISTER = 'register';
  static const String LIST_STORY = '/list-story';
  static const String DETAIL_STORY = 'detail-story';
  static const String ADD_STORY = 'add-story';
  static const String ADD_STORY_MAPS = 'add-story-maps';
}