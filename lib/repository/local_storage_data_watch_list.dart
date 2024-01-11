import 'dart:convert';

import 'package:cine_stream_ui/constant/image.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageManager {
  static LocalStorageManager get instance => LocalStorageManager._internal();

  LocalStorageManager._internal();

  Future<SharedPreferences> _getSharePreference() async =>
      await SharedPreferences.getInstance();

  // Future<bool> putString({required String key, required String value}) async {
  //   final pref = await _getSharePreference();
  //   return pref.setString(key, value);
  // }
  //
  // Future<String?> getString(String key) async {
  //   final pref = await _getSharePreference();
  //   return pref.getString(key);
  // }

  // Future<bool> putUser(UserModel userModel) async {
  //   final users = await getUsers();
  //   final isExist = users.indexWhere((element) => element.title == userModel.title);
  //   if(isExist == -1) {
  //     users.add(userModel);
  //     return putUsers(users);
  //   }
  //   return false;
  // }

  Future<bool> putImageDetail(ImageDetail imageDetail) async {
    final imageDetails = await getImageDetails();
    final isExist = imageDetails.indexWhere((element) => element.title == imageDetail.title);
    if(isExist == -1) {
      imageDetails.add(imageDetail);
      return putImageDetails(imageDetails);
    }
    return false;
  }

  // Future<UserModel> getUser() async {
  //   final userModelStr = await getString("UserModel");
  //   return UserModel.fromJson(jsonDecode(userModelStr ?? ""));
  // }
  //
  // Future<bool> putUsers(List<UserModel> users) async {
  //   final pref = await _getSharePreference();
  //   List<String> userListStr = users.map((e) => jsonEncode(e)).toList();
  //   return pref.setStringList("Users", userListStr);
  // }

  // Future<List<UserModel>> getUsers() async {
  //   final pref = await _getSharePreference();
  //   final users = pref.getStringList("Users");
  //   return users?.map((e) => UserModel.fromJson(jsonDecode(e))).toList() ?? [];
  // }

  Future<bool> putImageDetails(List<ImageDetail> imageDetails) async {
    final pref = await _getSharePreference();
    List<String> userListStr = imageDetails.map((e) => jsonEncode(e)).toList();
    return pref.setStringList("ImageDetail", userListStr);
  }

  Future<List<ImageDetail>> getImageDetails() async {
    final pref = await _getSharePreference();
    final users = pref.getStringList("ImageDetail");
    return users?.map((e) => ImageDetail.fromJson(jsonDecode(e))).toList() ?? [];
  }
}
