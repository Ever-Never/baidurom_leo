.class public Lcom/baidu/launcher/thememanager/network/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/network/Request$RequestType;
    }
.end annotation


# static fields
.field public static final METHOD_TYPE_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_TYPE_POST:Ljava/lang/String; = "POST"

.field private static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field ThemeServer:Ljava/lang/String;

.field public mGetParam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public mPostBody:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestType:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field private method:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->ThemeServer:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->mGetParam:Ljava/util/List;

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->ver:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->mPostBody:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public addGetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->mGetParam:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->mPostBody:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->method:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GET"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->method:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReqType()Lcom/baidu/launcher/thememanager/network/Request$RequestType;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->mRequestType:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/Request;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/Request;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/network/Request;->url:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/Request;->url:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/Request;->url:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/network/Request;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 110
    :goto_1
    return-object v1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/Request;->ThemeServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/Request;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/Request;->url:Ljava/lang/String;

    goto :goto_1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/network/Request;->ThemeServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/network/Request;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/network/Request;->mGetParam:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/network/Request;->mGetParam:Ljava/util/List;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, param:Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .end local v0           #param:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getVer()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->ver:I

    return v0
.end method

.method public newVer()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/thememanager/network/Request;->ver:I

    .line 63
    return-void
.end method

.method public setMethodType(Ljava/lang/String;)V
    .locals 0
    .parameter "md"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/Request;->method:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/Request;->path:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setReqType(Lcom/baidu/launcher/thememanager/network/Request$RequestType;)V
    .locals 0
    .parameter "request_type"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/Request;->mRequestType:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 79
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/Request;->url:Ljava/lang/String;

    .line 95
    return-void
.end method
