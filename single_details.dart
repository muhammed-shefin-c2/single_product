import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchingproducts() async {
  try {
    final url = Uri.parse('https://fakestoreapi.com/products/1');
    final response_1 = await http.get(url);

    var only_one = jsonDecode(response_1.body);

    print("*******************************************************");
    print('*Title: ${only_one['title']}                          ');
    print('*Price: \$${only_one['price']}                        ');
    print('*ID: ${only_one['id']}                                ');
    print('*Description: ${only_one['description']}              ');
    print('rating: ${only_one['rating']['rate']}                 ');
    print('number of review: ${only_one['rating']['count']}      ');
    print("******************************************************");

    //if (response_1.statusCode == 200) {
    //print('Succes code: ${response_1.statusCode}');
    //print('valid request');

    //List<dynamic> products = jsonDecode(response_1.body);
    //print('Total number of products: ${products.length}');

    //List<dynamic> inexpensives = products.where((cheaps) {
    //return cheaps['price'] > 100;
    //}).toList();

    //var mostExpensiveProduct = products.reduce((current, next) {
    //return current['price'] > next['price'] ? current : next;
    //});
    //print("*******************************************************");
    //print('*Most Expensive Product:                              *');
    //print('*Title: ${mostExpensiveProduct['title']}              *');
    //print('*Price: \$${mostExpensiveProduct['price']}            *');
    //print('*ID: ${mostExpensiveProduct['id']}                    *');
    //print('*Description: ${mostExpensiveProduct['description']}  *');
    //print("******************************************************");
    //double rating = mostExpensiveProduct['rating']['rate'];
    //String stars = _getStarsFromRating(rating);
    //print('Rating: $stars');

    //print('Response: ${response_1.body}');
    //} else {
    //print('Failed to load products. Status: ${response_1.statusCode}');
    //}
  } catch (e) {
    print('invalid come through');
  }
}

void main() {
  print(fetchingproducts());
}
