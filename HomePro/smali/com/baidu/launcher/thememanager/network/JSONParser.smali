.class public Lcom/baidu/launcher/thememanager/network/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/network/JSONParser$1;
    }
.end annotation


# static fields
.field public static final JSONKey_AllCount:Ljava/lang/String; = "all_count"

.field public static final JSONKey_Count:Ljava/lang/String; = "total"

.field public static final JSONKey_CurPage:Ljava/lang/String; = "curPage"

.field public static final JSONKey_Data:Ljava/lang/String; = "data"

.field public static final JSONKey_Result:Ljava/lang/String; = "themes"

.field public static final JSONKey_Return:Ljava/lang/String; = "ret"

.field public static final JSONKey_Theme_Author:Ljava/lang/String; = "author"

.field public static final JSONKey_Theme_Contents:Ljava/lang/String; = "contents"

.field public static final JSONKey_Theme_CoverUrl:Ljava/lang/String; = "cover_url"

.field public static final JSONKey_Theme_DownNum:Ljava/lang/String; = "dldnum"

.field public static final JSONKey_Theme_DownloadUrl:Ljava/lang/String; = "pkg_url"

.field public static final JSONKey_Theme_FileName:Ljava/lang/String; = "filename"

.field public static final JSONKey_Theme_Id:Ljava/lang/String; = "tid"

.field public static final JSONKey_Theme_Md5:Ljava/lang/String; = "md5"

.field public static final JSONKey_Theme_Preview:Ljava/lang/String; = "pics"

.field public static final JSONKey_Theme_SIZE:Ljava/lang/String; = "size"

.field public static final JSONKey_Theme_Title:Ljava/lang/String; = "title"

.field public static final JSONKey_Theme_UiVersion:Ljava/lang/String; = "uiversion"

.field public static final JSONKey_Theme_Url:Ljava/lang/String; = "url"

.field public static final JSONKey_Theme_UserId:Ljava/lang/String; = "userid"

.field public static final JSONKey_Theme_Version:Ljava/lang/String; = "version"

.field public static final MAX_ERROR_RESPONSE_SIZE:I = 0x3c

.field public static final MIN_ERROR_RESPONSE_SIZE:I = 0x32

.field public static final NULL:Ljava/lang/String; = "null"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static parsePreviewInfoFromData(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/thememanager/model/AbsDataItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/thememanager/model/AbsDataItem;>;"
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/model/ThemeOnlinePreviewList;->create(Lorg/json/JSONObject;)Lcom/baidu/launcher/thememanager/model/ThemeOnlinePreviewList;

    move-result-object v1

    .line 107
    .local v1, previewItemInfo:Lcom/baidu/launcher/thememanager/model/ThemeOnlinePreviewList;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-object v0
.end method

.method public static parseResponse(Lcom/baidu/launcher/thememanager/network/Response;)V
    .locals 7
    .parameter "res"

    .prologue
    const/4 v6, 0x0

    .line 49
    new-instance v3, Lorg/json/JSONTokener;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/network/Response;->getRawContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 51
    .local v3, tokener:Lorg/json/JSONTokener;
    if-eqz v3, :cond_2

    .line 53
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/network/Response;->getRawContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, obj:Lorg/json/JSONObject;
    const-string v4, "total"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    const-string v5, "total"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/thememanager/util/Utils;->safePositiveInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/baidu/launcher/thememanager/network/Response$Result;->count:I

    .line 61
    :cond_0
    const-string v4, "curPage"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    const-string v5, "curPage"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/thememanager/util/Utils;->safePositiveInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/baidu/launcher/thememanager/network/Response$Result;->curpage:I

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    iget v4, v4, Lcom/baidu/launcher/thememanager/network/Response$Result;->ret:I

    if-eqz v4, :cond_3

    .line 69
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/network/Response;->mDataSet:Ljava/util/List;

    .line 99
    .end local v2           #obj:Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 73
    .restart local v2       #obj:Lorg/json/JSONObject;
    :cond_3
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 74
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/network/JSONParser;->parsePreviewInfoFromData(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/network/Response;->mDataSet:Ljava/util/List;

    .line 77
    :cond_4
    const-string v4, "themes"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    sget-object v4, Lcom/baidu/launcher/thememanager/network/JSONParser$1;->$SwitchMap$com$baidu$launcher$thememanager$network$Request$RequestType:[I

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/network/Response;->getRequestType()Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    const-string v4, "themes"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 87
    .local v0, arrayObj:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/network/JSONParser;->parseThemeItemInfoFromData(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/network/Response;->mDataSet:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v0           #arrayObj:Lorg/json/JSONArray;
    .end local v2           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    const/4 v5, -0x1

    iput v5, v4, Lcom/baidu/launcher/thememanager/network/Response$Result;->ret:I

    .line 96
    iput-object v6, p0, Lcom/baidu/launcher/thememanager/network/Response;->mDataSet:Ljava/util/List;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseThemeItemInfoFromData(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .parameter "arrayObj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/thememanager/model/AbsDataItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/thememanager/model/AbsDataItem;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 117
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    .local v1, appItemObj:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->create(Lorg/json/JSONObject;)Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    move-result-object v0

    .line 120
    .local v0, appItemInfo:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v0           #appItemInfo:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    .end local v1           #appItemObj:Lorg/json/JSONObject;
    :cond_0
    return-object v3
.end method
