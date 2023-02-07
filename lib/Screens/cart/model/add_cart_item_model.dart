class AddCartItemModel {
  AddCartItemModel({
    required this.cartHash,
    required this.cartKey,
    required this.currency,
    required this.customer,
    required this.items,
    required this.itemCount,
    required this.itemsWeight,
    required this.coupons,
    required this.needsPayment,
    required this.needsShipping,
    required this.shipping,
    required this.fees,
    required this.taxes,
    required this.totals,
    required this.removedItems,
    required this.crossSells,
    //required this.notices,
  });

  String cartHash;
  String cartKey;
  Currency currency;
  Customer customer;
  List<CartItemList> items;
  int itemCount;
  int itemsWeight;
  List<dynamic> coupons;
  bool needsPayment;
  bool needsShipping;
  List<dynamic> shipping;
  List<dynamic> fees;
  List<dynamic> taxes;
  AddCartItemModelTotals totals;
  List<dynamic> removedItems;
  List<dynamic> crossSells;
  //Notices notices;

  factory AddCartItemModel.fromJson(Map<String, dynamic> json) =>
      AddCartItemModel(
        cartHash: json["cart_hash"],
        cartKey: json["cart_key"],
        currency: Currency.fromJson(json["currency"]),
        customer: Customer.fromJson(json["customer"]),
        items: List<CartItemList>.from(
            json["items"].map((x) => CartItemList.fromJson(x))),
        itemCount: json["item_count"],
        itemsWeight: json["items_weight"],
        coupons: List<dynamic>.from(json["coupons"].map((x) => x)),
        needsPayment: json["needs_payment"],
        needsShipping: json["needs_shipping"],
        shipping: List<dynamic>.from(json["shipping"].map((x) => x)),
        fees: List<dynamic>.from(json["fees"].map((x) => x)),
        taxes: List<dynamic>.from(json["taxes"].map((x) => x)),
        totals: AddCartItemModelTotals.fromJson(json["totals"]),
        removedItems: List<dynamic>.from(json["removed_items"].map((x) => x)),
        crossSells: List<dynamic>.from(json["cross_sells"].map((x) => x)),
        //notices: Notices.fromJson(json["notices"]),
      );

  Map<String, dynamic> toJson() => {
        "cart_hash": cartHash,
        "cart_key": cartKey,
        "currency": currency.toJson(),
        "customer": customer.toJson(),
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "item_count": itemCount,
        "items_weight": itemsWeight,
        "coupons": List<dynamic>.from(coupons.map((x) => x)),
        "needs_payment": needsPayment,
        "needs_shipping": needsShipping,
        "shipping": List<dynamic>.from(shipping.map((x) => x)),
        "fees": List<dynamic>.from(fees.map((x) => x)),
        "taxes": List<dynamic>.from(taxes.map((x) => x)),
        "totals": totals.toJson(),
        "removed_items": List<dynamic>.from(removedItems.map((x) => x)),
        "cross_sells": List<dynamic>.from(crossSells.map((x) => x)),
        //"notices": notices.toJson(),
      };
}

class Currency {
  Currency({
    required this.currencyCode,
    required this.currencySymbol,
    required this.currencyMinorUnit,
    required this.currencyDecimalSeparator,
    required this.currencyThousandSeparator,
    required this.currencyPrefix,
    required this.currencySuffix,
  });

  String currencyCode;
  String currencySymbol;
  int currencyMinorUnit;
  String currencyDecimalSeparator;
  String currencyThousandSeparator;
  String currencyPrefix;
  String currencySuffix;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        currencyCode: json["currency_code"],
        currencySymbol: json["currency_symbol"],
        currencyMinorUnit: json["currency_minor_unit"],
        currencyDecimalSeparator: json["currency_decimal_separator"],
        currencyThousandSeparator: json["currency_thousand_separator"],
        currencyPrefix: json["currency_prefix"],
        currencySuffix: json["currency_suffix"],
      );

  Map<String, dynamic> toJson() => {
        "currency_code": currencyCode,
        "currency_symbol": currencySymbol,
        "currency_minor_unit": currencyMinorUnit,
        "currency_decimal_separator": currencyDecimalSeparator,
        "currency_thousand_separator": currencyThousandSeparator,
        "currency_prefix": currencyPrefix,
        "currency_suffix": currencySuffix,
      };
}

class Customer {
  Customer({
    required this.billingAddress,
    required this.shippingAddress,
  });

