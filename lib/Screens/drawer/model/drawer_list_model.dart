class DrawerListModel {
  DrawerListModel({
    required this.id,
    required this.postAuthor,
    required this.postDate,
    required this.postDateGmt,
    required this.postContent,
    required this.postTitle,
    required this.postExcerpt,
    required this.postStatus,
    required this.commentStatus,
    required this.pingStatus,
    required this.postPassword,
    required this.postName,
    required this.toPing,
    required this.pinged,
    required this.postModified,
    required this.postModifiedGmt,
    required this.postContentFiltered,
    required this.postParent,
    required this.guid,
    required this.menuOrder,
    required this.postType,
    required this.postMimeType,
    required this.commentCount,
    required this.filter,
    required this.dbId,
    required this.menuItemParent,
    required this.objectId,
    required this.object,
    required this.type,
    required this.typeLabel,
    required this.url,
    required this.title,
    required this.target,
    required this.attrTitle,
    required this.description,
    required this.classes,
    required this.xfn,
    required this.icon,
    required this.nolink,
    required this.hide,
    required this.mobileHide,
    required this.cols,
    required this.tipLabel,
    required this.tipColor,
    required this.tipBg,
    required this.popupType,
    required this.popupPos,
    required this.popupCols,
    required this.popupMaxWidth,
    required this.popupBgImage,
    required this.popupBgPos,
    required this.popupBgRepeat,
    required this.popupBgSize,
    required this.popupStyle,
    required this.block,
    required this.preview,
    required this.previewFixed,
  });

  int id;
  String postAuthor;
  DateTime postDate;
  DateTime postDateGmt;
  String postContent;
  String postTitle;
  String postExcerpt;
  String postStatus;
  String commentStatus;
  String pingStatus;
  String postPassword;
  String postName;
  String toPing;
  String pinged;
  DateTime postModified;
  DateTime postModifiedGmt;
  String postContentFiltered;
  int postParent;
  String guid;
  int menuOrder;
  String postType;
  String postMimeType;
  String commentCount;
  String filter;
  int dbId;
  String menuItemParent;
  String objectId;
  String object;
  String type;
  String typeLabel;
  String url;
  String title;
  String? target;
  String? attrTitle;
  String? description;
  List<String?> classes;
  String xfn;
  String icon;
  String nolink;
  String hide;
  String mobileHide;
  String cols;
  String tipLabel;
  String tipColor;
  String tipBg;
  String popupType;
  String popupPos;
  String popupCols;
  String popupMaxWidth;
  String popupBgImage;
  String popupBgPos;
  String popupBgRepeat;
  String popupBgSize;
  String popupStyle;
  String block;
  String preview;
  String previewFixed;

  factory DrawerListModel.fromJson(Map<String, dynamic> json) =>
      DrawerListModel(
        id: json["ID"] ?? "",
        postAuthor: json["post_author"] ?? "",
        postDate: DateTime.parse(json["post_date"] ?? ""),
        postDateGmt: DateTime.parse(json["post_date_gmt"] ?? ""),
        postContent: json["post_content"] ?? "",
        postTitle: json["post_title"] ?? "",
        postExcerpt: json["post_excerpt"] ?? "",
        postStatus: json["post_status"] ?? "",
        commentStatus: json["comment_status"] ?? "",
        pingStatus: json["ping_status"] ?? "",
        postPassword: json["post_password"] ?? "",
        postName: json["post_name"],
        toPing: json["to_ping"] ?? "",
        pinged: json["pinged"] ?? "",
        postModified: DateTime.parse(json["post_modified"] ?? ""),
        postModifiedGmt: DateTime.parse(json["post_modified_gmt"] ?? ""),
        postContentFiltered: json["post_content_filtered"] ?? "",
        postParent: json["post_parent"] ?? "",
        guid: json["guid"] ?? "",
        menuOrder: json["menu_order"] ?? "",
        postType: json["post_type"] ?? "",
        postMimeType: json["post_mime_type"] ?? "",
        commentCount: json["comment_count"] ?? "",
        filter: json["filter"] ?? "",
        dbId: json["db_id"] ?? "",
        menuItemParent: json["menu_item_parent"] ?? "",
        objectId: json["object_id"] ?? "",
        object: json["object"] ?? "",
        type: json["type"] ?? "",
        typeLabel: json["type_label"] ?? "",
        url: json["url"] ?? "",
        title: json["title"] ?? "",
        target: json["target"] ?? "",
        attrTitle: json["attr_title"] ?? "",
        description: json["description"] ?? "",
        classes: json["classes"] == null
            ? []
            : List<String?>.from(json["classes"]!.map((x) => x)),
        xfn: json["xfn"] ?? "",
        icon: json["icon"] ?? "",
        nolink: json["nolink"] ?? "",
        hide: json["hide"] ?? "",
        mobileHide: json["mobile_hide"] ?? "",
        cols: json["cols"] ?? "",
        tipLabel: json["tip_label"] ?? "",
        tipColor: json["tip_color"] ?? "",
        tipBg: json["tip_bg"] ?? "",
        popupType: json["popup_type"] ?? "",
        popupPos: json["popup_pos"] ?? "",
        popupCols: json["popup_cols"] ?? "",
        popupMaxWidth: json["popup_max_width"] ?? "",
        popupBgImage: json["popup_bg_image"] ?? "",
        popupBgPos: json["popup_bg_pos"] ?? "",
        popupBgRepeat: json["popup_bg_repeat"] ?? "",
        popupBgSize: json["popup_bg_size"] ?? "",
        popupStyle: json["popup_style"] ?? "",
        block: json["block"] ?? "",
        preview: json["preview"] ?? "",
        previewFixed: json["preview_fixed"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "post_author": postAuthor,
        "post_date": postDate?.toIso8601String(),
        "post_date_gmt": postDateGmt?.toIso8601String(),
        "post_content": postContent,
        "post_title": postTitle,
        "post_excerpt": postExcerpt,
        "post_status": postStatus,
        "comment_status": commentStatus,
        "ping_status": pingStatus,
        "post_password": postPassword,
        "post_name": postName,
        "to_ping": toPing,
        "pinged": pinged,
        "post_modified": postModified?.toIso8601String(),
        "post_modified_gmt": postModifiedGmt?.toIso8601String(),
        "post_content_filtered": postContentFiltered,
        "post_parent": postParent,
        "guid": guid,
        "menu_order": menuOrder,
        "post_type": postType,
        "post_mime_type": postMimeType,
        "comment_count": commentCount,
        "filter": filter,
        "db_id": dbId,
        "menu_item_parent": menuItemParent,
        "object_id": objectId,
        "object": object,
        "type": type,
        "type_label": typeLabel,
        "url": url,
        "title": title,
        "target": target,
        "attr_title": attrTitle,
        "description": description,
        "classes":
            classes == null ? [] : List<dynamic>.from(classes!.map((x) => x)),
        "xfn": xfn,
        "icon": icon,
        "nolink": nolink,
        "hide": hide,
        "mobile_hide": mobileHide,
        "cols": cols,
        "tip_label": tipLabel,
        "tip_color": tipColor,
        "tip_bg": tipBg,
        "popup_type": popupType,
        "popup_pos": popupPos,
        "popup_cols": popupCols,
        "popup_max_width": popupMaxWidth,
        "popup_bg_image": popupBgImage,
        "popup_bg_pos": popupBgPos,
        "popup_bg_repeat": popupBgRepeat,
        "popup_bg_size": popupBgSize,
        "popup_style": popupStyle,
        "block": block,
        "preview": preview,
        "preview_fixed": previewFixed,
      };
}
