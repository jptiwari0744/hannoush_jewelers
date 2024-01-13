import 'dart:convert';

import 'package:ecommerce/api/graphql/mutation/home.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../api/graphql/client.dart';

class HomeProvider with ChangeNotifier {
  bool isLoading = false;
  dynamic list = [];
  var token;
  var err;
  var res;
  EndPoint point = EndPoint();
  homeApi(context) async {
    isLoading = true;
    notifyListeners();
    ValueNotifier<GraphQLClient> _client = point.getClient(context);
    QueryResult result = await _client.value.mutate(
        MutationOptions(document: gql(homeSchema.homeJson), variables: {}));
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

    // print(result);
    // print(result.data['']);
    print(result.data?['cmsBlocks']['items'][0]['content']);
    res = result.data?['cmsBlocks']['items'][0]['content'];
    // return res;
    // print(
    //     'jsonencode${json.encode(result.data?['cmsBlocks']['items'][0]['content'])}');
    print(
        'jsonddcode${json.decode(result.data?['cmsBlocks']['items'][0]['content'])}');
    print(
        'json.decode${jsonDecode(result.data?['cmsBlocks']['items'][0]['content'])}');
    list = result.data;

    notifyListeners();
  }
}
