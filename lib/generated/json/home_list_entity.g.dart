import 'package:tms_flutter/generated/json/base/json_convert_content.dart';
import 'package:tms_flutter/app/model/home_list_entity.dart';

HomeListEntity $HomeListEntityFromJson(Map<String, dynamic> json) {
  final HomeListEntity homeListEntity = HomeListEntity();
  final HomeListWeightRule? weightRule = jsonConvert.convert<
      HomeListWeightRule>(json['WeightRule']);
  if (weightRule != null) {
    homeListEntity.weightRule = weightRule;
  }
  final int? no = jsonConvert.convert<int>(json['No']);
  if (no != null) {
    homeListEntity.no = no;
  }
  final HomeListPayType? payType = jsonConvert.convert<HomeListPayType>(
      json['PayType']);
  if (payType != null) {
    homeListEntity.payType = payType;
  }
  final HomeListContractMaterial? contractMaterial = jsonConvert.convert<
      HomeListContractMaterial>(json['ContractMaterial']);
  if (contractMaterial != null) {
    homeListEntity.contractMaterial = contractMaterial;
  }
  final HomeListOrderPlan? orderPlan = jsonConvert.convert<HomeListOrderPlan>(
      json['OrderPlan']);
  if (orderPlan != null) {
    homeListEntity.orderPlan = orderPlan;
  }
  final HomeListChargingRule? chargingRule = jsonConvert.convert<
      HomeListChargingRule>(json['ChargingRule']);
  if (chargingRule != null) {
    homeListEntity.chargingRule = chargingRule;
  }
  final HomeListLogisticsConsignor? logisticsConsignor = jsonConvert.convert<
      HomeListLogisticsConsignor>(json['LogisticsConsignor']);
  if (logisticsConsignor != null) {
    homeListEntity.logisticsConsignor = logisticsConsignor;
  }
  final HomeListMaterialType? materialType = jsonConvert.convert<
      HomeListMaterialType>(json['MaterialType']);
  if (materialType != null) {
    homeListEntity.materialType = materialType;
  }
  final HomeListDeliveryWay? deliveryWay = jsonConvert.convert<
      HomeListDeliveryWay>(json['DeliveryWay']);
  if (deliveryWay != null) {
    homeListEntity.deliveryWay = deliveryWay;
  }
  final String? license = jsonConvert.convert<String>(json['license']);
  if (license != null) {
    homeListEntity.license = license;
  }
  final HomeListOrderStatus? orderStatus = jsonConvert.convert<
      HomeListOrderStatus>(json['OrderStatus']);
  if (orderStatus != null) {
    homeListEntity.orderStatus = orderStatus;
  }
  final HomeListOrderRoute? orderRoute = jsonConvert.convert<
      HomeListOrderRoute>(json['OrderRoute']);
  if (orderRoute != null) {
    homeListEntity.orderRoute = orderRoute;
  }
  final HomeListMaterialUnit? materialUnit = jsonConvert.convert<
      HomeListMaterialUnit>(json['MaterialUnit']);
  if (materialUnit != null) {
    homeListEntity.materialUnit = materialUnit;
  }
  final HomeListRoundingType? roundingType = jsonConvert.convert<
      HomeListRoundingType>(json['RoundingType']);
  if (roundingType != null) {
    homeListEntity.roundingType = roundingType;
  }
  final HomeListDeductionBasis? deductionBasis = jsonConvert.convert<
      HomeListDeductionBasis>(json['DeductionBasis']);
  if (deductionBasis != null) {
    homeListEntity.deductionBasis = deductionBasis;
  }
  final HomeListCodeTmsOrderType? codeTmsOrderType = jsonConvert.convert<
      HomeListCodeTmsOrderType>(json['CodeTmsOrderType']);
  if (codeTmsOrderType != null) {
    homeListEntity.codeTmsOrderType = codeTmsOrderType;
  }
  final HomeListContract? contract = jsonConvert.convert<HomeListContract>(
      json['Contract']);
  if (contract != null) {
    homeListEntity.contract = contract;
  }
  final HomeListDeliveryType? deliveryType = jsonConvert.convert<
      HomeListDeliveryType>(json['DeliveryType']);
  if (deliveryType != null) {
    homeListEntity.deliveryType = deliveryType;
  }
  final HomeListLogistics? logistics = jsonConvert.convert<HomeListLogistics>(
      json['Logistics']);
  if (logistics != null) {
    homeListEntity.logistics = logistics;
  }
  return homeListEntity;
}

Map<String, dynamic> $HomeListEntityToJson(HomeListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['WeightRule'] = entity.weightRule.toJson();
  data['No'] = entity.no;
  data['PayType'] = entity.payType.toJson();
  data['ContractMaterial'] = entity.contractMaterial.toJson();
  data['OrderPlan'] = entity.orderPlan.toJson();
  data['ChargingRule'] = entity.chargingRule.toJson();
  data['LogisticsConsignor'] = entity.logisticsConsignor.toJson();
  data['MaterialType'] = entity.materialType.toJson();
  data['DeliveryWay'] = entity.deliveryWay.toJson();
  data['license'] = entity.license;
  data['OrderStatus'] = entity.orderStatus.toJson();
  data['OrderRoute'] = entity.orderRoute.toJson();
  data['MaterialUnit'] = entity.materialUnit.toJson();
  data['RoundingType'] = entity.roundingType.toJson();
  data['DeductionBasis'] = entity.deductionBasis.toJson();
  data['CodeTmsOrderType'] = entity.codeTmsOrderType.toJson();
  data['Contract'] = entity.contract.toJson();
  data['DeliveryType'] = entity.deliveryType.toJson();
  data['Logistics'] = entity.logistics.toJson();
  return data;
}

