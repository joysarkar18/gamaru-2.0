class OfferModel {
  final int id;
  final DateTime createdAt;
  final String offerType;
  final String banner;
  final bool isActive;
  final String desc;

  OfferModel({
    required this.id,
    required this.createdAt,
    required this.offerType,
    required this.banner,
    required this.isActive,
    required this.desc,
  });

  // A factory method to create an Offer from a Map (JSON)
  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      id: json['id'],
      createdAt: DateTime.parse(json['created_at']),
      offerType: json['offerType'],
      banner: json['banner'],
      isActive: json['isActive'],
      desc: json['desc'],
    );
  }
}
