class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;

  BookModel.formjson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);
  }
}

class VolumeInfo {
  String? title;
  String? subtitle;
  List<Authors>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  List? authorsNameList = <Authors>[];
  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    if (json['authors'] != null) {
      authors = <Authors>[];
      json['authors'].forEach((element) {
        authors!.add(Authors.fromJson(element));
      });
    }
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    json['industryIdentifiers'].forEach((element) {
      industryIdentifiers!.add(IndustryIdentifiers.fromJson(element));
    });
    readingModes = ReadingModes.fromJson(json['readingModes']);
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'].cast<String>();
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary =
        PanelizationSummary.fromJson(json['panelizationSummary']);
    imageLinks = ImageLinks.fromJson(json['imageLinks']);
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
}

class Authors {
  String? name;

  Authors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
}

class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    identifier = json['identifier'];
  }
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary.fromJson(Map<String, dynamic> json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
}