extension HomeListEntityExtension on HomeListEntity {
  HomeListEntity copyWith({
    HomeListWeightRule? weightRule,
    int? no,
    HomeListPayType? payType,
    HomeListContractMaterial? contractMaterial,
    HomeListOrderPlan? orderPlan,
    HomeListChargingRule? chargingRule,
    HomeListLogisticsConsignor? logisticsConsignor,
    HomeListMaterialType? materialType,
    HomeListDeliveryWay? deliveryWay,
    String? license,
    HomeListOrderStatus? orderStatus,
    HomeListOrderRoute? orderRoute,
    HomeListMaterialUnit? materialUnit,
    HomeListRoundingType? roundingType,
    HomeListDeductionBasis? deductionBasis,
    HomeListCodeTmsOrderType? codeTmsOrderType,
    HomeListContract? contract,
    HomeListDeliveryType? deliveryType,
    HomeListLogistics? logistics,
  }) {
    return HomeListEntity()
      ..weightRule = weightRule ?? this.weightRule
      ..no = no ?? this.no
      ..payType = payType ?? this.payType
      ..contractMaterial = contractMaterial ?? this.contractMaterial
      ..orderPlan = orderPlan ?? this.orderPlan
      ..chargingRule = chargingRule ?? this.chargingRule
      ..logisticsConsignor = logisticsConsignor ?? this.logisticsConsignor
      ..materialType = materialType ?? this.materialType
      ..deliveryWay = deliveryWay ?? this.deliveryWay
      ..license = license ?? this.license
      ..orderStatus = orderStatus ?? this.orderStatus
      ..orderRoute = orderRoute ?? this.orderRoute
      ..materialUnit = materialUnit ?? this.materialUnit
      ..roundingType = roundingType ?? this.roundingType
      ..deductionBasis = deductionBasis ?? this.deductionBasis
      ..codeTmsOrderType = codeTmsOrderType ?? this.codeTmsOrderType
      ..contract = contract ?? this.contract
      ..deliveryType = deliveryType ?? this.deliveryType
      ..logistics = logistics ?? this.logistics;
  }
}

HomeListWeightRule $HomeListWeightRuleFromJson(Map<String, dynamic> json) {
  final HomeListWeightRule homeListWeightRule = HomeListWeightRule();
  final String? weightRuleName = jsonConvert.convert<String>(
      json['weightRuleName']);
  if (weightRuleName != null) {
    homeListWeightRule.weightRuleName = weightRuleName;
  }
  return homeListWeightRule;
}

Map<String, dynamic> $HomeListWeightRuleToJson(HomeListWeightRule entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['weightRuleName'] = entity.weightRuleName;
  return data;
}

extension HomeListWeightRuleExtension on HomeListWeightRule {
  HomeListWeightRule copyWith({
    String? weightRuleName,
  }) {
    return HomeListWeightRule()
      ..weightRuleName = weightRuleName ?? this.weightRuleName;
  }
}

HomeListPayType $HomeListPayTypeFromJson(Map<String, dynamic> json) {
  final HomeListPayType homeListPayType = HomeListPayType();
  final String? payTypeName = jsonConvert.convert<String>(json['payTypeName']);
  if (payTypeName != null) {
    homeListPayType.payTypeName = payTypeName;
  }
  return homeListPayType;
}

Map<String, dynamic> $HomeListPayTypeToJson(HomeListPayType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['payTypeName'] = entity.payTypeName;
  return data;
}

extension HomeListPayTypeExtension on HomeListPayType {
  HomeListPayType copyWith({
    String? payTypeName,
  }) {
    return HomeListPayType()
      ..payTypeName = payTypeName ?? this.payTypeName;
  }
}

HomeListContractMaterial $HomeListContractMaterialFromJson(
    Map<String, dynamic> json) {
  final HomeListContractMaterial homeListContractMaterial = HomeListContractMaterial();
  final String? materialType = jsonConvert.convert<String>(
      json['materialType']);
  if (materialType != null) {
    homeListContractMaterial.materialType = materialType;
  }
  final String? materialName = jsonConvert.convert<String>(
      json['materialName']);
  if (materialName != null) {
    homeListContractMaterial.materialName = materialName;
  }
  final String? materialUnit = jsonConvert.convert<String>(
      json['materialUnit']);
  if (materialUnit != null) {
    homeListContractMaterial.materialUnit = materialUnit;
  }
  return homeListContractMaterial;
}

Map<String, dynamic> $HomeListContractMaterialToJson(
    HomeListContractMaterial entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['materialType'] = entity.materialType;
  data['materialName'] = entity.materialName;
  data['materialUnit'] = entity.materialUnit;
  return data;
}

extension HomeListContractMaterialExtension on HomeListContractMaterial {
  HomeListContractMaterial copyWith({
    String? materialType,
    String? materialName,
    String? materialUnit,
  }) {
    return HomeListContractMaterial()
      ..materialType = materialType ?? this.materialType
      ..materialName = materialName ?? this.materialName
      ..materialUnit = materialUnit ?? this.materialUnit;
  }
}

