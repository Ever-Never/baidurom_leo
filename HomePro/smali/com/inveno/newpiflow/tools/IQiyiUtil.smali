.class public Lcom/inveno/newpiflow/tools/IQiyiUtil;
.super Ljava/lang/Object;
.source "IQiyiUtil.java"


# static fields
.field private static final DATA_OBTAIN_URL:Ljava/lang/String; = "http://cloud.os.baidu.com/screensrv/api/album"

.field public static final IQIYI_DOWNLOAD_URL:Ljava/lang/String; = "http://mbdapp.iqiyi.com/j/ap/qiyi.196.apk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "page"
    .parameter "count"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, json:Ljava/lang/String;
    if-gez p1, :cond_0

    if-lez p2, :cond_2

    .line 24
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v6, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "from"

    const-string v8, "baiyi"

    invoke-direct {v1, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v1, pair0:Lorg/apache/http/message/BasicNameValuePair;
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "token"

    const-string v8, "chunlei2014"

    invoke-direct {v2, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v2, pair1:Lorg/apache/http/message/BasicNameValuePair;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 28
    const-string p3, "0123456789"

    .line 30
    :cond_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "uid"

    invoke-direct {v3, v7, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v3, pair2:Lorg/apache/http/message/BasicNameValuePair;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "pn"

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v4, pair3:Lorg/apache/http/message/BasicNameValuePair;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "rn"

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v5, pair4:Lorg/apache/http/message/BasicNameValuePair;
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v7, "http://cloud.os.baidu.com/screensrv/api/album"

    const/4 v8, 0x1

    invoke-static {v7, v6, v8}, Lcom/inveno/newpiflow/download/HttpDownload;->requestJsonStr(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .end local v1           #pair0:Lorg/apache/http/message/BasicNameValuePair;
    .end local v2           #pair1:Lorg/apache/http/message/BasicNameValuePair;
    .end local v3           #pair2:Lorg/apache/http/message/BasicNameValuePair;
    .end local v4           #pair3:Lorg/apache/http/message/BasicNameValuePair;
    .end local v5           #pair4:Lorg/apache/http/message/BasicNameValuePair;
    .end local v6           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_2
    return-object v0
.end method

.method public static initData(Landroid/content/Context;)Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    new-instance v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;

    invoke-direct {v0}, Lcom/inveno/newpiflow/model/BizShowFlowNew;-><init>()V

    return-object v0
.end method
