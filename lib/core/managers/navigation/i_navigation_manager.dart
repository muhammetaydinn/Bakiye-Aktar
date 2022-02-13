abstract class INavigationManager {
  Future<void> navigate({String? path, Object? data});
  Future<void> navigateClear({String? path, Object? data});
}