HomeListOrderPlan $HomeListOrderPlanFromJson(Map<String, dynamic> json) {
  final HomeListOrderPlan homeListOrderPlan = HomeListOrderPlan();
  final double? oilGasCost = jsonConvert.convert<double>(json['oilGasCost']);
  if (oilGasCost != null) {
    homeListOrderPlan.oilGasCost = oilGasCost;
  }
  final int? isSms = jsonConvert.convert<int>(json['isSms']);
  if (isSms != null) {
    homeListOrderPlan.isSms = isSms;
  }
  final String? serviceName = jsonConvert.convert<String>(json['serviceName']);
  if (serviceName != null) {
    homeListOrderPlan.serviceName = serviceName;
  }
  final double? loadAmount = jsonConvert.convert<double>(json['loadAmount']);
  if (loadAmount != null) {
    homeListOrderPlan.loadAmount = loadAmount;
  }
  final double? payUnitPrice = jsonConvert.convert<double>(
      json['payUnitPrice']);
  if (payUnitPrice != null) {
    homeListOrderPlan.payUnitPrice = payUnitPrice;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    homeListOrderPlan.createTime = createTime;
  }
  final String? materialName = jsonConvert.convert<String>(
      json['materialName']);
  if (materialName != null) {
    homeListOrderPlan.materialName = materialName;
  }
  final int? chargingRuleId = jsonConvert.convert<int>(json['chargingRuleId']);
  if (chargingRuleId != null) {
    homeListOrderPlan.chargingRuleId = chargingRuleId;
  }
  final int? orderPermission = jsonConvert.convert<int>(
      json['orderPermission']);
  if (orderPermission != null) {
    homeListOrderPlan.orderPermission = orderPermission;
  }
  final int? materialTypeId = jsonConvert.convert<int>(json['materialTypeId']);
  if (materialTypeId != null) {
    homeListOrderPlan.materialTypeId = materialTypeId;
  }
  final double? totalStock = jsonConvert.convert<double>(json['totalStock']);
  if (totalStock != null) {
    homeListOrderPlan.totalStock = totalStock;
  }
  final double? lossNums = jsonConvert.convert<double>(json['lossNums']);
  if (lossNums != null) {
    homeListOrderPlan.lossNums = lossNums;
  }
  final String? orderCode = jsonConvert.convert<String>(json['orderCode']);
  if (orderCode != null) {
    homeListOrderPlan.orderCode = orderCode;
  }
  final double? otherDeductionsByWhole = jsonConvert.convert<double>(
      json['otherDeductionsByWhole']);
  if (otherDeductionsByWhole != null) {
    homeListOrderPlan.otherDeductionsByWhole = otherDeductionsByWhole;
  }
  final int? deductionBasisId = jsonConvert.convert<int>(
      json['deductionBasisId']);
  if (deductionBasisId != null) {
    homeListOrderPlan.deductionBasisId = deductionBasisId;
  }
  final double? unloadAmount = jsonConvert.convert<double>(
      json['unloadAmount']);
  if (unloadAmount != null) {
    homeListOrderPlan.unloadAmount = unloadAmount;
  }
  final int? creatorId = jsonConvert.convert<int>(json['creatorId']);
  if (creatorId != null) {
    homeListOrderPlan.creatorId = creatorId;
  }
  final double? prepayment = jsonConvert.convert<double>(json['prepayment']);
  if (prepayment != null) {
    homeListOrderPlan.prepayment = prepayment;
  }
  final String? contractCode = jsonConvert.convert<String>(
      json['contractCode']);
  if (contractCode != null) {
    homeListOrderPlan.contractCode = contractCode;
  }
  final double? parkingFee = jsonConvert.convert<double>(json['parkingFee']);
  if (parkingFee != null) {
    homeListOrderPlan.parkingFee = parkingFee;
  }
  final int? orderFreight = jsonConvert.convert<int>(json['orderFreight']);
  if (orderFreight != null) {
    homeListOrderPlan.orderFreight = orderFreight;
  }
  final int? orderStatus = jsonConvert.convert<int>(json['orderStatus']);
  if (orderStatus != null) {
    homeListOrderPlan.orderStatus = orderStatus;
  }
  final double? overflowNums = jsonConvert.convert<double>(
      json['overflowNums']);
  if (overflowNums != null) {
    homeListOrderPlan.overflowNums = overflowNums;
  }
  final int? maxTruckNum = jsonConvert.convert<int>(json['maxTruckNum']);
  if (maxTruckNum != null) {
    homeListOrderPlan.maxTruckNum = maxTruckNum;
  }
  final int? orderLence = jsonConvert.convert<int>(json['orderLence']);
  if (orderLence != null) {
    homeListOrderPlan.orderLence = orderLence;
  }
  final int? orderTransportId = jsonConvert.convert<int>(
      json['orderTransportId']);
  if (orderTransportId != null) {
    homeListOrderPlan.orderTransportId = orderTransportId;
  }
  final int? orderPrivate = jsonConvert.convert<int>(json['orderPrivate']);
  if (orderPrivate != null) {
    homeListOrderPlan.orderPrivate = orderPrivate;
  }
  final String? orderName = jsonConvert.convert<String>(json['orderName']);
  if (orderName != null) {
    homeListOrderPlan.orderName = orderName;
  }
  final int? materialUnitId = jsonConvert.convert<int>(json['materialUnitId']);
  if (materialUnitId != null) {
    homeListOrderPlan.materialUnitId = materialUnitId;
  }
  final int? orderPaytypeId = jsonConvert.convert<int>(json['orderPaytypeId']);
  if (orderPaytypeId != null) {
    homeListOrderPlan.orderPaytypeId = orderPaytypeId;
  }
  final int? roundingType = jsonConvert.convert<int>(json['roundingType']);
  if (roundingType != null) {
    homeListOrderPlan.roundingType = roundingType;
  }
  final double? maxSendOut = jsonConvert.convert<double>(json['maxSendOut']);
  if (maxSendOut != null) {
    homeListOrderPlan.maxSendOut = maxSendOut;
  }
  final String? preloadEndTime = jsonConvert.convert<String>(
      json['preloadEndTime']);
  if (preloadEndTime != null) {
    homeListOrderPlan.preloadEndTime = preloadEndTime;
  }
  final int? logisticsId = jsonConvert.convert<int>(json['logisticsId']);
  if (logisticsId != null) {
    homeListOrderPlan.logisticsId = logisticsId;
  }
  final double? totalSendnums = jsonConvert.convert<double>(
      json['totalSendnums']);
  if (totalSendnums != null) {
    homeListOrderPlan.totalSendnums = totalSendnums;
  }
  final int? contractId = jsonConvert.convert<int>(json['contractId']);
  if (contractId != null) {
    homeListOrderPlan.contractId = contractId;
  }
  final int? orderDispatchId = jsonConvert.convert<int>(
      json['orderDispatchId']);
  if (orderDispatchId != null) {
    homeListOrderPlan.orderDispatchId = orderDispatchId;
  }
  final double? goodsUnitPrice = jsonConvert.convert<double>(
      json['goodsUnitPrice']);
  if (goodsUnitPrice != null) {
    homeListOrderPlan.goodsUnitPrice = goodsUnitPrice;
  }
  final double? taxRate = jsonConvert.convert<double>(json['taxRate']);
  if (taxRate != null) {
    homeListOrderPlan.taxRate = taxRate;
  }
  final double? insuranceCostByWhole = jsonConvert.convert<double>(
      json['insuranceCostByWhole']);
  if (insuranceCostByWhole != null) {
    homeListOrderPlan.insuranceCostByWhole = insuranceCostByWhole;
  }
  final double? lossPrice = jsonConvert.convert<double>(json['lossPrice']);
  if (lossPrice != null) {
    homeListOrderPlan.lossPrice = lossPrice;
  }
  final double? wholeTruckFee = jsonConvert.convert<double>(
      json['wholeTruckFee']);
  if (wholeTruckFee != null) {
    homeListOrderPlan.wholeTruckFee = wholeTruckFee;
  }
  final int? goodId = jsonConvert.convert<int>(json['goodId']);
  if (goodId != null) {
    homeListOrderPlan.goodId = goodId;
  }
  final int? weightType = jsonConvert.convert<int>(json['weightType']);
  if (weightType != null) {
    homeListOrderPlan.weightType = weightType;
  }
  final String? preloadStartTime = jsonConvert.convert<String>(
      json['preloadStartTime']);
  if (preloadStartTime != null) {
    homeListOrderPlan.preloadStartTime = preloadStartTime;
  }
  final double? totalLoading = jsonConvert.convert<double>(
      json['totalLoading']);
  if (totalLoading != null) {
    homeListOrderPlan.totalLoading = totalLoading;
  }
  final double? insuranceCost = jsonConvert.convert<double>(
      json['insuranceCost']);
  if (insuranceCost != null) {
    homeListOrderPlan.insuranceCost = insuranceCost;
  }
  final double? totalUnloadNums = jsonConvert.convert<double>(
      json['totalUnloadNums']);
  if (totalUnloadNums != null) {
    homeListOrderPlan.totalUnloadNums = totalUnloadNums;
  }
  final int? orderConsignor = jsonConvert.convert<int>(json['orderConsignor']);
  if (orderConsignor != null) {
    homeListOrderPlan.orderConsignor = orderConsignor;
  }
  final double? fineAmount = jsonConvert.convert<double>(json['fineAmount']);
  if (fineAmount != null) {
    homeListOrderPlan.fineAmount = fineAmount;
  }
  final double? goodsUnitPriceByWhole = jsonConvert.convert<double>(
      json['goodsUnitPriceByWhole']);
  if (goodsUnitPriceByWhole != null) {
    homeListOrderPlan.goodsUnitPriceByWhole = goodsUnitPriceByWhole;
  }
  final String? creatorName = jsonConvert.convert<String>(json['creatorName']);
  if (creatorName != null) {
    homeListOrderPlan.creatorName = creatorName;
  }
  final int? orderType = jsonConvert.convert<int>(json['orderType']);
  if (orderType != null) {
    homeListOrderPlan.orderType = orderType;
  }
  final int? isTrack = jsonConvert.convert<int>(json['isTrack']);
  if (isTrack != null) {
    homeListOrderPlan.isTrack = isTrack;
  }
  final double? infoPriceByWhole = jsonConvert.convert<double>(
      json['infoPriceByWhole']);
  if (infoPriceByWhole != null) {
    homeListOrderPlan.infoPriceByWhole = infoPriceByWhole;
  }
  final double? overflowPrice = jsonConvert.convert<double>(
      json['overflowPrice']);
  if (overflowPrice != null) {
    homeListOrderPlan.overflowPrice = overflowPrice;
  }
  final String? qrCode = jsonConvert.convert<String>(json['qrCode']);
  if (qrCode != null) {
    homeListOrderPlan.qrCode = qrCode;
  }
  final String? materialUnitName = jsonConvert.convert<String>(
      json['materialUnitName']);
  if (materialUnitName != null) {
    homeListOrderPlan.materialUnitName = materialUnitName;
  }
  final int? orderInsurance = jsonConvert.convert<int>(json['orderInsurance']);
  if (orderInsurance != null) {
    homeListOrderPlan.orderInsurance = orderInsurance;
  }
  final double? infoPrice = jsonConvert.convert<double>(json['infoPrice']);
  if (infoPrice != null) {
    homeListOrderPlan.infoPrice = infoPrice;
  }
  final String? serviceTel = jsonConvert.convert<String>(json['serviceTel']);
  if (serviceTel != null) {
    homeListOrderPlan.serviceTel = serviceTel;
  }
  final double? infoAmount = jsonConvert.convert<double>(json['infoAmount']);
  if (infoAmount != null) {
    homeListOrderPlan.infoAmount = infoAmount;
  }
  final double? otherDeductions = jsonConvert.convert<double>(
      json['otherDeductions']);
  if (otherDeductions != null) {
    homeListOrderPlan.otherDeductions = otherDeductions;
  }
  final double? roundingAmount = jsonConvert.convert<double>(
      json['roundingAmount']);
  if (roundingAmount != null) {
    homeListOrderPlan.roundingAmount = roundingAmount;
  }
  return homeListOrderPlan;
}

