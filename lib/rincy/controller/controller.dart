import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:nexteon_website_machinetest/rincy/model/model.dart';
import 'package:nexteon_website_machinetest/rincy/service/service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Postcontroller extends GetxController {
  RxList<ProductModel> posts = RxList<ProductModel>();
  RxBool isLoading = true.obs;
  RxBool isListDowN = false.obs;
  RxBool isNetConnected = true.obs;
  var scrollController = ItemScrollController();

  Future<void> isInternetConnected() async {
    isNetConnected.value = await InternetConnection().hasInternetAccess;
    print("Internet connection status: ${isNetConnected.value}");
  }

  Future<void> fetchPosts() async {
    await isInternetConnected();
    if (!isNetConnected.value) {
      print("No internet connection.");
      isLoading.value = false;
      return;
    }

    isLoading.value = true;
    print("Fetching posts...");
    try {
      var response = await Dioservice.getPosts();
      print("Response status code: ${response.statusCode}");

      if (response.statusCode == 200) {
        print('Response data: ${response.data}');
        response.data.forEach((data) {
          posts.add(ProductModel.fromJson(data));
          print('Added post: ${data}');
        });
        isLoading.value = false;
      } else {
        print("Failed to fetch posts: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching posts: $e");
      isLoading.value = false;
    }
  }

  void scrollListDown() {
    scrollController.scrollTo(
      index: posts.length - 1,
      duration: Duration(seconds: 3),
      curve: Curves.easeInOutCirc,
    );
    isListDowN.value = false;
  }

  void scrollListUp() {
    scrollController.scrollTo(
      index: 0,
      duration: Duration(seconds: 3),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    isListDowN.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }
}
