import '../../domain/entities/fetcher_value_entity.dart';

class FetcherValueModel extends FetcherValueEntity {
  FetcherValueModel({
    required String fetcherID,
    required String title,
    String subtitle = '',
    bool status = true,
  }) : super(
          fetcherID: fetcherID,
          title: title,
          subtitle: subtitle,
          status: status,
        );

  // ignore: sort_constructors_first
  factory FetcherValueModel.fromMap(Map<String, dynamic> map) {
    return FetcherValueModel(
      fetcherID: map['value_id'] ?? 'null',
      title: map['title'] ?? 'null',
      subtitle: map['subtitle'] ?? 'null',
      status: map['status'] ?? true,
    );
  }
}