Map<String, dynamic> $HomeListOrderPlanToJson(HomeListOrderPlan entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['oilGasCost'] = entity.oilGasCost;
  data['isSms'] = entity.isSms;
  data['serviceName'] = entity.serviceName;
  data['loadAmount'] = entity.loadAmount;
  data['payUnitPrice'] = entity.payUnitPrice;
  data['createTime'] = entity.createTime;
  data['materialName'] = entity.materialName;
  data['chargingRuleId'] = entity.chargingRuleId;
  data['orderPermission'] = entity.orderPermission;
  data['materialTypeId'] = entity.materialTypeId;
  data['totalStock'] = entity.totalStock;
  data['lossNums'] = entity.lossNums;
  data['orderCode'] = entity.orderCode;
  data['otherDeductionsByWhole'] = entity.otherDeductionsByWhole;
  data['deductionBasisId'] = entity.deductionBasisId;
  data['unloadAmount'] = entity.unloadAmount;
  data['creatorId'] = entity.creatorId;
  data['prepayment'] = entity.prepayment;
  data['contractCode'] = entity.contractCode;
  data['parkingFee'] = entity.parkingFee;
  data['orderFreight'] = entity.orderFreight;
  data['orderStatus'] = entity.orderStatus;
  data['overflowNums'] = entity.overflowNums;
  data['maxTruckNum'] = entity.maxTruckNum;
  data['orderLence'] = entity.orderLence;
  data['orderTransportId'] = entity.orderTransportId;
  data['orderPrivate'] = entity.orderPrivate;
  data['orderName'] = entity.orderName;
  data['materialUnitId'] = entity.materialUnitId;
  data['orderPaytypeId'] = entity.orderPaytypeId;
  data['roundingType'] = entity.roundingType;
  data['maxSendOut'] = entity.maxSendOut;
  data['preloadEndTime'] = entity.preloadEndTime;
  data['logisticsId'] = entity.logisticsId;
  data['totalSendnums'] = entity.totalSendnums;
  data['contractId'] = entity.contractId;
  data['orderDispatchId'] = entity.orderDispatchId;
  data['goodsUnitPrice'] = entity.goodsUnitPrice;
  data['taxRate'] = entity.taxRate;
  data['insuranceCostByWhole'] = entity.insuranceCostByWhole;
  data['lossPrice'] = entity.lossPrice;
  data['wholeTruckFee'] = entity.wholeTruckFee;
  data['goodId'] = entity.goodId;
  data['weightType'] = entity.weightType;
  data['preloadStartTime'] = entity.preloadStartTime;
  data['totalLoading'] = entity.totalLoading;
  data['insuranceCost'] = entity.insuranceCost;
  data['totalUnloadNums'] = entity.totalUnloadNums;
  data['orderConsignor'] = entity.orderConsignor;
  data['fineAmount'] = entity.fineAmount;
  data['goodsUnitPriceByWhole'] = entity.goodsUnitPriceByWhole;
  data['creatorName'] = entity.creatorName;
  data['orderType'] = entity.orderType;
  data['isTrack'] = entity.isTrack;
  data['infoPriceByWhole'] = entity.infoPriceByWhole;
  data['overflowPrice'] = entity.overflowPrice;
  data['qrCode'] = entity.qrCode;
  data['materialUnitName'] = entity.materialUnitName;
  data['orderInsurance'] = entity.orderInsurance;
  data['infoPrice'] = entity.infoPrice;
  data['serviceTel'] = entity.serviceTel;
  data['infoAmount'] = entity.infoAmount;
  data['otherDeductions'] = entity.otherDeductions;
  data['roundingAmount'] = entity.roundingAmount;
  return data;
}

