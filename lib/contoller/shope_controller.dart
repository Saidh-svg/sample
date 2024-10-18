import 'package:get/get.dart';
import 'package:sample/core/api_provider.dart';
import 'package:sample/model/shope_iteams.dart';

class ShopController extends GetxController {
  var products = <ShopItem>[].obs;
  final ApiProvider apiProvider = ApiProvider();

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      List<ShopItem> fetchedProducts = await apiProvider.fetchProducts();
      products.assignAll(fetchedProducts);
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch products');
    }
  }
}
