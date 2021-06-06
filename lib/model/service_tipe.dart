class ServiceTipe {
  String imageAssets;
  String nameService;
  String priceService;
  String typeService;
  String productService;
  String descriptionService;
  String provisionService;
  String recommendedFor;
  String flatPrice;
  List <String> licenceProduct;
  List <String> specsItem;
  List <String> recommendedRequirenmet;
  List <String> packetInclude;
  List <String> benefitService;
  List <String> voucherInstruction;
  List <String> moreInfo;
  String sopMechanics;
  String contacs;
  bool isExpanded;

  ServiceTipe({
      this.imageAssets,
      this.nameService,
      this.priceService,
      this.typeService,
      this.productService,
      this.descriptionService,
      this.provisionService,
      this.recommendedFor,
      this.flatPrice,
      this.licenceProduct,
      this.specsItem,
      this.recommendedRequirenmet,
      this.packetInclude,
      this.benefitService,
      this.voucherInstruction,
      this.sopMechanics,
      this.moreInfo,
      this.contacs,
      this.isExpanded = false
  }
      );
}