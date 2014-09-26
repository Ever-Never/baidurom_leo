.class public Lcom/baidu/launcher/update/UpdateResponceInfo;
.super Ljava/lang/Object;
.source "UpdateResponceInfo.java"


# instance fields
.field private app_name:Ljava/lang/String;

.field private market:[Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->market:[Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->version_name:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0
    .parameter "app_name"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->app_name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMarket([Ljava/lang/String;)V
    .locals 0
    .parameter "market"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->market:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->url:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setVersion_name(Ljava/lang/String;)V
    .locals 0
    .parameter "version_name"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->version_name:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateResponceInfo [ url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "market"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateResponceInfo;->market:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
