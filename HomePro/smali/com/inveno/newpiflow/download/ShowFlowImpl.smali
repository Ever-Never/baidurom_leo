.class public Lcom/inveno/newpiflow/download/ShowFlowImpl;
.super Ljava/lang/Object;
.source "ShowFlowImpl.java"

# interfaces
.implements Lcom/inveno/newpiflow/download/IShowflowApi;


# static fields
.field private static lastFlowJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getShowflowAds(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;
    .locals 1
    .parameter "context"
    .parameter "adId"

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowflowNews(Landroid/content/Context;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .locals 17
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/inveno/newpiflow/download/NoUpdateException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, flowNews:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    invoke-static/range {p1 .. p1}, Lcom/inveno/newpiflow/tools/AdUtil;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, url:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v12}, Lcom/inveno/newpiflow/tools/AdUtil;->isURL(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 50
    :cond_0
    const-string v12, "http://baiyixun.lem88.com/search"

    .line 52
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v10, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v2, 0x0

    .line 54
    .local v2, pair:Lorg/apache/http/message/BasicNameValuePair;
    const-string v14, "http://baiyixun.lem88.com/search"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 55
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .end local v2           #pair:Lorg/apache/http/message/BasicNameValuePair;
    const-string v14, "app"

    const-string v15, "baiyixun"

    invoke-direct {v2, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .restart local v2       #pair:Lorg/apache/http/message/BasicNameValuePair;
    :goto_0
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "type"

    const-string v15, "all"

    invoke-direct {v3, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v3, pair1:Lorg/apache/http/message/BasicNameValuePair;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "net"

    const-string v15, "wifi"

    invoke-direct {v4, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v4, pair2:Lorg/apache/http/message/BasicNameValuePair;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "version"

    const-string v15, "1.0.2.53.2.0"

    invoke-direct {v5, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v5, pair3:Lorg/apache/http/message/BasicNameValuePair;
    invoke-static/range {p1 .. p1}, Lcom/inveno/newpiflow/tools/TelephonyManagerTools;->getDeviceIdSS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 65
    .local v11, uid:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "uid"

    invoke-direct {v6, v14, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v6, pair4:Lorg/apache/http/message/BasicNameValuePair;
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "result_num"

    const-string v15, "10"

    invoke-direct {v7, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v7, pair5:Lorg/apache/http/message/BasicNameValuePair;
    const/16 v14, 0xa

    invoke-static {v14}, Lcom/inveno/newpiflow/tools/GetFileMD5;->getRandomString(I)Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, var:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "var"

    invoke-direct {v8, v14, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v8, pair6:Lorg/apache/http/message/BasicNameValuePair;
    const/4 v9, 0x0

    .line 71
    .local v9, pair7:Lorg/apache/http/message/BasicNameValuePair;
    const-string v14, "http://baiyixun.lem88.com/search"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 72
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    .end local v9           #pair7:Lorg/apache/http/message/BasicNameValuePair;
    const-string v14, "token"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "coolpad"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/inveno/newpiflow/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .restart local v9       #pair7:Lorg/apache/http/message/BasicNameValuePair;
    :goto_1
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const/4 v14, 0x1

    invoke-static {v12, v10, v14}, Lcom/inveno/newpiflow/download/HttpDownload;->requestJsonStr(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/inveno/newpiflow/download/ShowFlowImpl;->lastFlowJson:Ljava/lang/String;

    .line 92
    sget-object v14, Lcom/inveno/newpiflow/download/ShowFlowImpl;->lastFlowJson:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->parse(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    move-result-object v1

    .line 95
    return-object v1

    .line 57
    .end local v3           #pair1:Lorg/apache/http/message/BasicNameValuePair;
    .end local v4           #pair2:Lorg/apache/http/message/BasicNameValuePair;
    .end local v5           #pair3:Lorg/apache/http/message/BasicNameValuePair;
    .end local v6           #pair4:Lorg/apache/http/message/BasicNameValuePair;
    .end local v7           #pair5:Lorg/apache/http/message/BasicNameValuePair;
    .end local v8           #pair6:Lorg/apache/http/message/BasicNameValuePair;
    .end local v9           #pair7:Lorg/apache/http/message/BasicNameValuePair;
    .end local v11           #uid:Ljava/lang/String;
    .end local v13           #var:Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .end local v2           #pair:Lorg/apache/http/message/BasicNameValuePair;
    const-string v14, "app"

    const-string v15, "baiyi"

    invoke-direct {v2, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #pair:Lorg/apache/http/message/BasicNameValuePair;
    goto/16 :goto_0

    .line 75
    .restart local v3       #pair1:Lorg/apache/http/message/BasicNameValuePair;
    .restart local v4       #pair2:Lorg/apache/http/message/BasicNameValuePair;
    .restart local v5       #pair3:Lorg/apache/http/message/BasicNameValuePair;
    .restart local v6       #pair4:Lorg/apache/http/message/BasicNameValuePair;
    .restart local v7       #pair5:Lorg/apache/http/message/BasicNameValuePair;
    .restart local v8       #pair6:Lorg/apache/http/message/BasicNameValuePair;
    .restart local v9       #pair7:Lorg/apache/http/message/BasicNameValuePair;
    .restart local v11       #uid:Ljava/lang/String;
    .restart local v13       #var:Ljava/lang/String;
    :cond_3
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    .end local v9           #pair7:Lorg/apache/http/message/BasicNameValuePair;
    const-string v14, "token"

    const-string v15, "chunlei2014"

    invoke-direct {v9, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v9       #pair7:Lorg/apache/http/message/BasicNameValuePair;
    goto :goto_1
.end method

.method public saveLastShowNews(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v1, 0x1

    .line 110
    .local v1, errno:I
    const/4 v2, 0x0

    .line 111
    .local v2, jsonObject:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 112
    .local v0, data:Lorg/json/JSONArray;
    sget-object v3, Lcom/inveno/newpiflow/download/ShowFlowImpl;->lastFlowJson:Ljava/lang/String;

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    new-instance v2, Lorg/json/JSONObject;

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    sget-object v3, Lcom/inveno/newpiflow/download/ShowFlowImpl;->lastFlowJson:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    if-eqz v2, :cond_2

    .line 117
    const-string v3, "errno"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    const-string v3, "errno"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 119
    :cond_1
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 123
    :cond_2
    sget-object v3, Lcom/inveno/newpiflow/download/ShowFlowImpl;->lastFlowJson:Ljava/lang/String;

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 129
    sget-object v3, Lcom/inveno/newpiflow/download/ShowFlowImpl;->lastFlowJson:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/inveno/flyshare/utils/StringTools;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "flow.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/StringTools;->saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v3, 0x1

    .line 136
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
