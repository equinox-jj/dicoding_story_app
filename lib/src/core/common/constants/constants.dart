// ignore_for_file: constant_identifier_names

abstract class Constants {
  const Constants._();

  static const BASE_URL = 'https://story-api.dicoding.dev/v1';
  static const REGISTER_EP = '/register';
  static const LOGIN_EP = '/login';
  static const STORIES_EP = '/stories';
  static const DETAIL_STORIES_EP = '/stories/:id';

  static const PLACEHOLDER_IMAGE = 'assets/images/placeholder.png';
  static const ERROR_IMAGE = 'assets/images/error.png';
}
