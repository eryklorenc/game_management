class ItemModelMostPopular {
  const ItemModelMostPopular({
    required this.content,
  });
  final String content;

  ItemModelMostPopular.fromJson(Map<String, dynamic> json)
      : content = json['body'];
}
