class FetcherValueEntity {
  FetcherValueEntity({
    required this.fetcherID,
    required this.title,
    this.subtitle = '',
    this.status = true,
  });

  final String fetcherID;
  final String title;
  final String subtitle;
  final bool status;
}
