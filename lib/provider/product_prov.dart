import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  String _productName ='';
  String get productName => _productName;
  int _productQty = 0;
  int get productQty => _productQty;
  int _price = 0;
  int get price => _price;
  int tmp = 0;
  int totalPrice = 0;
  List product = [];

  set productName(String newValue) {
    _productName = newValue;
    tmp++;
    updateProductName(newValue);
    notifyListeners();
  }

  set productQty(int newValue) {
    _productQty = newValue;
    updateProducQty(newValue);
    notifyListeners();
  }

  set price(int newValue) {
    _price = newValue;
    totalPrice += (_productQty * _price);
    updateProductPrice(newValue);
    notifyListeners();
  }

  void totalPriceUpdate(val) {
    totalPrice += _productQty * _price;
    notifyListeners();
  }

  void deleteProduct(val) {
    product.removeAt(val);
    notifyListeners();
  }

  void deleteProductPrice(int val) {
    totalPrice -= val;
  }

  void updateProductName(val) {
    product.add(val);
    notifyListeners();
  }


  void updateProducQty(val) {
    product.add(val);
    notifyListeners();
    
  }

  void updateProductPrice(val) {
    product.add(val);
    notifyListeners();
  }

}