  BillingAddress billingAddress;
  ShippingAddress shippingAddress;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        billingAddress: BillingAddress.fromJson(json["billing_address"]),
        shippingAddress: ShippingAddress.fromJson(json["shipping_address"]),
      );

  Map<String, dynamic> toJson() => {
        "billing_address": billingAddress.toJson(),
        "shipping_address": shippingAddress.toJson(),
      };
}

class BillingAddress {
  BillingAddress({
    required this.billingFirstName,
    required this.billingLastName,
    required this.billingCompany,
    required this.billingCountry,
    required this.billingAddress1,
    required this.billingAddress2,
    required this.billingCity,
    required this.billingState,
    required this.billingPostcode,
    required this.billingPhone,
    required this.billingEmail,
  });

  String billingFirstName;
  String billingLastName;
  String billingCompany;
  String billingCountry;
  String billingAddress1;
  String billingAddress2;
  String billingCity;
  String billingState;
  String billingPostcode;
  String billingPhone;
  String billingEmail;

  factory BillingAddress.fromJson(Map<String, dynamic> json) => BillingAddress(
        billingFirstName: json["billing_first_name"],
        billingLastName: json["billing_last_name"],
        billingCompany: json["billing_company"],
        billingCountry: json["billing_country"],
        billingAddress1: json["billing_address_1"],
        billingAddress2: json["billing_address_2"],
        billingCity: json["billing_city"],
        billingState: json["billing_state"],
        billingPostcode: json["billing_postcode"],
        billingPhone: json["billing_phone"],
        billingEmail: json["billing_email"],
      );

  Map<String, dynamic> toJson() => {
        "billing_first_name": billingFirstName,
        "billing_last_name": billingLastName,
        "billing_company": billingCompany,
        "billing_country": billingCountry,
        "billing_address_1": billingAddress1,
        "billing_address_2": billingAddress2,
        "billing_city": billingCity,
        "billing_state": billingState,
        "billing_postcode": billingPostcode,
        "billing_phone": billingPhone,
        "billing_email": billingEmail,
      };
}

class ShippingAddress {
  ShippingAddress({
    required this.shippingFirstName,
    required this.shippingLastName,
    required this.shippingCompany,
    required this.shippingCountry,
    required this.shippingAddress1,
    required this.shippingAddress2,
    required this.shippingCity,
    required this.shippingState,
    required this.shippingPostcode,
  });

  String shippingFirstName;
  String shippingLastName;
  String shippingCompany;
  String shippingCountry;
  String shippingAddress1;
  String shippingAddress2;
  String shippingCity;
  String shippingState;
  String shippingPostcode;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      ShippingAddress(
        shippingFirstName: json["shipping_first_name"],
        shippingLastName: json["shipping_last_name"],
        shippingCompany: json["shipping_company"],
        shippingCountry: json["shipping_country"],
        shippingAddress1: json["shipping_address_1"],
        shippingAddress2: json["shipping_address_2"],
        shippingCity: json["shipping_city"],
        shippingState: json["shipping_state"],
        shippingPostcode: json["shipping_postcode"],
      );

  Map<String, dynamic> toJson() => {
        "shipping_first_name": shippingFirstName,
        "shipping_last_name": shippingLastName,
        "shipping_company": shippingCompany,
        "shipping_country": shippingCountry,
        "shipping_address_1": shippingAddress1,
        "shipping_address_2": shippingAddress2,
        "shipping_city": shippingCity,
        "shipping_state": shippingState,
        "shipping_postcode": shippingPostcode,
      };
}

class CartItemList {
  CartItemList({
    required this.itemKey,
    required this.id,
    required this.name,
    required this.title,
    required this.price,
    required this.quantity,
    required this.totals,
    required this.slug,
    required this.meta,
    required this.backorders,
    required this.cartItemData,
    required this.featuredImage,
  });

  String itemKey;
  int id;
  String name;
  String title;
  String price;
  Quantity quantity;
  ItemTotals totals;
  String slug;
  Meta meta;
  String backorders;
  List<dynamic> cartItemData;
  String featuredImage;

  factory CartItemList.fromJson(Map<String, dynamic> json) => CartItemList(
        itemKey: json["item_key"],
        id: json["id"],
        name: json["name"],
        title: json["title"],
        price: json["price"],
        quantity: Quantity.fromJson(json["quantity"]),
        totals: ItemTotals.fromJson(json["totals"]),
        slug: json["slug"],
        meta: Meta.fromJson(json["meta"]),
        backorders: json["backorders"],
        cartItemData: List<dynamic>.from(json["cart_item_data"].map((x) => x)),
        featuredImage: json["featured_image"],
      );

