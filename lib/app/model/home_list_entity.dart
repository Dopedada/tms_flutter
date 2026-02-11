import 'package:tms_flutter/generated/json/base/json_field.dart';
import 'package:tms_flutter/generated/json/home_list_entity.g.dart';
import 'dart:convert';
export 'package:tms_flutter/generated/json/home_list_entity.g.dart';

@JsonSerializable()
class HomeListEntity {
	@JSONField(name: 'WeightRule')
	late HomeListWeightRule weightRule;
	@JSONField(name: 'No')
	late int no;
	@JSONField(name: 'PayType')
	late HomeListPayType payType;
	@JSONField(name: 'ContractMaterial')
	late HomeListContractMaterial contractMaterial;
	@JSONField(name: 'OrderPlan')
	late HomeListOrderPlan orderPlan;
	@JSONField(name: 'ChargingRule')
	late HomeListChargingRule chargingRule;
	@JSONField(name: 'LogisticsConsignor')
	late HomeListLogisticsConsignor logisticsConsignor;
	@JSONField(name: 'MaterialType')
	late HomeListMaterialType materialType;
	@JSONField(name: 'DeliveryWay')
	late HomeListDeliveryWay deliveryWay;
	late String license;
	@JSONField(name: 'OrderStatus')
	late HomeListOrderStatus orderStatus;
	@JSONField(name: 'OrderRoute')
	late HomeListOrderRoute orderRoute;
	@JSONField(name: 'MaterialUnit')
	late HomeListMaterialUnit materialUnit;
	@JSONField(name: 'RoundingType')
	late HomeListRoundingType roundingType;
	@JSONField(name: 'DeductionBasis')
	late HomeListDeductionBasis deductionBasis;
	@JSONField(name: 'CodeTmsOrderType')
	late HomeListCodeTmsOrderType codeTmsOrderType;
	@JSONField(name: 'Contract')
	late HomeListContract contract;
	@JSONField(name: 'DeliveryType')
	late HomeListDeliveryType deliveryType;
	@JSONField(name: 'Logistics')
	late HomeListLogistics logistics;

	HomeListEntity();

