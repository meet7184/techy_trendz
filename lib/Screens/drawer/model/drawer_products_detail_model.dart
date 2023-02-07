class ProductsDetailModel {
  ProductsDetailModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.permalink,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.type,
    required this.status,
    required this.featured,
    required this.catalogVisibility,
    required this.description,
    required this.shortDescription,
    required this.sku,
    required this.price,
    required this.regularPrice,
    required this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    required this.onSale,
    required this.purchasable,
    required this.totalSales,
    required this.virtual,
    required this.downloadable,
    required this.downloads,
    required this.downloadLimit,
    required this.downloadExpiry,
    required this.externalUrl,
    required this.buttonText,
    required this.taxStatus,
    required this.taxClass,
    required this.manageStock,
    this.stockQuantity,
    required this.backorders,
    required this.backordersAllowed,
    required this.backordered,
    this.lowStockAmount,
    required this.soldIndividually,
    required this.weight,
    required this.dimensions,
    required this.shippingRequired,
    required this.shippingTaxable,
    required this.shippingClass,
    required this.shippingClassId,
    required this.reviewsAllowed,
    required this.averageRating,
    required this.ratingCount,
    required this.upsellIds,
    required this.crossSellIds,
    required this.parentId,
    required this.purchaseNote,
    required this.categories,
    required this.tags,
    required this.images,
    required this.attributes,
    required this.defaultAttributes,
    required this.variations,
    required this.groupedProducts,
    required this.menuOrder,
    required this.priceHtml,
    required this.relatedIds,
    required this.metaData,
    required this.stockStatus,
    required this.hasOptions,
    required this.yoastHead,
    //required this.yoastHeadJson,
    required this.links,
  });

  int id;
  String name;
  String slug;
  String permalink;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String type;
  String status;
  bool featured;
  String catalogVisibility;
  String description;
  String shortDescription;
  String sku;
  String price;
  String regularPrice;
  String salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  bool onSale;
  bool purchasable;
  int totalSales;
  bool virtual;
  bool downloadable;
  List<dynamic> downloads;
  int downloadLimit;
  int downloadExpiry;
  String externalUrl;
  String buttonText;
  String taxStatus;
  String taxClass;
  bool manageStock;
  dynamic stockQuantity;
  String backorders;
  bool backordersAllowed;
  bool backordered;
  dynamic lowStockAmount;
  bool soldIndividually;
  String weight;
  Dimensions dimensions;
  bool shippingRequired;
  bool shippingTaxable;
  String shippingClass;
  int shippingClassId;
  bool reviewsAllowed;
  String averageRating;
  int ratingCount;
  List<dynamic> upsellIds;
  List<dynamic> crossSellIds;
  int parentId;
  String purchaseNote;
  List<Category> categories;
  List<dynamic> tags;
  List<Image> images;
  List<dynamic> attributes;
  List<dynamic> defaultAttributes;
  List<dynamic> variations;
  List<dynamic> groupedProducts;
  int menuOrder;
  String priceHtml;
  List<int> relatedIds;
  List<MetaDatum> metaData;
  String stockStatus;
  bool hasOptions;
  String yoastHead;
  //YoastHeadJson yoastHeadJson;
  Links links;

  factory ProductsDetailModel.fromJson(Map<String, dynamic> json) =>
      ProductsDetailModel(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        permalink: json["permalink"],
        dateCreated: DateTime.parse(json["date_created"]),
        dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
        dateModified: DateTime.parse(json["date_modified"]),
        dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
        type: json["type"],
        status: json["status"],
        featured: json["featured"],
        catalogVisibility: json["catalog_visibility"],
        description: json["description"],
        shortDescription: json["short_description"],
        sku: json["sku"],
        price: json["price"],
        regularPrice: json["regular_price"],
        salePrice: json["sale_price"],
        dateOnSaleFrom: json["date_on_sale_from"],
        dateOnSaleFromGmt: json["date_on_sale_from_gmt"],
        dateOnSaleTo: json["date_on_sale_to"],
        dateOnSaleToGmt: json["date_on_sale_to_gmt"],
        onSale: json["on_sale"],
        purchasable: json["purchasable"],
        totalSales: json["total_sales"],
        virtual: json["virtual"],
        downloadable: json["downloadable"],
        downloads: List<dynamic>.from(json["downloads"].map((x) => x)),
        downloadLimit: json["download_limit"],
        downloadExpiry: json["download_expiry"],
        externalUrl: json["external_url"],
        buttonText: json["button_text"],
        taxStatus: json["tax_status"],
        taxClass: json["tax_class"],
        manageStock: json["manage_stock"],
        stockQuantity: json["stock_quantity"],
        backorders: json["backorders"],
        backordersAllowed: json["backorders_allowed"],
        backordered: json["backordered"],
        lowStockAmount: json["low_stock_amount"],
        soldIndividually: json["sold_individually"],
        weight: json["weight"],
        dimensions: Dimensions.fromJson(json["dimensions"]),
        shippingRequired: json["shipping_required"],
        shippingTaxable: json["shipping_taxable"],
        shippingClass: json["shipping_class"],
        shippingClassId: json["shipping_class_id"],
        reviewsAllowed: json["reviews_allowed"],
        averageRating: json["average_rating"],
        ratingCount: json["rating_count"],
        upsellIds: List<dynamic>.from(json["upsell_ids"].map((x) => x)),
        crossSellIds: List<dynamic>.from(json["cross_sell_ids"].map((x) => x)),
        parentId: json["parent_id"],
        purchaseNote: json["purchase_note"],
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        attributes: List<dynamic>.from(json["attributes"].map((x) => x)),
        defaultAttributes:
            List<dynamic>.from(json["default_attributes"].map((x) => x)),
        variations: List<dynamic>.from(json["variations"].map((x) => x)),
        groupedProducts:
            List<dynamic>.from(json["grouped_products"].map((x) => x)),
        menuOrder: json["menu_order"],
        priceHtml: json["price_html"],
        relatedIds: List<int>.from(json["related_ids"].map((x) => x)),
        metaData: List<MetaDatum>.from(
            json["meta_data"].map((x) => MetaDatum.fromJson(x))),
        stockStatus: json["stock_status"],
        hasOptions: json["has_options"],
        yoastHead: json["yoast_head"],
        //yoastHeadJson: YoastHeadJson.fromJson(json["yoast_head_json"]),
        links: Links.fromJson(json["_links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "permalink": permalink,
        "date_created": dateCreated.toIso8601String(),
        "date_created_gmt": dateCreatedGmt.toIso8601String(),
        "date_modified": dateModified.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt.toIso8601String(),
        "type": type,
        "status": status,
        "featured": featured,
        "catalog_visibility": catalogVisibility,
        "description": description,
        "short_description": shortDescription,
        "sku": sku,
        "price": price,
        "regular_price": regularPrice,
        "sale_price": salePrice,
        "date_on_sale_from": dateOnSaleFrom,
        "date_on_sale_from_gmt": dateOnSaleFromGmt,
        "date_on_sale_to": dateOnSaleTo,
        "date_on_sale_to_gmt": dateOnSaleToGmt,
        "on_sale": onSale,
        "purchasable": purchasable,
        "total_sales": totalSales,
        "virtual": virtual,
        "downloadable": downloadable,
        "downloads": List<dynamic>.from(downloads.map((x) => x)),
        "download_limit": downloadLimit,
        "download_expiry": downloadExpiry,
        "external_url": externalUrl,
        "button_text": buttonText,
        "tax_status": taxStatus,
        "tax_class": taxClass,
        "manage_stock": manageStock,
        "stock_quantity": stockQuantity,
        "backorders": backorders,
        "backorders_allowed": backordersAllowed,
        "backordered": backordered,
        "low_stock_amount": lowStockAmount,
        "sold_individually": soldIndividually,
        "weight": weight,
        "dimensions": dimensions.toJson(),
        "shipping_required": shippingRequired,
        "shipping_taxable": shippingTaxable,
        "shipping_class": shippingClass,
        "shipping_class_id": shippingClassId,
        "reviews_allowed": reviewsAllowed,
        "average_rating": averageRating,
        "rating_count": ratingCount,
        "upsell_ids": List<dynamic>.from(upsellIds.map((x) => x)),
        "cross_sell_ids": List<dynamic>.from(crossSellIds.map((x) => x)),
        "parent_id": parentId,
        "purchase_note": purchaseNote,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "attributes": List<dynamic>.from(attributes.map((x) => x)),
        "default_attributes":
            List<dynamic>.from(defaultAttributes.map((x) => x)),
        "variations": List<dynamic>.from(variations.map((x) => x)),
        "grouped_products": List<dynamic>.from(groupedProducts.map((x) => x)),
        "menu_order": menuOrder,
        "price_html": priceHtml,
        "related_ids": List<dynamic>.from(relatedIds.map((x) => x)),
        "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
        "stock_status": stockStatus,
        "has_options": hasOptions,
        "yoast_head": yoastHead,
        //"yoast_head_json": yoastHeadJson.toJson(),
        "_links": links.toJson(),
      };
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.slug,
  });

  int id;
  String name;
  String slug;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
      };
}

