class ApiContest {
  static const String baseUrl = 'https://accept.paymob.com/api';
  // payment should change for your API in PayMob
  static const String paymentApiKey =
      'ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2T1RRek56ZzJMQ0p1WVcxbElqb2lhVzVwZEdsaGJDSjkuY0ZqU2g4Q09nbEY2T1hualRad3NwZXNTdFV1aXF5YmR3RTFxVU9sRDNuM3Y1NTE0UmlJaW9Wa01IcUJhQVZmS0JXYUFJeEF4aF9jXzA0bUVZd1hXWlE=';
  static const String getAuthToken = '/auth/tokens';
  static const getOrderId = '/ecommerce/orders';
  static const getPaymentRequest = '/acceptance/payment_keys';
  static const getRefCode = '/acceptance/payments/pay';
  static String visaUrl =
      '$baseUrl/acceptance/iframes/806007?payment_token=$finalToken';
  // https://accept.paymob.com/api/acceptance/iframes/806007?payment_token=
  static String paymentFirstToken = '';

  static String paymentOrderId = '';

  static String finalToken = '';
// 4380697 enter your onlineCard
  static const String integrationIdCard = '4380697';
  // static const String integrationIdKiosk = 'ENTER_YOUR_INTEGRATION_ID';

  static String refCode = '';
}

class AppImages {
  static const String refCodeImage =
      "https://cdn-icons-png.flaticon.com/128/4090/4090458.png";
  static const String visaImage =
      "https://cdn-icons-png.flaticon.com/128/349/349221.png";
}
// i try to use payMob but when i try to contact to them again they sent a message told me the sandbox is full and there is no response again