	factory HomeListEntity.fromJson(Map<String, dynamic> json) => $HomeListEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListWeightRule {
	late String weightRuleName;

	HomeListWeightRule();

	factory HomeListWeightRule.fromJson(Map<String, dynamic> json) => $HomeListWeightRuleFromJson(json);

	Map<String, dynamic> toJson() => $HomeListWeightRuleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListPayType {
	late String payTypeName;

	HomeListPayType();

	factory HomeListPayType.fromJson(Map<String, dynamic> json) => $HomeListPayTypeFromJson(json);

	Map<String, dynamic> toJson() => $HomeListPayTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListContractMaterial {
	late String materialType;
	late String materialName;
	late String materialUnit;

	HomeListContractMaterial();

	factory HomeListContractMaterial.fromJson(Map<String, dynamic> json) => $HomeListContractMaterialFromJson(json);

	Map<String, dynamic> toJson() => $HomeListContractMaterialToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListOrderPlan {
	late double oilGasCost;
	late int isSms;
	late String serviceName;
	late double loadAmount;
	late double payUnitPrice;
	late String createTime;
	late String materialName;
	late int chargingRuleId;
	late int orderPermission;
	late int materialTypeId;
	late double totalStock;
	late double lossNums;
	late String orderCode;
	late double otherDeductionsByWhole;
	late int deductionBasisId;
	late double unloadAmount;
	late int creatorId;
	late double prepayment;
	late String contractCode;
	late double parkingFee;
	late int orderFreight;
	late int orderStatus;
	late double overflowNums;
	late int maxTruckNum;
	late int orderLence;
	late int orderTransportId;
	late int orderPrivate;
	late String orderName;
	late int materialUnitId;
	late int orderPaytypeId;
	late int roundingType;
	late double maxSendOut;
	late String preloadEndTime;
	late int logisticsId;
	late double totalSendnums;
	late int contractId;
	late int orderDispatchId;
	late double goodsUnitPrice;
	late double taxRate;
	late double insuranceCostByWhole;
	late double lossPrice;
	late double wholeTruckFee;
	late int goodId;
	late int weightType;
	late String preloadStartTime;
	late double totalLoading;
	late double insuranceCost;
	late double totalUnloadNums;
	late int orderConsignor;
	late double fineAmount;
	late double goodsUnitPriceByWhole;
	late String creatorName;
	late int orderType;
	late int isTrack;
	late double infoPriceByWhole;
	late double overflowPrice;
	late String qrCode;
	late String materialUnitName;
	late int orderInsurance;
	late double infoPrice;
	late String serviceTel;
	late double infoAmount;
	late double otherDeductions;
	late double roundingAmount;

	HomeListOrderPlan();

	factory HomeListOrderPlan.fromJson(Map<String, dynamic> json) => $HomeListOrderPlanFromJson(json);

	Map<String, dynamic> toJson() => $HomeListOrderPlanToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListChargingRule {
	late String chargingRuleName;

	HomeListChargingRule();

	factory HomeListChargingRule.fromJson(Map<String, dynamic> json) => $HomeListChargingRuleFromJson(json);

	Map<String, dynamic> toJson() => $HomeListChargingRuleToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListLogisticsConsignor {
	late String customerAlias;
	late String customerName;

	HomeListLogisticsConsignor();

	factory HomeListLogisticsConsignor.fromJson(Map<String, dynamic> json) => $HomeListLogisticsConsignorFromJson(json);

	Map<String, dynamic> toJson() => $HomeListLogisticsConsignorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListMaterialType {
	late String materialTypeName;

	HomeListMaterialType();

	factory HomeListMaterialType.fromJson(Map<String, dynamic> json) => $HomeListMaterialTypeFromJson(json);

	Map<String, dynamic> toJson() => $HomeListMaterialTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListDeliveryWay {
	late String deliveryWayName;

	HomeListDeliveryWay();

	factory HomeListDeliveryWay.fromJson(Map<String, dynamic> json) => $HomeListDeliveryWayFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDeliveryWayToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListOrderStatus {
	late String statusName;

	HomeListOrderStatus();

	factory HomeListOrderStatus.fromJson(Map<String, dynamic> json) => $HomeListOrderStatusFromJson(json);

	Map<String, dynamic> toJson() => $HomeListOrderStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListOrderRoute {
	late String loadingCompany;
	late String routeName;
	late String loadingLatitude;
	late int orderId;
	late String loadingContactsTel;
	late String unloadAddress;
	late String loadingContacts;
	late String routeDesc;
	late String unloadLatitude;
	late String loadingAddress;
	late String loadingCompanyCode;
	late String loadingLongitude;
	late String unloadCompany;
	late double unloadFenceMiles;
	late String unloadLongitude;
	late String unloadContactsTel;
	late int unloadAreaId;
	late int loadingAreaId;
	late double loadFenceMiles;
	late int unloadFence;
	late String unloadCompanyCode;
	late int loadFence;
	late int routeMiles;

	HomeListOrderRoute();

	factory HomeListOrderRoute.fromJson(Map<String, dynamic> json) => $HomeListOrderRouteFromJson(json);

	Map<String, dynamic> toJson() => $HomeListOrderRouteToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListMaterialUnit {
	late String materialUnitName;

	HomeListMaterialUnit();

	factory HomeListMaterialUnit.fromJson(Map<String, dynamic> json) => $HomeListMaterialUnitFromJson(json);

	Map<String, dynamic> toJson() => $HomeListMaterialUnitToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListRoundingType {
	late String roundingTypeName;

	HomeListRoundingType();

	factory HomeListRoundingType.fromJson(Map<String, dynamic> json) => $HomeListRoundingTypeFromJson(json);

	Map<String, dynamic> toJson() => $HomeListRoundingTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListDeductionBasis {
	late String deductionBasisName;

	HomeListDeductionBasis();

	factory HomeListDeductionBasis.fromJson(Map<String, dynamic> json) => $HomeListDeductionBasisFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDeductionBasisToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListCodeTmsOrderType {
	late String orderTypeName;

	HomeListCodeTmsOrderType();

	factory HomeListCodeTmsOrderType.fromJson(Map<String, dynamic> json) => $HomeListCodeTmsOrderTypeFromJson(json);

	Map<String, dynamic> toJson() => $HomeListCodeTmsOrderTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListContract {
	late String contractName;
	late String contractCode;
	late String customerName;
	late int logisticsId;

	HomeListContract();

	factory HomeListContract.fromJson(Map<String, dynamic> json) => $HomeListContractFromJson(json);

	Map<String, dynamic> toJson() => $HomeListContractToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListDeliveryType {
	late String deliveryTypeName;

	HomeListDeliveryType();

	factory HomeListDeliveryType.fromJson(Map<String, dynamic> json) => $HomeListDeliveryTypeFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDeliveryTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListLogistics {
	late String logisticsName;

	HomeListLogistics();

	factory HomeListLogistics.fromJson(Map<String, dynamic> json) => $HomeListLogisticsFromJson(json);

	Map<String, dynamic> toJson() => $HomeListLogisticsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}