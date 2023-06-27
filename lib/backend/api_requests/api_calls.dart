import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCardTokenCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'TEST-4380407483965062-050114-9fe8ddb51c58138885f1163a7c25fd3f-308022601',
    String? publicKey = 'TEST-22bb234c-208e-4249-85b3-ca839f4a600e',
    String? cardNumber = '',
    String? cardholderName = '',
    String? securityCode = '',
    int? cardExpirationMonth,
    int? cardExpirationYear,
  }) {
    final body = '''
{
  "card_number": "${cardNumber}",
  "cardholder": {
    "name": "${cardholderName}"
  },
  "security_code": "${securityCode}",
  "expiration_month": "${cardExpirationMonth}",
  "expiration_year": "${cardExpirationYear}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Card Token',
      apiUrl:
          'https://api.mercadopago.com/v1/card_tokens?public_key=${publicKey}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cardToken(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class CreateCardPaymentCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'TEST-4380407483965062-050114-9fe8ddb51c58138885f1163a7c25fd3f-308022601',
    String? publicKey = 'TEST-22bb234c-208e-4249-85b3-ca839f4a600e',
    String? token = '',
    double? transactionAmount,
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? description = '',
  }) {
    final body = '''
{
  "transaction_amount": ${transactionAmount},
  "token": "${token}",
  "installments": 1,
  "payer": {
    "first_name": "${firstName}",
    "last_name": "${lastName}",
    "email": "${email}",
    "type": "customer"
  },
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Card Payment',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic lastUpdateDate(dynamic response) => getJsonField(
        response,
        r'''$.date_last_updated''',
      );
  static dynamic monetReleaseDate(dynamic response) => getJsonField(
        response,
        r'''$.money_release_date''',
      );
  static dynamic operationType(dynamic response) => getJsonField(
        response,
        r'''$.operation_type''',
      );
  static dynamic paymentMethodId(dynamic response) => getJsonField(
        response,
        r'''$.payment_method.id''',
      );
  static dynamic paymentMethodType(dynamic response) => getJsonField(
        response,
        r'''$.payment_method.type''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic statusDetail(dynamic response) => getJsonField(
        response,
        r'''$.status_detail''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
}

class PaymentInfoCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'TEST-4380407483965062-050114-9fe8ddb51c58138885f1163a7c25fd3f-308022601',
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Payment Info',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateStoreCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'TEST-4380407483965062-050114-9fe8ddb51c58138885f1163a7c25fd3f-308022601',
    String? userId = '',
    String? externalStoreId = '',
    String? storeName = '',
  }) {
    final body = '''
{
  "name": "${storeName}",
  "external_id": "${externalStoreId}",
  "business_hours": {
    "monday": [
      {
        "open": "08:00",
        "close": "12:00"
      }
    ],
    "tuesday": [
      {
        "open": "09:00",
        "close": "18:00"
      }
    ]
  },
  "location": {
    "street_number": "1573",
    "street_name": "Larrea",
    "city_name": "Recoleta",
    "state_name": "Capital Federal",
    "latitude": -34.58907065407561,
    "longitude": -58.398031855822495
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Store',
      apiUrl: 'https://api.mercadopago.com/users/${userId}/stores',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreatePOSCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'TEST-4380407483965062-050114-9fe8ddb51c58138885f1163a7c25fd3f-308022601',
    String? storeId = '',
    String? externalStoreId = '',
    String? externalPosId = '',
  }) {
    final body = '''
{
  "name": "Online POS",
  "fixed_amount": false,
  "store_id": ${storeId},
  "external_store_id": ${externalStoreId},
  "external_id": ${externalPosId},
  "category": 621102
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create POS',
      apiUrl: 'https://api.mercadopago.com/pos',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetStoreCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken =
        'TEST-4380407483965062-050114-9fe8ddb51c58138885f1163a7c25fd3f-308022601',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Store',
      apiUrl: 'https://api.mercadopago.com/stores/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class QRGenerationCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'TEST-4380407483965062-050114-9fe8ddb51c58138885f1163a7c25fd3f-308022601',
    String? userId = '',
    String? externalPosId = '',
    String? id = '',
    int? tipAmount,
  }) {
    final body = '''
{
  "external_reference": "${id}",
  "title": "Tip",
  "description": "A sign of generosity",
  "total_amount": ${tipAmount},
  "items": [
    {
      "category": "donation",
      "title": "Tip",
      "description": "A sign of generosity",
      "unit_price": 10,
      "quantity": 1,
      "unit_measure": "unit",
      "total_amount": 10
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'QR Generation',
      apiUrl:
          'https://api.mercadopago.com/instore/orders/qr/seller/collectors/${userId}/pos/${externalPosId}/qrs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
