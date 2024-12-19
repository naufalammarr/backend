import 'package:shared_preferences/shared_preferences.dart';

class ProfileService {
  Future<void> saveProfile(String name, String email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('email', email);
  }

  Future<Map<String, String?>> getProfile() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString('name');
    final email = prefs.getString('email');
    return {'name': name, 'email': email};
  }
}
