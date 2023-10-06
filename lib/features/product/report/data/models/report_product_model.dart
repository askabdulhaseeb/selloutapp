import '../../domain/entities/report_product_entity.dart';

class ReportProductModel extends ReportProductEntity {
  ReportProductModel({
    required String reportBy,
    required String category,
    required String comment,
    required DateTime timestamp,
  }) : super(
          reportBy: reportBy,
          category: category,
          comment: comment,
          timestamp: timestamp,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'report_by': reportBy,
      'category': category,
      'comment': comment,
      'timestamp': timestamp,
    };
  }

  // ignore: sort_constructors_first
  factory ReportProductModel.fromMap(Map<String, dynamic> map) {
    return ReportProductModel(
      reportBy: map['report_by'] ?? '',
      category: map['category'] ?? '',
      comment: map['comment'] ?? '',
      timestamp: map['timestamp']?.toInt() ?? 0,
    );
  }
}
