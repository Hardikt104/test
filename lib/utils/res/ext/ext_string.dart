part of base_ext;

extension StringExtension on String {
  /// SnackBar using GetX
  void get showSnackBar async {
    Get.showSnackbar(
      // ignore: deprecated_member_use
      GetBar(
        message: this,
        isDismissible: true,
        borderRadius: 8.0,
        padding: 16.0.toAll,
        margin: 16.0.toAll,
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(milliseconds: 2000),
        backgroundColor: BaseColors.primary,
      ),
    );
  }

  void showSnackBarOnComplete(Function(SnackbarStatus? status) status) async {
    Get.showSnackbar(
      // ignore: deprecated_member_use
      GetBar(
        message: this,
        isDismissible: true,
        borderRadius: 8.0,
        padding: 16.0.toAll,
        margin: 16.0.toAll,
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(milliseconds: 2000),
        backgroundColor: Colors.green,
        snackbarStatus: status,
      ),
    );
  }

  /// SnackBar using GetX
  void get showErrorSnackBar async {
    Get.showSnackbar(
      // ignore: deprecated_member_use
      GetBar(
        message: this,
        isDismissible: true,
        borderRadius: 8.0,
        padding: 16.0.toAll,
        margin: 16.0.toAll,
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(milliseconds: 2000),
        backgroundColor: Colors.red.withOpacity(0.8),
      ),
    );
  }

  /// SnackBar using GetX
  void get showNetworkSnackBar async {
    Get.showSnackbar(
      // ignore: deprecated_member_use
      GetBar(
        message: this,
        isDismissible: true,
        borderRadius: 8.0,
        padding: 16.0.toAll,
        margin: 16.0.toAll,
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(milliseconds: 2000),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
