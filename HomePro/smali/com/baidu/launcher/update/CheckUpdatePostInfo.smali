.class public Lcom/baidu/launcher/update/CheckUpdatePostInfo;
.super Ljava/lang/Object;
.source "CheckUpdatePostInfo.java"


# instance fields
.field private buildversion:Ljava/lang/String;

.field private channelid:Ljava/lang/String;

.field private type:I

.field private versioncode:I

.field private versionname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->type:I

    .line 13
    return-void
.end method


# virtual methods
.method public getBuildversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->buildversion:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->channelid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->type:I

    return v0
.end method

.method public getVersioncode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->versioncode:I

    return v0
.end method

.method public getVersionname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->versionname:Ljava/lang/String;

    return-object v0
.end method

.method public setBuildversion(Ljava/lang/String;)V
    .locals 0
    .parameter "buildversion"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->buildversion:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setChannelid(Ljava/lang/String;)V
    .locals 0
    .parameter "channelid"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->channelid:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 20
    iput p1, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->type:I

    .line 21
    return-void
.end method

.method public setVersioncode(I)V
    .locals 0
    .parameter "versioncode"

    .prologue
    .line 28
    iput p1, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->versioncode:I

    .line 29
    return-void
.end method

.method public setVersionname(Ljava/lang/String;)V
    .locals 0
    .parameter "versionname"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/launcher/update/CheckUpdatePostInfo;->versionname:Ljava/lang/String;

    .line 37
    return-void
.end method
