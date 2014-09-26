.class public Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field public mApiKey:Ljava/lang/String;

.field public mAppId:Ljava/lang/String;

.field public mCloud:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public mRootDir:Ljava/lang/String;

.field public mSecretKey:Ljava/lang/String;

.field public mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "pkgName"
    .parameter "token"
    .parameter "cloud"
    .parameter "apiKey"

    .prologue
    .line 26
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"
    .parameter "token"
    .parameter "cloud"
    .parameter "apiKey"
    .parameter "appId"
    .parameter "rootDir"
    .parameter "secretKey"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p4, p0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mPkgName:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mRootDir:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mCloud:Ljava/lang/String;

    .line 23
    return-void
.end method
