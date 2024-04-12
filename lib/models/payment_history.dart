class PaymentHistory {
  final String timeOfPayment;
  final String name;
  final String phoneNumber;
  final String amount;
  final String providerLogo;
  final bool isSuccessful;
  final String reference;
  final String accountName;
  final bool isFavorite;

  PaymentHistory({
    required this.timeOfPayment,
    required this.name,
    required this.phoneNumber,
    required this.amount,
    required this.providerLogo,
    required this.isSuccessful,
    required this.reference,
    required this.accountName,
    required this.isFavorite,
  });
}
