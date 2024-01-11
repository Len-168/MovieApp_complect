import 'package:cine_stream_ui/model/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quickalert/quickalert.dart';

class AuthController extends GetxController {
  final storage = GetStorage();
  RxBool isLoggedIn = false.obs;
  Rx<User> user = User(username: '', password: '').obs;

  void register(String username, String email, String password) {
    isLoggedIn.value = true;
    user.value = User(username: username, password: password);
    storage.write('isLoggedIn', true);
    storage.write('user', {'username': username, 'password': password});
    QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.success,
        showConfirmBtn: false,
        autoCloseDuration: Duration(seconds: 5));
  }

  void login(String username, String password) {
    isLoggedIn.value = true;
    final usermap = storage.read('user');
    if (username == usermap?['username'] && password == usermap?['password']) {
      Get.offAllNamed('/home');
    } else {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.error,
        showConfirmBtn: false,
        autoCloseDuration: Duration(seconds: 3),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    isLoggedIn.value = storage.read('isLoggedIn') ?? false;
    final usermap = storage.read('user');
    if (usermap != null) {
      user.value =
          User(username: usermap['username'], password: usermap['password']);
    }
  }
}
