import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'products.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider {
  List<Products>? productsModel;

  Future<List<Products>?> getProducts() async {
    Response productResponse = await Dio().get(
      "https://fakestoreapi.com/products",
      queryParameters: {"select": "id,title,price,description,image,category"},
    );

    productsModel = productsFromJson(productResponse.data);
    return productsModel;
  }

  Future userLogin({required String userName, required String userPassword}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    FormData userData = FormData.fromMap({"username": userName, "password": userPassword});

    try {
      Response userLogResponse = await Dio().post("https://dummyjson.com/auth/login", data: userData);
      await prefs.setString("userTaken", userLogResponse.data["taken"]);
      return "Login success";
    } catch (e) {
      if (e is DioException) {
        return e.response!.data["message"];
      }
    }
  }
}