class Dimensions {
  Dimensions({
    required this.length,
    required this.width,
    required this.height,
  });

  String length;
  String width;
  String height;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        length: json["length"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "width": width,
        "height": height,
      };
}

class Image {
  Image({
    required this.id,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.dateModified,
    required this.dateModifiedGmt,
    required this.src,
    required this.name,
    required this.alt,
  });

  int id;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String src;
  String name;
  String alt;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        dateCreated: DateTime.parse(json["date_created"]),
        dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
        dateModified: DateTime.parse(json["date_modified"]),
        dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
        src: json["src"],
        name: json["name"],
        alt: json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date_created": dateCreated.toIso8601String(),
        "date_created_gmt": dateCreatedGmt.toIso8601String(),
        "date_modified": dateModified.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt.toIso8601String(),
        "src": src,
        "name": name,
        "alt": alt,
      };
}

class Links {
  Links({
    required this.self,
    required this.collection,
  });

  List<Collection> self;
  List<Collection> collection;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: List<Collection>.from(
            json["self"].map((x) => Collection.fromJson(x))),
        collection: List<Collection>.from(
            json["collection"].map((x) => Collection.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "self": List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
      };
}

class Collection {
  Collection({
    required this.href,
  });

  String href;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
      };
}

class MetaDatum {
  MetaDatum({
    required this.id,
    required this.key,
    required this.value,
  });

