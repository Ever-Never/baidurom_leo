.class public Lcom/baidu/bulletin/http/HttpParam$Request;
.super Ljava/lang/Object;
.source "HttpParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/http/HttpParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public headers:Ljava/util/Map;
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

.field public method:Lcom/baidu/bulletin/http/HttpParam$Method;

.field public params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public proxy:Lcom/baidu/bulletin/http/HttpParam$Host;

.field public range:Lcom/baidu/bulletin/http/HttpParam$Range;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lcom/baidu/bulletin/http/HttpParam$Method;->GET:Lcom/baidu/bulletin/http/HttpParam$Method;

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->method:Lcom/baidu/bulletin/http/HttpParam$Method;

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/baidu/bulletin/http/HttpParam$Host;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpParam$Host;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->proxy:Lcom/baidu/bulletin/http/HttpParam$Host;

    .line 123
    new-instance v0, Lcom/baidu/bulletin/http/HttpParam$Range;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpParam$Range;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->params:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/http/HttpParam$Method;Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .parameter "url"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lcom/baidu/bulletin/http/HttpParam$Method;->GET:Lcom/baidu/bulletin/http/HttpParam$Method;

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->method:Lcom/baidu/bulletin/http/HttpParam$Method;

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/baidu/bulletin/http/HttpParam$Host;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpParam$Host;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->proxy:Lcom/baidu/bulletin/http/HttpParam$Host;

    .line 123
    new-instance v0, Lcom/baidu/bulletin/http/HttpParam$Range;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpParam$Range;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->params:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bulletin/http/HttpParam$Request;->set(Lcom/baidu/bulletin/http/HttpParam$Method;Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

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
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/baidu/bulletin/http/HttpParam$Method;->GET:Lcom/baidu/bulletin/http/HttpParam$Method;

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->method:Lcom/baidu/bulletin/http/HttpParam$Method;

    .line 147
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->proxy:Lcom/baidu/bulletin/http/HttpParam$Host;

    invoke-virtual {v0}, Lcom/baidu/bulletin/http/HttpParam$Host;->reset()V

    .line 149
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    invoke-virtual {v0}, Lcom/baidu/bulletin/http/HttpParam$Range;->reset()V

    .line 151
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    return-void
.end method

.method public set(Lcom/baidu/bulletin/http/HttpParam$Method;Ljava/lang/String;)V
    .locals 0
    .parameter "method"
    .parameter "url"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->method:Lcom/baidu/bulletin/http/HttpParam$Method;

    .line 138
    iput-object p2, p0, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 139
    return-void
.end method
