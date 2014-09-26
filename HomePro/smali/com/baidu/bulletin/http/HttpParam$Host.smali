.class public Lcom/baidu/bulletin/http/HttpParam$Host;
.super Ljava/lang/Object;
.source "HttpParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/http/HttpParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Host"
.end annotation


# static fields
.field static final DEFAULT_PORT:I = 0x50


# instance fields
.field public port:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    .line 22
    const/16 v0, 0x50

    iput v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->port:I

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

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
    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    .line 43
    const/16 v0, 0x50

    iput v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->port:I

    .line 44
    return-void
.end method

.method public toHostString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bulletin/http/HttpParam$Host;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    .line 31
    iget v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->port:I

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
