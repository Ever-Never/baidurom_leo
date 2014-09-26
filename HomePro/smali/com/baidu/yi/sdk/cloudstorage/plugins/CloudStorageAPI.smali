.class public abstract Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
.super Ljava/lang/Object;
.source "CloudStorageAPI.java"


# instance fields
.field protected mAppId:Ljava/lang/String;

.field protected mAppKey:Ljava/lang/String;

.field protected mAuthType:I

.field protected mContext:Landroid/content/Context;

.field protected mControl:I

.field protected mRootPath:Ljava/lang/String;

.field protected mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "rootPath"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mRootPath:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mControl:I

    .line 33
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->OAUTH2:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mAuthType:I

    .line 34
    return-void
.end method


# virtual methods
.method public changeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "bduss"
    .parameter "apiKey"
    .parameter "secretKey"
    .parameter "code"

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteFile(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V
    .locals 0
    .parameter "remotePath"
    .parameter "code"

    .prologue
    .line 118
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mAuthType:I

    return v0
.end method

.method public getControl()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mControl:I

    return v0
.end method

.method public getFile(Ljava/lang/String;Ljava/io/OutputStream;JJLcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 1
    .parameter "remotePath"
    .parameter "os"
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .parameter "code"

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/io/OutputStream;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 1
    .parameter "remotePath"
    .parameter "os"
    .parameter "listener"
    .parameter "code"

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeta(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 1
    .parameter "remotePath"
    .parameter "code"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOfflineInfo(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    .locals 1
    .parameter "taskid"
    .parameter "remotePath"
    .parameter "code"

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuota(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    .locals 1
    .parameter "remotePath"
    .parameter "code"

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public listDirectory(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "remotePath"
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public offlineFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "remotePath"
    .parameter "localPath"
    .parameter "code"

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mAppId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mAppKey:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setAuthType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 50
    iput p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mAuthType:I

    .line 51
    return-void
.end method

.method public setControl(I)V
    .locals 0
    .parameter "control"

    .prologue
    .line 42
    iput p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mControl:I

    .line 43
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->mToken:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public startAuth(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthListener;)V
    .locals 0
    .parameter "context"
    .parameter "appKey"
    .parameter "listener"

    .prologue
    .line 39
    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/io/InputStream;JLcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 1
    .parameter "remotePath"
    .parameter "is"
    .parameter "size"
    .parameter "listener"
    .parameter "code"

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 1
    .parameter "remotePath"
    .parameter "localPath"
    .parameter "listener"
    .parameter "code"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method
