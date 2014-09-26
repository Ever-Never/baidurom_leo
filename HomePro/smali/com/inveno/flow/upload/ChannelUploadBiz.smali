.class public Lcom/inveno/flow/upload/ChannelUploadBiz;
.super Ljava/lang/Object;
.source "ChannelUploadBiz.java"


# static fields
.field private static channelUploadBiz:Lcom/inveno/flow/upload/ChannelUploadBiz;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flow/upload/ChannelUploadBiz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inveno/flow/upload/ChannelUploadBiz;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/inveno/flow/upload/ChannelUploadBiz;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/inveno/flow/upload/ChannelUploadBiz;->channelUploadBiz:Lcom/inveno/flow/upload/ChannelUploadBiz;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/inveno/flow/upload/ChannelUploadBiz;

    invoke-direct {v0}, Lcom/inveno/flow/upload/ChannelUploadBiz;-><init>()V

    sput-object v0, Lcom/inveno/flow/upload/ChannelUploadBiz;->channelUploadBiz:Lcom/inveno/flow/upload/ChannelUploadBiz;

    .line 32
    :cond_0
    sget-object v0, Lcom/inveno/flow/upload/ChannelUploadBiz;->channelUploadBiz:Lcom/inveno/flow/upload/ChannelUploadBiz;

    return-object v0
.end method

.method private post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "imei"
    .parameter "version"
    .parameter "channels"
    .parameter "url"

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, result:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "app"

    const-string v5, "baiyixun"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "net"

    const-string v5, "wifi"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "city"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "location"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "province"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "street"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "imei"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "os"

    const-string v5, "android"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "osversion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "phonemodel"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "channel"

    const-string v5, "ss"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mobile"

    const-string v5, "CUCC"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "log"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "types"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :try_start_0
    invoke-static {p4, v1}, Lcom/inveno/newpiflow/download/HttpDownload;->androidHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    :goto_0
    const-string v3, "pv"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e0a\u4f20\u7011\u5e03\u6d41\u9891\u9053\u8fd4\u56de\u7801\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    const-string v3, "pv"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e0a\u4f20\u7011\u5e03\u6d41\u9891\u9053\u4e0d\u6210\u529f,IOException"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "version"
    .parameter "channels"
    .parameter "url"

    .prologue
    .line 47
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/NetWorkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/TelephonyManagerTools;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, imei:Ljava/lang/String;
    invoke-static {v6}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v6, "999999999999999"

    .line 53
    :cond_0
    move-object v2, v6

    .line 54
    .local v2, uid:Ljava/lang/String;
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inveno/flow/upload/ChannelUploadBiz$1;-><init>(Lcom/inveno/flow/upload/ChannelUploadBiz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 65
    .end local v2           #uid:Ljava/lang/String;
    .end local v6           #imei:Ljava/lang/String;
    :cond_1
    return-void
.end method
