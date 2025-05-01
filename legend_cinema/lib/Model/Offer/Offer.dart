class Offer {
  const Offer(this.UrlImage, this.description, this.label);
  final String description;
  final String UrlImage;
  final String label;
  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(json['pathImage'], json['detail'], json['label']);
  }
}
