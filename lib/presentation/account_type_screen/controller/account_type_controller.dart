import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/account_type_screen/models/account_type_model.dart';

class AccountTypeController extends GetxController {
  Rx<AccountTypeModel> accountTypeModelObj = AccountTypeModel().obs;

  void selectParent() {
    accountTypeModelObj.update((model) {
      model!.parent = true;
    });
  }

  void selectTeacher() {
    accountTypeModelObj.update((model) {
      model!.parent = false;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