  int id;
  String key;
  dynamic value;

  factory MetaDatum.fromJson(Map<String, dynamic> json) => MetaDatum(
        id: json["id"],
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "value": value,
      };
}

class ValueClass {
  ValueClass({
    required this.commissionMode,
    required this.commissionPercent,
    required this.commissionFixed,
    required this.taxName,
    required this.taxPercent,
  });

  String commissionMode;
  String commissionPercent;
  String commissionFixed;
  String taxName;
  String taxPercent;

  factory ValueClass.fromJson(Map<String, dynamic> json) => ValueClass(
        commissionMode: json["commission_mode"],
        commissionPercent: json["commission_percent"],
        commissionFixed: json["commission_fixed"],
        taxName: json["tax_name"],
        taxPercent: json["tax_percent"],
      );

  Map<String, dynamic> toJson() => {
        "commission_mode": commissionMode,
        "commission_percent": commissionPercent,
        "commission_fixed": commissionFixed,
        "tax_name": taxName,
        "tax_percent": taxPercent,
      };
}

// class YoastHeadJson {
//   YoastHeadJson({
//     required this.title,
//     required this.robots,
//     required this.canonical,
//     required this.ogLocale,
//     required this.ogType,
//     required this.ogTitle,
//     required this.ogDescription,
//     required this.ogUrl,
//     required this.ogSiteName,
//     required this.articleModifiedTime,
//     required this.ogImage,
//     required this.twitterCard,
//     required this.twitterMisc,
//     required this.schema,
//   });
//
//   String title;
//   Robots robots;
//   String canonical;
//   String ogLocale;
//   String ogType;
//   String ogTitle;
//   String ogDescription;
//   String ogUrl;
//   String ogSiteName;
//   DateTime articleModifiedTime;
//   List<OgImage> ogImage;
//   String twitterCard;
//   TwitterMisc twitterMisc;
//   Schema schema;
//
//   factory YoastHeadJson.fromJson(Map<String, dynamic> json) => YoastHeadJson(
//         title: json["title"],
//         robots: Robots.fromJson(json["robots"]),
//         canonical: json["canonical"],
//         ogLocale: json["og_locale"],
//         ogType: json["og_type"],
//         ogTitle: json["og_title"],
//         ogDescription: json["og_description"],
//         ogUrl: json["og_url"],
//         ogSiteName: json["og_site_name"],
//         articleModifiedTime: DateTime.parse(json["article_modified_time"]),
//         ogImage: List<OgImage>.from(
//             json["og_image"].map((x) => OgImage.fromJson(x))),
//         twitterCard: json["twitter_card"],
//         twitterMisc: TwitterMisc.fromJson(json["twitter_misc"]),
//         schema: Schema.fromJson(json["schema"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "robots": robots.toJson(),
//         "canonical": canonical,
//         "og_locale": ogLocale,
//         "og_type": ogType,
//         "og_title": ogTitle,
//         "og_description": ogDescription,
//         "og_url": ogUrl,
//         "og_site_name": ogSiteName,
//         "article_modified_time": articleModifiedTime.toIso8601String(),
//         "og_image": List<dynamic>.from(ogImage.map((x) => x.toJson())),
//         "twitter_card": twitterCard,
//         "twitter_misc": twitterMisc.toJson(),
//         "schema": schema.toJson(),
//       };
// }
//
// class OgImage {
//   OgImage({
//     required this.width,
//     required this.height,
//     required this.url,
//     required this.type,
//   });
//
//   int width;
//   int height;
//   String url;
//   String type;
//
//   factory OgImage.fromJson(Map<String, dynamic> json) => OgImage(
//         width: json["width"],
//         height: json["height"],
//         url: json["url"],
//         type: json["type"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "width": width,
//         "height": height,
//         "url": url,
//         "type": type,
//       };
// }

