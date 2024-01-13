import 'package:ecommerce/api/graphql/mutation/login.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/graphql/client.dart';
import 'authProvider.dart';

class LoginProvider with ChangeNotifier {
  bool isLoading = false;
  dynamic list = [];
  var token;
  var err;
  EndPoint point = EndPoint();
  loginApi(email, password, context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    isLoading = true;
    notifyListeners();
    ValueNotifier<GraphQLClient> _client = point.getClient(context);
    QueryResult result = await _client.value.mutate(MutationOptions(
        document: gql(loginSchema.loginJson),
        variables: {'email': email, 'password': password}));
    // isLoading = false;
    if (result.hasException) {
      // Check if there is any exception raised.
      isLoading = false;
      if (result.exception!.graphqlErrors.isEmpty) {
        err = "Internet is not found";
      } else {
        err = result.exception!.graphqlErrors[0].message.toString();
      }
      notifyListeners();
    } else {
      isLoading = false;
      // _response = "Todo was successfully added";
      notifyListeners();
    }

    print(result);
    // print('res${jsonDecode(result as String)}');
    list = result.data;
    // print(list['generateCustomerToken']['token']);
    if (result.data != null) {
      token = list['generateCustomerToken']['token'];
      Provider.of<AuthProvider>(context, listen: false).setAuthToken(token);
    }

    notifyListeners();
  }
}
