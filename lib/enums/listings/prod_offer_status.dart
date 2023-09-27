enum ProdOfferStatusEnum {
  pending('panding','Pending'),
  approved('approved','Approved'),
  rejected('rejected','Rejected');

  const ProdOfferStatusEnum(this.json, this.title);
  final String json;
  final String title;
}

class ProdOfferStatusEnumConvertor {
   ProdOfferStatusEnum fromMap(String status) {
    if (status == 'pending') {
      return ProdOfferStatusEnum.pending;
    } else if (status == 'approved') {
      return ProdOfferStatusEnum.approved;
    } else {
      return ProdOfferStatusEnum.rejected;
    }
  }
}
