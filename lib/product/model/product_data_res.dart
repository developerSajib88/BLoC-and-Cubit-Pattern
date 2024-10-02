import 'dart:convert';

class ProductDataRes {
    final List<Product>? products;
    final int? total;
    final int? skip;
    final int? limit;

    ProductDataRes({
        this.products,
        this.total,
        this.skip,
        this.limit,
    });

    ProductDataRes copyWith({
        List<Product>? products,
        int? total,
        int? skip,
        int? limit,
    }) => 
        ProductDataRes(
            products: products ?? this.products,
            total: total ?? this.total,
            skip: skip ?? this.skip,
            limit: limit ?? this.limit,
        );

    factory ProductDataRes.fromRawJson(String str) => ProductDataRes.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductDataRes.fromJson(Map<String, dynamic> json) => ProductDataRes(
        products: json["products"] == null ? [] : List<Product>.from(json["products"]!.map((x) => Product.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
    );

    Map<String, dynamic> toJson() => {
        "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
    };
}

class Product {
    final int? id;
    final String? title;
    final String? description;
    final String? category;
    final double? price;
    final double? discountPercentage;
    final double? rating;
    final int? stock;
    final List<String>? tags;
    final String? brand;
    final String? sku;
    final int? weight;
    final Dimensions? dimensions;
    final String? warrantyInformation;
    final String? shippingInformation;
    final String? availabilityStatus;
    final List<Review>? reviews;
    final String? returnPolicy;
    final int? minimumOrderQuantity;
    final Meta? meta;
    final String? thumbnail;
    final List<String>? images;

    Product({
        this.id,
        this.title,
        this.description,
        this.category,
        this.price,
        this.discountPercentage,
        this.rating,
        this.stock,
        this.tags,
        this.brand,
        this.sku,
        this.weight,
        this.dimensions,
        this.warrantyInformation,
        this.shippingInformation,
        this.availabilityStatus,
        this.reviews,
        this.returnPolicy,
        this.minimumOrderQuantity,
        this.meta,
        this.thumbnail,
        this.images,
    });

    Product copyWith({
        int? id,
        String? title,
        String? description,
        String? category,
        double? price,
        double? discountPercentage,
        double? rating,
        int? stock,
        List<String>? tags,
        String? brand,
        String? sku,
        int? weight,
        Dimensions? dimensions,
        String? warrantyInformation,
        String? shippingInformation,
        String? availabilityStatus,
        List<Review>? reviews,
        String? returnPolicy,
        int? minimumOrderQuantity,
        Meta? meta,
        String? thumbnail,
        List<String>? images,
    }) => 
        Product(
            id: id ?? this.id,
            title: title ?? this.title,
            description: description ?? this.description,
            category: category ?? this.category,
            price: price ?? this.price,
            discountPercentage: discountPercentage ?? this.discountPercentage,
            rating: rating ?? this.rating,
            stock: stock ?? this.stock,
            tags: tags ?? this.tags,
            brand: brand ?? this.brand,
            sku: sku ?? this.sku,
            weight: weight ?? this.weight,
            dimensions: dimensions ?? this.dimensions,
            warrantyInformation: warrantyInformation ?? this.warrantyInformation,
            shippingInformation: shippingInformation ?? this.shippingInformation,
            availabilityStatus: availabilityStatus ?? this.availabilityStatus,
            reviews: reviews ?? this.reviews,
            returnPolicy: returnPolicy ?? this.returnPolicy,
            minimumOrderQuantity: minimumOrderQuantity ?? this.minimumOrderQuantity,
            meta: meta ?? this.meta,
            thumbnail: thumbnail ?? this.thumbnail,
            images: images ?? this.images,
        );

    factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        category: json["category"],
        price: json["price"]?.toDouble(),
        discountPercentage: json["discountPercentage"]?.toDouble(),
        rating: json["rating"]?.toDouble(),
        stock: json["stock"],
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        brand: json["brand"],
        sku: json["sku"],
        weight: json["weight"],
        dimensions: json["dimensions"] == null ? null : Dimensions.fromJson(json["dimensions"]),
        warrantyInformation: json["warrantyInformation"],
        shippingInformation: json["shippingInformation"],
        availabilityStatus: json["availabilityStatus"],
        reviews: json["reviews"] == null ? [] : List<Review>.from(json["reviews"]!.map((x) => Review.fromJson(x))),
        returnPolicy: json["returnPolicy"],
        minimumOrderQuantity: json["minimumOrderQuantity"],
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
        thumbnail: json["thumbnail"],
        images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "category": category,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "stock": stock,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "brand": brand,
        "sku": sku,
        "weight": weight,
        "dimensions": dimensions?.toJson(),
        "warrantyInformation": warrantyInformation,
        "shippingInformation": shippingInformation,
        "availabilityStatus": availabilityStatus,
        "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x.toJson())),
        "returnPolicy": returnPolicy,
        "minimumOrderQuantity": minimumOrderQuantity,
        "meta": meta?.toJson(),
        "thumbnail": thumbnail,
        "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
    };
}

class Dimensions {
    final double? width;
    final double? height;
    final double? depth;

    Dimensions({
        this.width,
        this.height,
        this.depth,
    });

    Dimensions copyWith({
        double? width,
        double? height,
        double? depth,
    }) => 
        Dimensions(
            width: width ?? this.width,
            height: height ?? this.height,
            depth: depth ?? this.depth,
        );

    factory Dimensions.fromRawJson(String str) => Dimensions.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        width: json["width"]?.toDouble(),
        height: json["height"]?.toDouble(),
        depth: json["depth"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "depth": depth,
    };
}

class Meta {
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final String? barcode;
    final String? qrCode;

    Meta({
        this.createdAt,
        this.updatedAt,
        this.barcode,
        this.qrCode,
    });

    Meta copyWith({
        DateTime? createdAt,
        DateTime? updatedAt,
        String? barcode,
        String? qrCode,
    }) => 
        Meta(
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
            barcode: barcode ?? this.barcode,
            qrCode: qrCode ?? this.qrCode,
        );

    factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        barcode: json["barcode"],
        qrCode: json["qrCode"],
    );

    Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "barcode": barcode,
        "qrCode": qrCode,
    };
}

class Review {
    final int? rating;
    final String? comment;
    final DateTime? date;
    final String? reviewerName;
    final String? reviewerEmail;

    Review({
        this.rating,
        this.comment,
        this.date,
        this.reviewerName,
        this.reviewerEmail,
    });

    Review copyWith({
        int? rating,
        String? comment,
        DateTime? date,
        String? reviewerName,
        String? reviewerEmail,
    }) => 
        Review(
            rating: rating ?? this.rating,
            comment: comment ?? this.comment,
            date: date ?? this.date,
            reviewerName: reviewerName ?? this.reviewerName,
            reviewerEmail: reviewerEmail ?? this.reviewerEmail,
        );

    factory Review.fromRawJson(String str) => Review.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        rating: json["rating"],
        comment: json["comment"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        reviewerName: json["reviewerName"],
        reviewerEmail: json["reviewerEmail"],
    );

    Map<String, dynamic> toJson() => {
        "rating": rating,
        "comment": comment,
        "date": date?.toIso8601String(),
        "reviewerName": reviewerName,
        "reviewerEmail": reviewerEmail,
    };
}