extension HomeListOrderPlanExtension on HomeListOrderPlan {
  HomeListOrderPlan copyWith({
    double? oilGasCost,
    int? isSms,
    String? serviceName,
    double? loadAmount,
    double? payUnitPrice,
    String? createTime,
    String? materialName,
    int? chargingRuleId,
    int? orderPermission,
    int? materialTypeId,
    double? totalStock,
    double? lossNums,
    String? orderCode,
    double? otherDeductionsByWhole,
    int? deductionBasisId,
    double? unloadAmount,
    int? creatorId,
    double? prepayment,
    String? contractCode,
    double? parkingFee,
    int? orderFreight,
    int? orderStatus,
    double? overflowNums,
    int? maxTruckNum,
    int? orderLence,
    int? orderTransportId,
    int? orderPrivate,
    String? orderName,
    int? materialUnitId,
    int? orderPaytypeId,
    int? roundingType,
    double? maxSendOut,
    String? preloadEndTime,
    int? logisticsId,
    double? totalSendnums,
    int? contractId,
    int? orderDispatchId,
    double? goodsUnitPrice,
    double? taxRate,
    double? insuranceCostByWhole,
    double? lossPrice,
    double? wholeTruckFee,
    int? goodId,
    int? weightType,
    String? preloadStartTime,
    double? totalLoading,
    double? insuranceCost,
    double? totalUnloadNums,
    int? orderConsignor,
    double? fineAmount,
    double? goodsUnitPriceByWhole,
    String? creatorName,
    int? orderType,
    int? isTrack,
    double? infoPriceByWhole,
    double? overflowPrice,
    String? qrCode,
    String? materialUnitName,
    int? orderInsurance,
    double? infoPrice,
    String? serviceTel,
    double? infoAmount,
    double? otherDeductions,
    double? roundingAmount,
  }) {
    return HomeListOrderPlan()
      ..oilGasCost = oilGasCost ?? this.oilGasCost
      ..isSms = isSms ?? this.isSms
      ..serviceName = serviceName ?? this.serviceName
      ..loadAmount = loadAmount ?? this.loadAmount
      ..payUnitPrice = payUnitPrice ?? this.payUnitPrice
      ..createTime = createTime ?? this.createTime
      ..materialName = materialName ?? this.materialName
      ..chargingRuleId = chargingRuleId ?? this.chargingRuleId
      ..orderPermission = orderPermission ?? this.orderPermission
      ..materialTypeId = materialTypeId ?? this.materialTypeId
      ..totalStock = totalStock ?? this.totalStock
      ..lossNums = lossNums ?? this.lossNums
      ..orderCode = orderCode ?? this.orderCode
      ..otherDeductionsByWhole = otherDeductionsByWhole ??
          this.otherDeductionsByWhole
      ..deductionBasisId = deductionBasisId ?? this.deductionBasisId
      ..unloadAmount = unloadAmount ?? this.unloadAmount
      ..creatorId = creatorId ?? this.creatorId
      ..prepayment = prepayment ?? this.prepayment
      ..contractCode = contractCode ?? this.contractCode
      ..parkingFee = parkingFee ?? this.parkingFee
      ..orderFreight = orderFreight ?? this.orderFreight
      ..orderStatus = orderStatus ?? this.orderStatus
      ..overflowNums = overflowNums ?? this.overflowNums
      ..maxTruckNum = maxTruckNum ?? this.maxTruckNum
      ..orderLence = orderLence ?? this.orderLence
      ..orderTransportId = orderTransportId ?? this.orderTransportId
      ..orderPrivate = orderPrivate ?? this.orderPrivate
      ..orderName = orderName ?? this.orderName
      ..materialUnitId = materialUnitId ?? this.materialUnitId
      ..orderPaytypeId = orderPaytypeId ?? this.orderPaytypeId
      ..roundingType = roundingType ?? this.roundingType
      ..maxSendOut = maxSendOut ?? this.maxSendOut
      ..preloadEndTime = preloadEndTime ?? this.preloadEndTime
      ..logisticsId = logisticsId ?? this.logisticsId
      ..totalSendnums = totalSendnums ?? this.totalSendnums
      ..contractId = contractId ?? this.contractId
      ..orderDispatchId = orderDispatchId ?? this.orderDispatchId
      ..goodsUnitPrice = goodsUnitPrice ?? this.goodsUnitPrice
      ..taxRate = taxRate ?? this.taxRate
      ..insuranceCostByWhole = insuranceCostByWhole ?? this.insuranceCostByWhole
      ..lossPrice = lossPrice ?? this.lossPrice
      ..wholeTruckFee = wholeTruckFee ?? this.wholeTruckFee
      ..goodId = goodId ?? this.goodId
      ..weightType = weightType ?? this.weightType
      ..preloadStartTime = preloadStartTime ?? this.preloadStartTime
      ..totalLoading = totalLoading ?? this.totalLoading
      ..insuranceCost = insuranceCost ?? this.insuranceCost
      ..totalUnloadNums = totalUnloadNums ?? this.totalUnloadNums
      ..orderConsignor = orderConsignor ?? this.orderConsignor
      ..fineAmount = fineAmount ?? this.fineAmount
      ..goodsUnitPriceByWhole = goodsUnitPriceByWhole ??
          this.goodsUnitPriceByWhole
      ..creatorName = creatorName ?? this.creatorName
      ..orderType = orderType ?? this.orderType
      ..isTrack = isTrack ?? this.isTrack
      ..infoPriceByWhole = infoPriceByWhole ?? this.infoPriceByWhole
      ..overflowPrice = overflowPrice ?? this.overflowPrice
      ..qrCode = qrCode ?? this.qrCode
      ..materialUnitName = materialUnitName ?? this.materialUnitName
      ..orderInsurance = orderInsurance ?? this.orderInsurance
      ..infoPrice = infoPrice ?? this.infoPrice
      ..serviceTel = serviceTel ?? this.serviceTel
      ..infoAmount = infoAmount ?? this.infoAmount
      ..otherDeductions = otherDeductions ?? this.otherDeductions
      ..roundingAmount = roundingAmount ?? this.roundingAmount;
  }
}

HomeListChargingRule $HomeListChargingRuleFromJson(Map<String, dynamic> json) {
  final HomeListChargingRule homeListChargingRule = HomeListChargingRule();
  final String? chargingRuleName = jsonConvert.convert<String>(
      json['chargingRuleName']);
  if (chargingRuleName != null) {
    homeListChargingRule.chargingRuleName = chargingRuleName;
  }
  return homeListChargingRule;
}

