abstract class ICardService {
  Future<void> addCard(String cardNumber);
  Future<dynamic> getCard();
  Future<void> addTransaction(List<dynamic> transaction);
  Future<dynamic> getTransactions();
}