class Robots {
  Robots({
    required this.index,
    required this.follow,
    required this.maxSnippet,
    required this.maxImagePreview,
    required this.maxVideoPreview,
  });

  String index;
  String follow;
  String maxSnippet;
  String maxImagePreview;
  String maxVideoPreview;

  factory Robots.fromJson(Map<String, dynamic> json) => Robots(
        index: json["index"],
        follow: json["follow"],
        maxSnippet: json["max-snippet"],
        maxImagePreview: json["max-image-preview"],
        maxVideoPreview: json["max-video-preview"],
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "follow": follow,
        "max-snippet": maxSnippet,
        "max-image-preview": maxImagePreview,
        "max-video-preview": maxVideoPreview,
      };
}

class Schema {
  Schema({
    required this.context,
    required this.graph,
  });

  String context;
  List<Graph> graph;

  factory Schema.fromJson(Map<String, dynamic> json) => Schema(
        context: json["@context"],
        graph: List<Graph>.from(json["@graph"].map((x) => Graph.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@graph": List<dynamic>.from(graph.map((x) => x.toJson())),
      };
}

class Graph {
  Graph({
    required this.type,
    required this.id,
    this.url,
    this.name,
    this.isPartOf,
    this.datePublished,
    this.dateModified,
    this.breadcrumb,
    this.inLanguage,
    this.potentialAction,
    this.itemListElement,
    this.description,
  });

  String type;
  String id;
  String? url;
  String? name;
  Breadcrumb? isPartOf;
  DateTime? datePublished;
  DateTime? dateModified;
  Breadcrumb? breadcrumb;
  String? inLanguage;
  List<PotentialAction>? potentialAction;
  List<ItemListElement>? itemListElement;
  String? description;

  factory Graph.fromJson(Map<String, dynamic> json) => Graph(
        type: json["@type"],
        id: json["@id"],
        url: json["url"],
        name: json["name"],
        isPartOf: json["isPartOf"] == null
            ? null
            : Breadcrumb.fromJson(json["isPartOf"]),
        datePublished: json["datePublished"] == null
            ? null
            : DateTime.parse(json["datePublished"]),
        dateModified: json["dateModified"] == null
            ? null
            : DateTime.parse(json["dateModified"]),
        breadcrumb: json["breadcrumb"] == null
            ? null
            : Breadcrumb.fromJson(json["breadcrumb"]),
        inLanguage: json["inLanguage"],
        potentialAction: json["potentialAction"] == null
            ? []
            : List<PotentialAction>.from(json["potentialAction"]!
                .map((x) => PotentialAction.fromJson(x))),
        itemListElement: json["itemListElement"] == null
            ? []
            : List<ItemListElement>.from(json["itemListElement"]!
                .map((x) => ItemListElement.fromJson(x))),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "@id": id,
        "url": url,
        "name": name,
        "isPartOf": isPartOf?.toJson(),
        "datePublished": datePublished?.toIso8601String(),
        "dateModified": dateModified?.toIso8601String(),
        "breadcrumb": breadcrumb?.toJson(),
        "inLanguage": inLanguage,
        "potentialAction": potentialAction == null
            ? []
            : List<dynamic>.from(potentialAction!.map((x) => x.toJson())),
        "itemListElement": itemListElement == null
            ? []
            : List<dynamic>.from(itemListElement!.map((x) => x.toJson())),
        "description": description,
      };
}

class Breadcrumb {
  Breadcrumb({
    required this.id,
  });

  String id;

  factory Breadcrumb.fromJson(Map<String, dynamic> json) => Breadcrumb(
        id: json["@id"],
      );

  Map<String, dynamic> toJson() => {
        "@id": id,
      };
}

class ItemListElement {
  ItemListElement({
    required this.type,
    required this.position,
    required this.name,
    this.item,
  });

  String type;
  int position;
  String name;
  String? item;

  factory ItemListElement.fromJson(Map<String, dynamic> json) =>
      ItemListElement(
        type: json["@type"],
        position: json["position"],
        name: json["name"],
        item: json["item"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "position": position,
        "name": name,
        "item": item,
      };
}

class PotentialAction {
  PotentialAction({
    required this.type,
    required this.target,
    this.queryInput,
  });

  String type;
  dynamic target;
  String? queryInput;

  factory PotentialAction.fromJson(Map<String, dynamic> json) =>
      PotentialAction(
        type: json["@type"],
        target: json["target"],
        queryInput: json["query-input"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "target": target,
        "query-input": queryInput,
      };
}

class TargetClass {
  TargetClass({
    required this.type,
    required this.urlTemplate,
  });

  String type;
  String urlTemplate;

  factory TargetClass.fromJson(Map<String, dynamic> json) => TargetClass(
        type: json["@type"],
        urlTemplate: json["urlTemplate"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "urlTemplate": urlTemplate,
      };
}

class TwitterMisc {
  TwitterMisc({
    required this.estReadingTime,
  });

  String estReadingTime;

  factory TwitterMisc.fromJson(Map<String, dynamic> json) => TwitterMisc(
        estReadingTime: json["Est. reading time"],
      );

  Map<String, dynamic> toJson() => {
        "Est. reading time": estReadingTime,
      };
}