Map<String, dynamic> $HomeListChargingRuleToJson(HomeListChargingRule entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['chargingRuleName'] = entity.chargingRuleName;
  return data;
}

extension HomeListChargingRuleExtension on HomeListChargingRule {
  HomeListChargingRule copyWith({
    String? chargingRuleName,
  }) {
    return HomeListChargingRule()
      ..chargingRuleName = chargingRuleName ?? this.chargingRuleName;
  }
}

HomeListLogisticsConsignor $HomeListLogisticsConsignorFromJson(
    Map<String, dynamic> json) {
  final HomeListLogisticsConsignor homeListLogisticsConsignor = HomeListLogisticsConsignor();
  final String? customerAlias = jsonConvert.convert<String>(
      json['customerAlias']);
  if (customerAlias != null) {
    homeListLogisticsConsignor.customerAlias = customerAlias;
  }
  final String? customerName = jsonConvert.convert<String>(
      json['customerName']);
  if (customerName != null) {
    homeListLogisticsConsignor.customerName = customerName;
  }
  return homeListLogisticsConsignor;
}

Map<String, dynamic> $HomeListLogisticsConsignorToJson(
    HomeListLogisticsConsignor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['customerAlias'] = entity.customerAlias;
  data['customerName'] = entity.customerName;
  return data;
}

extension HomeListLogisticsConsignorExtension on HomeListLogisticsConsignor {
  HomeListLogisticsConsignor copyWith({
    String? customerAlias,
    String? customerName,
  }) {
    return HomeListLogisticsConsignor()
      ..customerAlias = customerAlias ?? this.customerAlias
      ..customerName = customerName ?? this.customerName;
  }
}

HomeListMaterialType $HomeListMaterialTypeFromJson(Map<String, dynamic> json) {
  final HomeListMaterialType homeListMaterialType = HomeListMaterialType();
  final String? materialTypeName = jsonConvert.convert<String>(
      json['materialTypeName']);
  if (materialTypeName != null) {
    homeListMaterialType.materialTypeName = materialTypeName;
  }
  return homeListMaterialType;
}

Map<String, dynamic> $HomeListMaterialTypeToJson(HomeListMaterialType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['materialTypeName'] = entity.materialTypeName;
  return data;
}

extension HomeListMaterialTypeExtension on HomeListMaterialType {
  HomeListMaterialType copyWith({
    String? materialTypeName,
  }) {
    return HomeListMaterialType()
      ..materialTypeName = materialTypeName ?? this.materialTypeName;
  }
}

HomeListDeliveryWay $HomeListDeliveryWayFromJson(Map<String, dynamic> json) {
  final HomeListDeliveryWay homeListDeliveryWay = HomeListDeliveryWay();
  final String? deliveryWayName = jsonConvert.convert<String>(
      json['deliveryWayName']);
  if (deliveryWayName != null) {
    homeListDeliveryWay.deliveryWayName = deliveryWayName;
  }
  return homeListDeliveryWay;
}

Map<String, dynamic> $HomeListDeliveryWayToJson(HomeListDeliveryWay entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['deliveryWayName'] = entity.deliveryWayName;
  return data;
}

extension HomeListDeliveryWayExtension on HomeListDeliveryWay {
  HomeListDeliveryWay copyWith({
    String? deliveryWayName,
  }) {
    return HomeListDeliveryWay()
      ..deliveryWayName = deliveryWayName ?? this.deliveryWayName;
  }
}

HomeListOrderStatus $HomeListOrderStatusFromJson(Map<String, dynamic> json) {
  final HomeListOrderStatus homeListOrderStatus = HomeListOrderStatus();
  final String? statusName = jsonConvert.convert<String>(json['statusName']);
  if (statusName != null) {
    homeListOrderStatus.statusName = statusName;
  }
  return homeListOrderStatus;
}

Map<String, dynamic> $HomeListOrderStatusToJson(HomeListOrderStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['statusName'] = entity.statusName;
  return data;
}

extension HomeListOrderStatusExtension on HomeListOrderStatus {
  HomeListOrderStatus copyWith({
    String? statusName,
  }) {
    return HomeListOrderStatus()
      ..statusName = statusName ?? this.statusName;
  }
}

HomeListOrderRoute $HomeListOrderRouteFromJson(Map<String, dynamic> json) {
  final HomeListOrderRoute homeListOrderRoute = HomeListOrderRoute();
  final String? loadingCompany = jsonConvert.convert<String>(
      json['loadingCompany']);
  if (loadingCompany != null) {
    homeListOrderRoute.loadingCompany = loadingCompany;
  }
  final String? routeName = jsonConvert.convert<String>(json['routeName']);
  if (routeName != null) {
    homeListOrderRoute.routeName = routeName;
  }
  final String? loadingLatitude = jsonConvert.convert<String>(
      json['loadingLatitude']);
  if (loadingLatitude != null) {
    homeListOrderRoute.loadingLatitude = loadingLatitude;
  }
  final int? orderId = jsonConvert.convert<int>(json['orderId']);
  if (orderId != null) {
    homeListOrderRoute.orderId = orderId;
  }
  final String? loadingContactsTel = jsonConvert.convert<String>(
      json['loadingContactsTel']);
  if (loadingContactsTel != null) {
    homeListOrderRoute.loadingContactsTel = loadingContactsTel;
  }
  final String? unloadAddress = jsonConvert.convert<String>(
      json['unloadAddress']);
  if (unloadAddress != null) {
    homeListOrderRoute.unloadAddress = unloadAddress;
  }
  final String? loadingContacts = jsonConvert.convert<String>(
      json['loadingContacts']);
  if (loadingContacts != null) {
    homeListOrderRoute.loadingContacts = loadingContacts;
  }
  final String? routeDesc = jsonConvert.convert<String>(json['routeDesc']);
  if (routeDesc != null) {
    homeListOrderRoute.routeDesc = routeDesc;
  }
  final String? unloadLatitude = jsonConvert.convert<String>(
      json['unloadLatitude']);
  if (unloadLatitude != null) {
    homeListOrderRoute.unloadLatitude = unloadLatitude;
  }
  final String? loadingAddress = jsonConvert.convert<String>(
      json['loadingAddress']);
  if (loadingAddress != null) {
    homeListOrderRoute.loadingAddress = loadingAddress;
  }
  final String? loadingCompanyCode = jsonConvert.convert<String>(
      json['loadingCompanyCode']);
  if (loadingCompanyCode != null) {
    homeListOrderRoute.loadingCompanyCode = loadingCompanyCode;
  }
  final String? loadingLongitude = jsonConvert.convert<String>(
      json['loadingLongitude']);
  if (loadingLongitude != null) {
    homeListOrderRoute.loadingLongitude = loadingLongitude;
  }
  final String? unloadCompany = jsonConvert.convert<String>(
      json['unloadCompany']);
  if (unloadCompany != null) {
    homeListOrderRoute.unloadCompany = unloadCompany;
  }
  final double? unloadFenceMiles = jsonConvert.convert<double>(
      json['unloadFenceMiles']);
  if (unloadFenceMiles != null) {
    homeListOrderRoute.unloadFenceMiles = unloadFenceMiles;
  }
  final String? unloadLongitude = jsonConvert.convert<String>(
      json['unloadLongitude']);
  if (unloadLongitude != null) {
    homeListOrderRoute.unloadLongitude = unloadLongitude;
  }
  final String? unloadContactsTel = jsonConvert.convert<String>(
      json['unloadContactsTel']);
  if (unloadContactsTel != null) {
    homeListOrderRoute.unloadContactsTel = unloadContactsTel;
  }
  final int? unloadAreaId = jsonConvert.convert<int>(json['unloadAreaId']);
  if (unloadAreaId != null) {
    homeListOrderRoute.unloadAreaId = unloadAreaId;
  }
  final int? loadingAreaId = jsonConvert.convert<int>(json['loadingAreaId']);
  if (loadingAreaId != null) {
    homeListOrderRoute.loadingAreaId = loadingAreaId;
  }
  final double? loadFenceMiles = jsonConvert.convert<double>(
      json['loadFenceMiles']);
  if (loadFenceMiles != null) {
    homeListOrderRoute.loadFenceMiles = loadFenceMiles;
  }
  final int? unloadFence = jsonConvert.convert<int>(json['unloadFence']);
  if (unloadFence != null) {
    homeListOrderRoute.unloadFence = unloadFence;
  }
  final String? unloadCompanyCode = jsonConvert.convert<String>(
      json['unloadCompanyCode']);
  if (unloadCompanyCode != null) {
    homeListOrderRoute.unloadCompanyCode = unloadCompanyCode;
  }
  final int? loadFence = jsonConvert.convert<int>(json['loadFence']);
  if (loadFence != null) {
    homeListOrderRoute.loadFence = loadFence;
  }
  final int? routeMiles = jsonConvert.convert<int>(json['routeMiles']);
  if (routeMiles != null) {
    homeListOrderRoute.routeMiles = routeMiles;
  }
  return homeListOrderRoute;
}

