import 'package:http/http.dart' as http;

Future<Object> getBalances(String address, String chain) async {
  final url = Uri.http('192.168.100.47:5002', '/get_token_balance', {
    'address': address,
    'chain': chain,
  });

  final response =  {
  
    "statusCode": 200,
    "body": {
      "message": "Hello, this is a dummy response!",
      "status": "success",
      "data": {
        "balance": "189992323232322",
        "id": 1,
        "name": "Test Item",
        "description": "This is a test item used for a dummy response."
      }
    }
  };

  if (response["statusCode"] == 200) {
    return response["body"]!;
  } else {
    throw Exception('Failed to get balances');
  }
}
