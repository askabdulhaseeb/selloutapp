class ReportProductEntity {
  ReportProductEntity({
    required this.reportBy,
    required this.category,
    required this.comment,
    required this.timestamp,
  });

  final String reportBy;
  final String category;
  final String comment;
  final DateTime timestamp;
}