Map<String, dynamic> $HomeListOrderRouteToJson(HomeListOrderRoute entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['loadingCompany'] = entity.loadingCompany;
  data['routeName'] = entity.routeName;
  data['loadingLatitude'] = entity.loadingLatitude;
  data['orderId'] = entity.orderId;
  data['loadingContactsTel'] = entity.loadingContactsTel;
  data['unloadAddress'] = entity.unloadAddress;
  data['loadingContacts'] = entity.loadingContacts;
  data['routeDesc'] = entity.routeDesc;
  data['unloadLatitude'] = entity.unloadLatitude;
  data['loadingAddress'] = entity.loadingAddress;
  data['loadingCompanyCode'] = entity.loadingCompanyCode;
  data['loadingLongitude'] = entity.loadingLongitude;
  data['unloadCompany'] = entity.unloadCompany;
  data['unloadFenceMiles'] = entity.unloadFenceMiles;
  data['unloadLongitude'] = entity.unloadLongitude;
  data['unloadContactsTel'] = entity.unloadContactsTel;
  data['unloadAreaId'] = entity.unloadAreaId;
  data['loadingAreaId'] = entity.loadingAreaId;
  data['loadFenceMiles'] = entity.loadFenceMiles;
  data['unloadFence'] = entity.unloadFence;
  data['unloadCompanyCode'] = entity.unloadCompanyCode;
  data['loadFence'] = entity.loadFence;
  data['routeMiles'] = entity.routeMiles;
  return data;
}

extension HomeListOrderRouteExtension on HomeListOrderRoute {
  HomeListOrderRoute copyWith({
    String? loadingCompany,
    String? routeName,
    String? loadingLatitude,
    int? orderId,
    String? loadingContactsTel,
    String? unloadAddress,
    String? loadingContacts,
    String? routeDesc,
    String? unloadLatitude,
    String? loadingAddress,
    String? loadingCompanyCode,
    String? loadingLongitude,
    String? unloadCompany,
    double? unloadFenceMiles,
    String? unloadLongitude,
    String? unloadContactsTel,
    int? unloadAreaId,
    int? loadingAreaId,
    double? loadFenceMiles,
    int? unloadFence,
    String? unloadCompanyCode,
    int? loadFence,
    int? routeMiles,
  }) {
    return HomeListOrderRoute()
      ..loadingCompany = loadingCompany ?? this.loadingCompany
      ..routeName = routeName ?? this.routeName
      ..loadingLatitude = loadingLatitude ?? this.loadingLatitude
      ..orderId = orderId ?? this.orderId
      ..loadingContactsTel = loadingContactsTel ?? this.loadingContactsTel
      ..unloadAddress = unloadAddress ?? this.unloadAddress
      ..loadingContacts = loadingContacts ?? this.loadingContacts
      ..routeDesc = routeDesc ?? this.routeDesc
      ..unloadLatitude = unloadLatitude ?? this.unloadLatitude
      ..loadingAddress = loadingAddress ?? this.loadingAddress
      ..loadingCompanyCode = loadingCompanyCode ?? this.loadingCompanyCode
      ..loadingLongitude = loadingLongitude ?? this.loadingLongitude
      ..unloadCompany = unloadCompany ?? this.unloadCompany
      ..unloadFenceMiles = unloadFenceMiles ?? this.unloadFenceMiles
      ..unloadLongitude = unloadLongitude ?? this.unloadLongitude
      ..unloadContactsTel = unloadContactsTel ?? this.unloadContactsTel
      ..unloadAreaId = unloadAreaId ?? this.unloadAreaId
      ..loadingAreaId = loadingAreaId ?? this.loadingAreaId
      ..loadFenceMiles = loadFenceMiles ?? this.loadFenceMiles
      ..unloadFence = unloadFence ?? this.unloadFence
      ..unloadCompanyCode = unloadCompanyCode ?? this.unloadCompanyCode
      ..loadFence = loadFence ?? this.loadFence
      ..routeMiles = routeMiles ?? this.routeMiles;
  }
}

HomeListMaterialUnit $HomeListMaterialUnitFromJson(Map<String, dynamic> json) {
  final HomeListMaterialUnit homeListMaterialUnit = HomeListMaterialUnit();
  final String? materialUnitName = jsonConvert.convert<String>(
      json['materialUnitName']);
  if (materialUnitName != null) {
    homeListMaterialUnit.materialUnitName = materialUnitName;
  }
  return homeListMaterialUnit;
}

