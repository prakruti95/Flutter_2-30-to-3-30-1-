//oder print message
Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

//future return type and 4 sec delay
Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

//async and await use
void main() async {
  countSeconds(4);
  await printOrderMessage();
}
//use for loop and define int s and print i++ until i=4
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}