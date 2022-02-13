abstract class IUserService {
  Future<void> addUserInfo(String name, String phoneNumber);
  Future<dynamic> getUserInfo();
  Future<void> addContact(List<dynamic> contact);
  Future<dynamic> getContacts();
  Future<void> applyScholarship(List<dynamic> scholarship);
  Future<dynamic> getScholarships();
}