Map<String, dynamic> $HomeListMaterialUnitToJson(HomeListMaterialUnit entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['materialUnitName'] = entity.materialUnitName;
  return data;
}

extension HomeListMaterialUnitExtension on HomeListMaterialUnit {
  HomeListMaterialUnit copyWith({
    String? materialUnitName,
  }) {
    return HomeListMaterialUnit()
      ..materialUnitName = materialUnitName ?? this.materialUnitName;
  }
}

HomeListRoundingType $HomeListRoundingTypeFromJson(Map<String, dynamic> json) {
  final HomeListRoundingType homeListRoundingType = HomeListRoundingType();
  final String? roundingTypeName = jsonConvert.convert<String>(
      json['roundingTypeName']);
  if (roundingTypeName != null) {
    homeListRoundingType.roundingTypeName = roundingTypeName;
  }
  return homeListRoundingType;
}

Map<String, dynamic> $HomeListRoundingTypeToJson(HomeListRoundingType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['roundingTypeName'] = entity.roundingTypeName;
  return data;
}

extension HomeListRoundingTypeExtension on HomeListRoundingType {
  HomeListRoundingType copyWith({
    String? roundingTypeName,
  }) {
    return HomeListRoundingType()
      ..roundingTypeName = roundingTypeName ?? this.roundingTypeName;
  }
}

HomeListDeductionBasis $HomeListDeductionBasisFromJson(
    Map<String, dynamic> json) {
  final HomeListDeductionBasis homeListDeductionBasis = HomeListDeductionBasis();
  final String? deductionBasisName = jsonConvert.convert<String>(
      json['deductionBasisName']);
  if (deductionBasisName != null) {
    homeListDeductionBasis.deductionBasisName = deductionBasisName;
  }
  return homeListDeductionBasis;
}

Map<String, dynamic> $HomeListDeductionBasisToJson(
    HomeListDeductionBasis entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['deductionBasisName'] = entity.deductionBasisName;
  return data;
}

extension HomeListDeductionBasisExtension on HomeListDeductionBasis {
  HomeListDeductionBasis copyWith({
    String? deductionBasisName,
  }) {
    return HomeListDeductionBasis()
      ..deductionBasisName = deductionBasisName ?? this.deductionBasisName;
  }
}

HomeListCodeTmsOrderType $HomeListCodeTmsOrderTypeFromJson(
    Map<String, dynamic> json) {
  final HomeListCodeTmsOrderType homeListCodeTmsOrderType = HomeListCodeTmsOrderType();
  final String? orderTypeName = jsonConvert.convert<String>(
      json['orderTypeName']);
  if (orderTypeName != null) {
    homeListCodeTmsOrderType.orderTypeName = orderTypeName;
  }
  return homeListCodeTmsOrderType;
}

Map<String, dynamic> $HomeListCodeTmsOrderTypeToJson(
    HomeListCodeTmsOrderType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['orderTypeName'] = entity.orderTypeName;
  return data;
}

extension HomeListCodeTmsOrderTypeExtension on HomeListCodeTmsOrderType {
  HomeListCodeTmsOrderType copyWith({
    String? orderTypeName,
  }) {
    return HomeListCodeTmsOrderType()
      ..orderTypeName = orderTypeName ?? this.orderTypeName;
  }
}

HomeListContract $HomeListContractFromJson(Map<String, dynamic> json) {
  final HomeListContract homeListContract = HomeListContract();
  final String? contractName = jsonConvert.convert<String>(
      json['contractName']);
  if (contractName != null) {
    homeListContract.contractName = contractName;
  }
  final String? contractCode = jsonConvert.convert<String>(
      json['contractCode']);
  if (contractCode != null) {
    homeListContract.contractCode = contractCode;
  }
  final String? customerName = jsonConvert.convert<String>(
      json['customerName']);
  if (customerName != null) {
    homeListContract.customerName = customerName;
  }
  final int? logisticsId = jsonConvert.convert<int>(json['logisticsId']);
  if (logisticsId != null) {
    homeListContract.logisticsId = logisticsId;
  }
  return homeListContract;
}

Map<String, dynamic> $HomeListContractToJson(HomeListContract entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['contractName'] = entity.contractName;
  data['contractCode'] = entity.contractCode;
  data['customerName'] = entity.customerName;
  data['logisticsId'] = entity.logisticsId;
  return data;
}

extension HomeListContractExtension on HomeListContract {
  HomeListContract copyWith({
    String? contractName,
    String? contractCode,
    String? customerName,
    int? logisticsId,
  }) {
    return HomeListContract()
      ..contractName = contractName ?? this.contractName
      ..contractCode = contractCode ?? this.contractCode
      ..customerName = customerName ?? this.customerName
      ..logisticsId = logisticsId ?? this.logisticsId;
  }
}

HomeListDeliveryType $HomeListDeliveryTypeFromJson(Map<String, dynamic> json) {
  final HomeListDeliveryType homeListDeliveryType = HomeListDeliveryType();
  final String? deliveryTypeName = jsonConvert.convert<String>(
      json['deliveryTypeName']);
  if (deliveryTypeName != null) {
    homeListDeliveryType.deliveryTypeName = deliveryTypeName;
  }
  return homeListDeliveryType;
}

Map<String, dynamic> $HomeListDeliveryTypeToJson(HomeListDeliveryType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['deliveryTypeName'] = entity.deliveryTypeName;
  return data;
}

extension HomeListDeliveryTypeExtension on HomeListDeliveryType {
  HomeListDeliveryType copyWith({
    String? deliveryTypeName,
  }) {
    return HomeListDeliveryType()
      ..deliveryTypeName = deliveryTypeName ?? this.deliveryTypeName;
  }
}

HomeListLogistics $HomeListLogisticsFromJson(Map<String, dynamic> json) {
  final HomeListLogistics homeListLogistics = HomeListLogistics();
  final String? logisticsName = jsonConvert.convert<String>(
      json['logisticsName']);
  if (logisticsName != null) {
    homeListLogistics.logisticsName = logisticsName;
  }
  return homeListLogistics;
}

Map<String, dynamic> $HomeListLogisticsToJson(HomeListLogistics entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['logisticsName'] = entity.logisticsName;
  return data;
}

extension HomeListLogisticsExtension on HomeListLogistics {
  HomeListLogistics copyWith({
    String? logisticsName,
  }) {
    return HomeListLogistics()
      ..logisticsName = logisticsName ?? this.logisticsName;
  }
}