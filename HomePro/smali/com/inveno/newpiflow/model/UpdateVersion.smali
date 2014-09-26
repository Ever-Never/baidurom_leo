.class public Lcom/inveno/newpiflow/model/UpdateVersion;
.super Ljava/lang/Object;
.source "UpdateVersion.java"


# instance fields
.field private apkurl:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private filemd5:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/inveno/newpiflow/model/UpdateVersion;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, updateVersion:Lcom/inveno/newpiflow/model/UpdateVersion;
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, jsonObject:Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    .local v1, object:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 53
    new-instance v2, Lcom/inveno/newpiflow/model/UpdateVersion;

    .end local v2           #updateVersion:Lcom/inveno/newpiflow/model/UpdateVersion;
    invoke-direct {v2}, Lcom/inveno/newpiflow/model/UpdateVersion;-><init>()V

    .line 54
    .restart local v2       #updateVersion:Lcom/inveno/newpiflow/model/UpdateVersion;
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/model/UpdateVersion;->setVersion(Ljava/lang/String;)V

    .line 55
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/model/UpdateVersion;->setContent(Ljava/lang/String;)V

    .line 56
    const-string v3, "apkurl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/model/UpdateVersion;->setApkurl(Ljava/lang/String;)V

    .line 58
    const-string v3, "filemd5"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/model/UpdateVersion;->setFilemd5(Ljava/lang/String;)V

    .line 65
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    .end local v1           #object:Lorg/json/JSONObject;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getApkurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/inveno/newpiflow/model/UpdateVersion;->apkurl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inveno/newpiflow/model/UpdateVersion;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFilemd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inveno/newpiflow/model/UpdateVersion;->filemd5:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/inveno/newpiflow/model/UpdateVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApkurl(Ljava/lang/String;)V
    .locals 0
    .parameter "apkurl"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/inveno/newpiflow/model/UpdateVersion;->apkurl:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/inveno/newpiflow/model/UpdateVersion;->content:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setFilemd5(Ljava/lang/String;)V
    .locals 0
    .parameter "filemd5"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/inveno/newpiflow/model/UpdateVersion;->filemd5:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/inveno/newpiflow/model/UpdateVersion;->version:Ljava/lang/String;

    .line 20
    return-void
.end method
