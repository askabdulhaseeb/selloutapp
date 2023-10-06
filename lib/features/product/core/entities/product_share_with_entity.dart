class ProdSharedWithEntity {
  ProdSharedWithEntity({
    required this.uid,
    DateTime? requestTime,
    DateTime? responceTime,
    bool? isApproved,
    bool? isBlocked,
  })  : requestTime = requestTime ?? DateTime.now(),
        responceTime = responceTime ?? DateTime.now(),
        isApproved = isApproved ?? true,
        isBlocked = isBlocked ?? false;

  final String uid;
  final DateTime requestTime;
  final DateTime responceTime;
  final bool isApproved;
  final bool isBlocked;
}
