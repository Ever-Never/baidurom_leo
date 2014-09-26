.class public Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static final CLOUD_DEFAULT:Ljava/lang/String; = "baidu"

.field private static final CLOUD_PREFIX:Ljava/lang/String; = "cloud://"

.field public static final TAG:Ljava/lang/String; = "PluginManager"

.field private static mInstance:Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private collapseSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    const/16 v6, 0x2f

    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, p1

    .line 119
    :goto_0
    return-object v4

    .line 106
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 107
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 112
    .local v2, last:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 114
    .local v0, current:C
    if-eqz v1, :cond_4

    if-ne v0, v6, :cond_4

    if-eq v2, v6, :cond_5

    .line 115
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    move v2, v0

    .line 112
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private createCloudStoragePlugin(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    .locals 9
    .parameter "task"
    .parameter "code"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/16 v8, 0xb

    .line 168
    if-nez p1, :cond_1

    .line 169
    const-string v5, "PluginManager"

    const-string v6, "null task request when creating api!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 262
    :cond_0
    :goto_0
    return-object v1

    .line 173
    :cond_1
    const/4 v1, 0x0

    .line 174
    .local v1, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCloudProvider:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCloudProvider:Ljava/lang/String;

    const-string v6, "baidu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 175
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCloudProvider:Ljava/lang/String;

    invoke-direct {p0, v5, v6, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getTokenFromDB(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;

    move-result-object v3

    .line 176
    .local v3, info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    if-eqz v3, :cond_3

    .line 177
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    .end local v1           #api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v4}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    .restart local v1       #api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 179
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/yi/sdk/YiUtils;->isYiPhone(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 180
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->instance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    move-result-object v0

    .line 182
    .local v0, am:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    :try_start_0
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->isLoginIn()Z

    move-result v5

    if-nez v5, :cond_4

    .line 183
    const/16 v5, 0xe

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 249
    .end local v0           #am:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    :cond_2
    :goto_1
    const-string v5, "baiduPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "token: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apiKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 250
    const-string v7, " secretKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Create api for request: localPath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v7, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", remote="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 254
    const-string v7, ", pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v3           #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    :cond_3
    :goto_2
    iget v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 260
    goto/16 :goto_0

    .line 185
    .restart local v0       #am:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    .restart local v3       #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    .line 186
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 187
    const/4 v5, 0x0

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 188
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAppKey(Ljava/lang/String;)V

    .line 189
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAppId(Ljava/lang/String;)V

    .line 190
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 191
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    iget-object v6, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->changeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    .line 192
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 193
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->OAUTH2:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    .line 194
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setToken(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 197
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->insertAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 218
    :catch_0
    move-exception v2

    .line 220
    .local v2, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 221
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 200
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :cond_5
    :try_start_2
    const-string v5, "PluginManager"

    const-string v6, "Get null token from changeToken"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    const/4 v6, -0x3

    if-eq v5, v6, :cond_2

    .line 202
    const/16 v5, 0xb

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 222
    :catch_1
    move-exception v2

    .line 224
    .local v2, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 225
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 206
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :cond_6
    :try_start_3
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    .line 207
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setToken(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->insertAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 226
    :catch_2
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 214
    .end local v2           #e:Ljava/io/IOException;
    :cond_7
    :try_start_4
    const-string v5, "PluginManager"

    const-string v6, "Get null token"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/16 v5, 0xb

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_4
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 232
    .end local v0           #am:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    :cond_8
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 235
    :cond_9
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/yi/sdk/YiUtils;->isYiPhone(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 236
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 237
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->OAUTH2:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    .line 244
    :goto_3
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setToken(Ljava/lang/String;)V

    .line 245
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAppKey(Ljava/lang/String;)V

    .line 246
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAppId(Ljava/lang/String;)V

    .line 247
    iput v7, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 239
    :cond_a
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    goto :goto_3

    .line 242
    :cond_b
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->OAUTH2:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    goto :goto_3

    .line 257
    .end local v3           #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    :cond_c
    const/16 v5, -0xc

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_2
.end method

.method private createCloudStoragePlugin(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    .locals 9
    .parameter "task"
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xb

    .line 268
    if-nez p1, :cond_1

    .line 269
    const-string v5, "PluginManager"

    const-string v6, "null file request when creating api!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 361
    :cond_0
    :goto_0
    return-object v1

    .line 273
    :cond_1
    const/4 v1, 0x0

    .line 274
    .local v1, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->cloud:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->cloud:Ljava/lang/String;

    const-string v6, "baidu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 275
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->pkgName:Ljava/lang/String;

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->cloud:Ljava/lang/String;

    invoke-direct {p0, v5, v6, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getTokenFromDB(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;

    move-result-object v3

    .line 276
    .local v3, info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    if-eqz v3, :cond_3

    .line 277
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    .end local v1           #api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v4}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    .restart local v1       #api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 279
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/yi/sdk/YiUtils;->isYiPhone(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 280
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->instance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    move-result-object v0

    .line 282
    .local v0, am:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    :try_start_0
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->isLoginIn()Z

    move-result v5

    if-nez v5, :cond_4

    .line 283
    const/16 v5, 0xe

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 348
    .end local v0           #am:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    :cond_2
    :goto_1
    const-string v5, "baiduPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "token: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apiKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 349
    const-string v7, " secretKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Create api for request: localPath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    iget-object v7, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->localPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", remote="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->remotePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 353
    const-string v7, ", pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v3           #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    :cond_3
    :goto_2
    iget v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 359
    goto/16 :goto_0

    .line 285
    .restart local v0       #am:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    .restart local v3       #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    .line 286
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 287
    const/4 v5, 0x0

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 288
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAppKey(Ljava/lang/String;)V

    .line 289
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAppId(Ljava/lang/String;)V

    .line 290
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 291
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    iget-object v6, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    iget-object v7, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->changeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    .line 292
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 293
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->OAUTH2:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    .line 294
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setToken(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 297
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->insertAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 318
    :catch_0
    move-exception v2

    .line 320
    .local v2, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 321
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 300
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :cond_5
    :try_start_2
    const-string v5, "PluginManager"

    const-string v6, "Get null token from changeToken"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    const/4 v6, -0x3

    if-eq v5, v6, :cond_2

    .line 302
    const/16 v5, 0xb

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 322
    :catch_1
    move-exception v2

    .line 324
    .local v2, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 325
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 306
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :cond_6
    :try_start_3
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    .line 307
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setToken(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 310
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->insertAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 326
    :catch_2
    move-exception v2

    .line 328
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 329
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 314
    .end local v2           #e:Ljava/io/IOException;
    :cond_7
    :try_start_4
    const-string v5, "PluginManager"

    const-string v6, "Get null token"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v5, 0xb

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_4
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 332
    .end local v0           #am:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    :cond_8
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_1

    .line 335
    :cond_9
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/yi/sdk/YiUtils;->isYiPhone(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 336
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 337
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->OAUTH2:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    .line 344
    :goto_3
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setToken(Ljava/lang/String;)V

    .line 345
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAppKey(Ljava/lang/String;)V

    .line 346
    iget-object v5, v3, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAppId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 339
    :cond_a
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    goto :goto_3

    .line 342
    :cond_b
    sget-object v5, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->OAUTH2:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setAuthType(I)V

    goto :goto_3

    .line 356
    .end local v3           #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    :cond_c
    const/16 v5, -0xc

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_2
.end method

.method private dumpEntries(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 370
    :cond_0
    const-string v1, "PluginManager"

    const-string v2, "empty entries!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    return-void

    .line 373
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    .line 374
    .local v0, fe:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "entry info: filename-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isDir-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 375
    iget v4, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->isDir:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 376
    const-string v4, ", md5-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpEntry(Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    const-string v0, "PluginManager"

    const-string v1, "null entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "entry info: filename-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDir-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 386
    iget v2, p1, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->isDir:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    const-string v2, ", md5-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 57
    const-class v1, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    invoke-direct {v0, p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTokenFromDB(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    .locals 10
    .parameter "pkgName"
    .parameter "cloud"
    .parameter "code"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    const/4 v2, 0x0

    .line 126
    .local v2, token:Ljava/lang/String;
    const/4 v5, 0x0

    .line 127
    .local v5, appId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 128
    .local v4, apiKey:Ljava/lang/String;
    const/4 v7, 0x0

    .line 129
    .local v7, secretKey:Ljava/lang/String;
    const/4 v9, 0x0

    .line 130
    .local v9, isFound:Z
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getAllAuthInfo(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v8

    .line 131
    .local v8, c:Landroid/database/Cursor;
    if-eqz p1, :cond_4

    if-eqz v8, :cond_4

    if-eqz p2, :cond_4

    .line 133
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    :goto_1
    if-eqz v8, :cond_0

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_0
    if-eqz v9, :cond_1

    if-nez v5, :cond_5

    .line 153
    :cond_1
    const-string v1, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can not find key for app: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", cloud: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v1, 0xd

    iput v1, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 159
    :goto_2
    return-object v0

    .line 135
    :cond_2
    const-string v1, "package_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const-string v1, "cloud_provider"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    const/4 v9, 0x1

    .line 138
    const-string v1, "token"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v1, "app_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    const-string v1, "api_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    const-string v1, "secret_key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 142
    goto :goto_1

    .line 133
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 146
    :cond_4
    const-string v1, "PluginManager"

    const-string v3, "Cursor error or null package name!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 156
    :cond_5
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;

    .end local v0           #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    goto :goto_2
.end method


# virtual methods
.method public dispatchFileRequest(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const-string v0, "PluginManager"

    const-string v1, "Null task info!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 69
    :cond_0
    iget v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->DOWNLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 70
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleDownloadFile(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;

    goto :goto_0

    .line 71
    :cond_1
    iget v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->UPLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 72
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleUploadFile(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;

    goto :goto_0

    .line 73
    :cond_2
    iget v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->OFFLINE:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 74
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleOfflineFile(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;

    goto :goto_0

    .line 75
    :cond_3
    iget v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->OFFLINEINFO:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 76
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleOfflineTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;

    goto :goto_0

    .line 78
    :cond_4
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not handle task for action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleAuthentication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "pkgName"
    .parameter "token"
    .parameter "uuid"
    .parameter "cloud"
    .parameter "appId"
    .parameter "apiKey"
    .parameter "secretKey"

    .prologue
    .line 670
    if-eqz p5, :cond_1

    const-string v1, "baidu"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;

    .line 672
    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p7

    move-object v5, p6

    move-object/from16 v7, p8

    .line 671
    invoke-direct/range {v0 .. v7}, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .local v0, info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->insertAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Landroid/net/Uri;

    .line 677
    :cond_0
    new-instance v6, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;

    invoke-direct {v6}, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;-><init>()V

    .line 678
    .local v6, code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    const/4 v1, 0x0

    iput v1, v6, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 679
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v1

    .line 680
    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p6

    .line 679
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->notifyAuthResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V

    .line 687
    .end local v0           #info:Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
    :goto_0
    return-void

    .line 682
    .end local v6           #code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    :cond_1
    new-instance v6, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;

    invoke-direct {v6}, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;-><init>()V

    .line 683
    .restart local v6       #code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    const/4 v1, -0x1

    iput v1, v6, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 684
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v1

    const/4 v4, 0x0

    .line 685
    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p4

    .line 684
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->notifyAuthResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V

    goto :goto_0
.end method

.method public handleDeleteFile(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;)Landroid/os/Message;
    .locals 5
    .parameter "request"

    .prologue
    .line 407
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;

    invoke-direct {v1}, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;-><init>()V

    .line 408
    .local v1, code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    invoke-direct {p0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->createCloudStoragePlugin(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;

    move-result-object v0

    .line 409
    .local v0, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    const-string v2, "PluginManager"

    const-string v3, "handle delete request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-nez v0, :cond_0

    .line 412
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to create api! code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->notifyDeleteFile(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V

    .line 417
    const/4 v2, 0x0

    return-object v2

    .line 414
    :cond_0
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->remotePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->deleteFile(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V

    goto :goto_0
.end method

.method public handleDownloadFile(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;
    .locals 13
    .parameter "task"

    .prologue
    const/4 v12, 0x0

    const/16 v3, 0x1f5

    .line 421
    new-instance v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;

    invoke-direct {v7}, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;-><init>()V

    .line 422
    .local v7, code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    invoke-direct {p0, p1, v7}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->createCloudStoragePlugin(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;

    move-result-object v6

    .line 423
    .local v6, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    const-string v0, "PluginManager"

    const-string v1, "handle download request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez v6, :cond_0

    .line 426
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to create api! code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iput v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 428
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 493
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    .line 494
    iget v5, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 492
    invoke-static/range {v0 .. v5}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyDownloadResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 495
    :goto_1
    return-object v12

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v9, Ljava/io/File;

    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 441
    const/4 v10, 0x0

    .line 443
    .local v10, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Open file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v10, Ljava/io/FileOutputStream;

    .end local v10           #fos:Ljava/io/FileOutputStream;
    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    new-instance v11, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;

    invoke-direct {v11, p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    .line 474
    .local v11, listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
    const/16 v0, 0xc0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 475
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 476
    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v6, v0, v10, v11, v7}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getFile(Ljava/lang/String;Ljava/io/OutputStream;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    .line 477
    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getControl()I

    move-result v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 478
    const/16 v0, -0xa

    iput v0, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 490
    :goto_2
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 445
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v11           #listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
    :catch_0
    move-exception v8

    .line 446
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 449
    iput v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 450
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 451
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const/4 v0, -0x7

    iput v0, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 453
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 454
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    .line 455
    iget v5, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 453
    invoke-static/range {v0 .. v5}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyDownloadResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 479
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
    :cond_1
    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getControl()I

    move-result v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 480
    const/16 v0, -0xb

    iput v0, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 482
    :cond_2
    iget v0, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    if-nez v0, :cond_3

    .line 483
    const/16 v0, 0xc8

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 488
    :goto_3
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    goto :goto_2

    .line 486
    :cond_3
    const/16 v0, 0x1f4

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    goto :goto_3
.end method

.method public handleListDirectory(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;)Landroid/os/Message;
    .locals 6
    .parameter "request"

    .prologue
    .line 391
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;

    invoke-direct {v1}, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;-><init>()V

    .line 392
    .local v1, code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    invoke-direct {p0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->createCloudStoragePlugin(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;

    move-result-object v0

    .line 393
    .local v0, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    const-string v3, "PluginManager"

    const-string v4, "handle list request"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;>;"
    if-nez v0, :cond_0

    .line 397
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to create api! code = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v1}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->notifyListDirectory(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Ljava/util/ArrayList;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V

    .line 403
    const/4 v3, 0x0

    return-object v3

    .line 399
    :cond_0
    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->remotePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->listDirectory(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/util/ArrayList;

    move-result-object v2

    .line 400
    invoke-direct {p0, v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->dumpEntries(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public handleOfflineFile(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;
    .locals 10
    .parameter "task"

    .prologue
    const/4 v9, 0x0

    const/16 v4, 0x1f5

    const/16 v3, 0x1f4

    .line 559
    const/4 v5, 0x0

    .line 561
    .local v5, taskid:Ljava/lang/String;
    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 562
    iput v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 563
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 564
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 565
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    .line 566
    const/4 v6, -0x6

    .line 564
    invoke-static/range {v0 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyOfflineResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 606
    :goto_0
    return-object v9

    .line 569
    :cond_0
    new-instance v8, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;

    invoke-direct {v8}, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;-><init>()V

    .line 570
    .local v8, code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    invoke-direct {p0, p1, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->createCloudStoragePlugin(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;

    move-result-object v7

    .line 571
    .local v7, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    const-string v0, "PluginManager"

    const-string v1, "handle offline request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-nez v7, :cond_2

    .line 574
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to create api! code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget v0, v8, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 576
    iput v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 580
    :goto_1
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 603
    :goto_2
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 604
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    .line 605
    iget v6, v8, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 603
    invoke-static/range {v0 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyOfflineResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 578
    :cond_1
    iput v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    goto :goto_1

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const/16 v0, 0xc0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 585
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 586
    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v7, v0, v1, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->offlineFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;

    move-result-object v5

    .line 587
    invoke-virtual {v7}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getControl()I

    move-result v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 588
    const/16 v0, -0xa

    iput v0, v8, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 601
    :goto_3
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 589
    :cond_3
    invoke-virtual {v7}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getControl()I

    move-result v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 590
    const-string v0, "PluginManager"

    const-string v1, "User cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v0, -0xb

    iput v0, v8, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_3

    .line 593
    :cond_4
    iget v0, v8, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    if-nez v0, :cond_5

    .line 594
    const/16 v0, 0xc8

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 599
    :goto_4
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    goto :goto_3

    .line 597
    :cond_5
    iput v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    goto :goto_4
.end method

.method public handleOfflineTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;
    .locals 14
    .parameter "task"

    .prologue
    .line 610
    const/4 v13, 0x0

    .line 612
    .local v13, offlineInfo:Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 613
    const/16 v0, 0x1f5

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 614
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 615
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 616
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    .line 617
    const/4 v10, -0x6

    .line 615
    invoke-static/range {v0 .. v10}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyOfflineInfoResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJI)V

    .line 618
    const/4 v0, 0x0

    .line 663
    :goto_0
    return-object v0

    .line 620
    :cond_0
    new-instance v12, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;

    invoke-direct {v12}, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;-><init>()V

    .line 621
    .local v12, code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    invoke-direct {p0, p1, v12}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->createCloudStoragePlugin(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;

    move-result-object v11

    .line 622
    .local v11, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    const-string v0, "PluginManager"

    const-string v1, "handleOfflineTaskInfo request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    if-nez v11, :cond_2

    .line 625
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to create api! code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v12, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget v0, v12, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 627
    const/16 v0, 0x1f4

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 631
    :goto_1
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 654
    :goto_2
    if-eqz v13, :cond_6

    .line 655
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 656
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, v13, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->taskid:Ljava/lang/String;

    iget v4, v13, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->result:I

    iget v5, v13, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->status:I

    .line 657
    iget-wide v6, v13, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->finishsize:J

    iget-wide v8, v13, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->filesize:J

    iget v10, v12, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 655
    invoke-static/range {v0 .. v10}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyOfflineInfoResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJI)V

    .line 663
    :goto_3
    const/4 v0, 0x0

    goto :goto_0

    .line 629
    :cond_1
    const/16 v0, 0x1f5

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    goto :goto_1

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const/16 v0, 0xc0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 636
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 637
    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v11, v0, v1, v12}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getOfflineInfo(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;

    move-result-object v13

    .line 638
    invoke-virtual {v11}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getControl()I

    move-result v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 639
    const/16 v0, -0xa

    iput v0, v12, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 652
    :goto_4
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 640
    :cond_3
    invoke-virtual {v11}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getControl()I

    move-result v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 641
    const-string v0, "PluginManager"

    const-string v1, "User cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/16 v0, -0xb

    iput v0, v12, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_4

    .line 644
    :cond_4
    iget v0, v12, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    if-nez v0, :cond_5

    .line 645
    const/16 v0, 0xc8

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 650
    :goto_5
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    goto :goto_4

    .line 648
    :cond_5
    const/16 v0, 0x1f4

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    goto :goto_5

    .line 659
    :cond_6
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 660
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    .line 661
    iget v10, v12, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 659
    invoke-static/range {v0 .. v10}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyOfflineInfoResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJI)V

    goto :goto_3
.end method

.method public handleUploadFile(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;
    .locals 11
    .parameter "task"

    .prologue
    const/4 v10, 0x0

    const/16 v3, 0x1f5

    .line 500
    new-instance v8, Ljava/io/File;

    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iput v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 503
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 504
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 505
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    .line 506
    const/4 v5, -0x6

    .line 504
    invoke-static/range {v0 .. v5}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyUploadResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 555
    :goto_0
    return-object v10

    .line 509
    :cond_0
    new-instance v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;

    invoke-direct {v7}, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;-><init>()V

    .line 510
    .local v7, code:Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;
    invoke-direct {p0, p1, v7}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->createCloudStoragePlugin(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;

    move-result-object v6

    .line 511
    .local v6, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    const-string v0, "PluginManager"

    const-string v1, "handle upload request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-nez v6, :cond_1

    .line 514
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to create api! code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iput v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 516
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 552
    :goto_1
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 553
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    .line 554
    iget v5, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 552
    invoke-static/range {v0 .. v5}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyUploadResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v9, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$2;

    invoke-direct {v9, p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$2;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    .line 533
    .local v9, listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
    const/16 v0, 0xc0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 534
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 535
    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v6, v0, v1, v9, v7}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    .line 536
    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getControl()I

    move-result v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 537
    const/16 v0, -0xa

    iput v0, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 550
    :goto_2
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 538
    :cond_2
    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->getControl()I

    move-result v0

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 539
    const-string v0, "PluginManager"

    const-string v1, "User cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v0, -0xb

    iput v0, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 542
    :cond_3
    iget v0, v7, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    if-nez v0, :cond_4

    .line 543
    const/16 v0, 0xc8

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 548
    :goto_3
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    goto :goto_2

    .line 546
    :cond_4
    const/16 v0, 0x1f4

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    goto :goto_3
.end method

.method public suspendTask(Ljava/lang/String;I)V
    .locals 4
    .parameter "taskId"
    .parameter "control"

    .prologue
    .line 690
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mControls:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;

    .line 691
    .local v0, api:Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
    if-eqz v0, :cond_0

    .line 692
    const-string v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancel task: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in api "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {v0, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;->setControl(I)V

    .line 695
    :cond_0
    return-void
.end method
