import 'package:ecommerce/api/graphql/mutation/logOut.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../api/graphql/client.dart';

class LogOutProvider with ChangeNotifier {
  bool isLoading = false;
  var token;
  var err;
  var res;
  EndPoint point = EndPoint();
  logOutApi(context) async {
    isLoading = true;
    notifyListeners();
    ValueNotifier<GraphQLClient> _client = point.getClient(context);
    QueryResult result = await _client.value.mutate(
        MutationOptions(document: gql(logOutSchema.logOutJson), variables: {}));
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
      res = result.data?['result'];
      print(result.data?['result']);
      // _response = "Todo was successfully added";
      notifyListeners();
    }

    print(result);

    notifyListeners();
  }
}
