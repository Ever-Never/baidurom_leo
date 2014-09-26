.class public Lcom/baidu/launcher/network/http/HttpParam$Request;
.super Ljava/lang/Object;
.source "HttpParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/HttpParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public host:Ljava/lang/String;

.field public method:Lcom/baidu/launcher/network/http/HttpParam$Method;

.field params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public proxy:Lcom/baidu/launcher/network/http/HttpParam$Host;

.field public range:Lcom/baidu/launcher/network/http/HttpParam$Range;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    sget-object v0, Lcom/baidu/launcher/network/http/HttpParam$Method;->GET:Lcom/baidu/launcher/network/http/HttpParam$Method;

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->method:Lcom/baidu/launcher/network/http/HttpParam$Method;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/baidu/launcher/network/http/HttpParam$Host;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/HttpParam$Host;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->proxy:Lcom/baidu/launcher/network/http/HttpParam$Host;

    .line 139
    new-instance v0, Lcom/baidu/launcher/network/http/HttpParam$Range;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/HttpParam$Range;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->range:Lcom/baidu/launcher/network/http/HttpParam$Range;

    .line 146
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    sget-object v0, Lcom/baidu/launcher/network/http/HttpParam$Method;->GET:Lcom/baidu/launcher/network/http/HttpParam$Method;

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->method:Lcom/baidu/launcher/network/http/HttpParam$Method;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->proxy:Lcom/baidu/launcher/network/http/HttpParam$Host;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpParam$Host;->reset()V

    .line 162
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->range:Lcom/baidu/launcher/network/http/HttpParam$Range;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpParam$Range;->reset()V

    .line 164
    iput-object v1, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->params:Ljava/util/List;

    .line 165
    iput-object v1, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    .line 166
    return-void
.end method

.method public set(Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V
    .locals 0
    .parameter "method"
    .parameter "url"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->method:Lcom/baidu/launcher/network/http/HttpParam$Method;

    .line 150
    iput-object p2, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setHttpHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public setUrlParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->params:Ljava/util/List;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->params:Ljava/util/List;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Request;->params:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method
