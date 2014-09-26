.class public Lcom/inveno/flow/upload/WFPvUploadBiz;
.super Ljava/lang/Object;
.source "WFPvUploadBiz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;
    }
.end annotation


# static fields
.field private static wfPvUploadBiz:Lcom/inveno/flow/upload/WFPvUploadBiz;


# instance fields
.field private pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flow/upload/WFPvUploadBiz;Landroid/content/Context;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inveno/flow/upload/WFPvUploadBiz;->postWFPvData(Landroid/content/Context;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/inveno/flow/upload/WFPvUploadBiz;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/inveno/flow/upload/WFPvUploadBiz;->wfPvUploadBiz:Lcom/inveno/flow/upload/WFPvUploadBiz;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/inveno/flow/upload/WFPvUploadBiz;

    invoke-direct {v0}, Lcom/inveno/flow/upload/WFPvUploadBiz;-><init>()V

    sput-object v0, Lcom/inveno/flow/upload/WFPvUploadBiz;->wfPvUploadBiz:Lcom/inveno/flow/upload/WFPvUploadBiz;

    .line 46
    :cond_0
    sget-object v0, Lcom/inveno/flow/upload/WFPvUploadBiz;->wfPvUploadBiz:Lcom/inveno/flow/upload/WFPvUploadBiz;

    return-object v0
.end method

.method private getPvJson(Ljava/lang/String;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;)Ljava/lang/String;
    .locals 9
    .parameter "clientId"
    .parameter
    .parameter "wfPvOperation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;",
            "Lcom/inveno/flow/entity/model/upload/WFPvOperation;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, showFlowNews:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    const/4 v3, 0x0

    .line 117
    .local v3, json:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    if-eqz p3, :cond_0

    .line 120
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 121
    .local v6, size:I
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .local v0, array:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 128
    .local v4, newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_1

    .line 152
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "reco_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 153
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getReco_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "real_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 154
    const-string v8, "123"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "view_list"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 155
    const-string v8, "click_item_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 156
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_item_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 157
    const-string v8, "click_item_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 158
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_item_type()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 159
    const-string v8, "click_item_subtype"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 160
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_item_subtype()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 161
    const-string v8, "city"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 162
    const-string v8, "province"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getProvince()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 163
    const-string v8, "street"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getStreet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 164
    const-string v8, "location"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 165
    const-string v8, "view_time"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getView_time()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 166
    const-string v8, "click_timestamp"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 167
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_timestamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 168
    const-string v8, "view_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getView_type()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 169
    const-string v8, "uid"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "login_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 170
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getLogin_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "category"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 171
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "net"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    .line 172
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getNet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v7

    .line 173
    invoke-virtual {v7}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .end local v6           #size:I
    :cond_0
    :goto_1
    return-object v3

    .line 129
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v4       #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .restart local v6       #size:I
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    check-cast v4, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 130
    .restart local v4       #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .local v5, object:Lorg/json/JSONObject;
    const-string v7, "itemid"

    invoke-virtual {v4}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v7, "type"

    invoke-virtual {v4}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v7, "subtype"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 175
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .end local v5           #object:Lorg/json/JSONObject;
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private postWFPvData(Landroid/content/Context;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter
    .parameter "wfPvOperation"
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;",
            "Lcom/inveno/flow/entity/model/upload/WFPvOperation;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, showFlowNews:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    const/4 v4, 0x0

    .line 53
    .local v4, result:Ljava/lang/String;
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/TelephonyManagerTools;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, imei:Ljava/lang/String;
    invoke-static {v1}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    const-string v1, "999999999999999"

    .line 58
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/inveno/flow/upload/WFPvUploadBiz;->getPvJson(Ljava/lang/String;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, jsonPv:Ljava/lang/String;
    invoke-static {v2}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app"

    const-string v7, "baiyixun"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "providers"

    .line 80
    invoke-static {p1}, Lcom/inveno/flyshare/utils/GetMobileNetInfoUtils;->getProvidersName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "networktype"

    .line 83
    invoke-static {p1}, Lcom/inveno/flyshare/utils/GetMobileNetInfoUtils;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    .line 86
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "info"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {p4, v3}, Lcom/inveno/newpiflow/download/HttpDownload;->androidHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v5, "pv"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u4e0a\u4f20\u7011\u5e03\u6d41\u70b9\u51fb\u8d44\u8baf coolpad:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 93
    const-string v7, " params :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {v5, v6}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v3           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :goto_0
    return-object v4

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/IOException;
    const-string v5, "pv"

    const-string v6, "\u4e0a\u4f20\u7011\u5e03\u6d41\u70b9\u51fb\u8d44\u8baf\u4e0d\u6210\u529f,IOException"

    invoke-static {v5, v6}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setSizetoDoble(J)Ljava/lang/String;
    .locals 4
    .parameter "num"

    .prologue
    .line 295
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const/4 v2, 0x1

    .line 296
    const/4 v3, 0x4

    .line 295
    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 298
    .local v0, mData:Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public InitClickInfo(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V
    .locals 4
    .parameter "newsInfo"

    .prologue
    .line 188
    new-instance v0, Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-direct {v0}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/upload/WFPvUploadBiz;->pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    .line 189
    iget-object v0, p0, Lcom/inveno/flow/upload/WFPvUploadBiz;->pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->setClick_timestamp(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/inveno/flow/upload/WFPvUploadBiz;->pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getReco_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->setReco_id(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/inveno/flow/upload/WFPvUploadBiz;->pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->setClick_item_id(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/inveno/flow/upload/WFPvUploadBiz;->pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->setClick_item_type(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public post(Landroid/content/Context;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;Ljava/lang/String;)V
    .locals 1
    .parameter "mContext"
    .parameter "pvOperation"
    .parameter "showFlowNews"
    .parameter "url"

    .prologue
    .line 212
    invoke-virtual {p3}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getFlowNewinfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/inveno/flow/upload/WFPvUploadBiz;->post(Landroid/content/Context;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/util/List;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public post(Landroid/content/Context;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .parameter "mContext"
    .parameter "pvOperation"
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/inveno/flow/entity/model/upload/WFPvOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    .local p3, ShowFlowNewinfos:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/NetWorkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p2}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_timestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 223
    .local v6, start:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 222
    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/inveno/flow/upload/WFPvUploadBiz;->setSizetoDoble(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->setView_time(Ljava/lang/String;)V

    .line 224
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inveno/flow/upload/WFPvUploadBiz$1;-><init>(Lcom/inveno/flow/upload/WFPvUploadBiz;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 248
    .end local v6           #start:J
    :cond_0
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter "mContext"
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, ShowFlowNewinfos:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/NetWorkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/inveno/flow/upload/WFPvUploadBiz;->pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-virtual {v0}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_timestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 202
    .local v6, start:J
    iget-object v0, p0, Lcom/inveno/flow/upload/WFPvUploadBiz;->pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 203
    sub-long/2addr v1, v6

    .line 202
    invoke-static {v1, v2}, Lcom/inveno/flow/upload/WFPvUploadBiz;->setSizetoDoble(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->setView_time(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;

    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz;->pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;-><init>(Lcom/inveno/flow/upload/WFPvUploadBiz;Ljava/lang/String;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/util/List;Landroid/content/Context;)V

    .line 205
    invoke-virtual {v0}, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->start()V

    .line 207
    .end local v6           #start:J
    :cond_0
    return-void
.end method