  Map<String, dynamic> toJson() => {
        "item_key": itemKey,
        "id": id,
        "name": name,
        "title": title,
        "price": price,
        "quantity": quantity.toJson(),
        "totals": totals.toJson(),
        "slug": slug,
        "meta": meta.toJson(),
        "backorders": backorders,
        "cart_item_data": List<dynamic>.from(cartItemData.map((x) => x)),
        "featured_image": featuredImage,
      };
}

class Meta {
  Meta({
    required this.productType,
    required this.sku,
    required this.dimensions,
    required this.weight,
    required this.variation,
  });

  String productType;
  String sku;
  Dimensions dimensions;
  int weight;
  List<dynamic> variation;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        productType: json["product_type"],
        sku: json["sku"],
        dimensions: Dimensions.fromJson(json["dimensions"]),
        weight: json["weight"],
        variation: List<dynamic>.from(json["variation"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "product_type": productType,
        "sku": sku,
        "dimensions": dimensions.toJson(),
        "weight": weight,
        "variation": List<dynamic>.from(variation.map((x) => x)),
      };
}

class Dimensions {
  Dimensions({
    required this.length,
    required this.width,
    required this.height,
    required this.unit,
  });

  String length;
  String width;
  String height;
  String unit;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        length: json["length"],
        width: json["width"],
        height: json["height"],
        unit: json["unit"],
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "width": width,
        "height": height,
        "unit": unit,
      };
}

class Quantity {
  Quantity({
    required this.value,
    required this.minPurchase,
    required this.maxPurchase,
  });

  dynamic value;
  int minPurchase;
  int maxPurchase;

  factory Quantity.fromJson(Map<String, dynamic> json) => Quantity(
        value: json["value"],
        minPurchase: json["min_purchase"],
        maxPurchase: json["max_purchase"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "min_purchase": minPurchase,
        "max_purchase": maxPurchase,
      };
}

class ItemTotals {
  ItemTotals({
    required this.subtotal,
    required this.subtotalTax,
    required this.total,
    required this.tax,
  });

  String subtotal;
  int subtotalTax;
  int total;
  int tax;

  factory ItemTotals.fromJson(Map<String, dynamic> json) => ItemTotals(
        subtotal: json["subtotal"],
        subtotalTax: json["subtotal_tax"],
        total: json["total"],
        tax: json["tax"],
      );

  Map<String, dynamic> toJson() => {
        "subtotal": subtotal,
        "subtotal_tax": subtotalTax,
        "total": total,
        "tax": tax,
      };
}

// class Notices {
//   Notices({
//     required this.success,
//   });
//
//   List<String> success;
//
//   factory Notices.fromJson(Map<String, dynamic> json) => Notices(
//         success: List<String>.from(json["success"].map((x) => x)),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "success": List<dynamic>.from(success.map((x) => x)),
//       };
// }

class AddCartItemModelTotals {
  AddCartItemModelTotals({
    required this.subtotal,
    required this.subtotalTax,
    required this.feeTotal,
    required this.feeTax,
    required this.discountTotal,
    required this.discountTax,
    required this.shippingTotal,
    required this.shippingTax,
    required this.total,
    required this.totalTax,
  });

  String subtotal;
  String subtotalTax;
  String feeTotal;
  String feeTax;
  String discountTotal;
  String discountTax;
  String shippingTotal;
  String shippingTax;
  String total;
  String totalTax;

  factory AddCartItemModelTotals.fromJson(Map<String, dynamic> json) =>
      AddCartItemModelTotals(
        subtotal: json["subtotal"],
        subtotalTax: json["subtotal_tax"],
        feeTotal: json["fee_total"],
        feeTax: json["fee_tax"],
        discountTotal: json["discount_total"],
        discountTax: json["discount_tax"],
        shippingTotal: json["shipping_total"],
        shippingTax: json["shipping_tax"],
        total: json["total"],
        totalTax: json["total_tax"],
      );

  Map<String, dynamic> toJson() => {
        "subtotal": subtotal,
        "subtotal_tax": subtotalTax,
        "fee_total": feeTotal,
        "fee_tax": feeTax,
        "discount_total": discountTotal,
        "discount_tax": discountTax,
        "shipping_total": shippingTotal,
        "shipping_tax": shippingTax,
        "total": total,
        "total_tax": totalTax,
      };
}
