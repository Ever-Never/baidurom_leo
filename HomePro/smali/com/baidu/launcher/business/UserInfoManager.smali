.class public Lcom/baidu/launcher/business/UserInfoManager;
.super Ljava/lang/Object;
.source "UserInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/baidu/launcher/business/UserInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/business/UserInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/baidu/launcher/business/UserInfoManager$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/business/UserInfoManager$1;-><init>(Lcom/baidu/launcher/business/UserInfoManager;)V

    iput-object v0, p0, Lcom/baidu/launcher/business/UserInfoManager;->mCallback:Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;

    .line 52
    iput-object p1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/business/UserInfoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/launcher/business/UserInfoManager;->recordBindUserInfo()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/baidu/launcher/business/UserInfoManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/business/UserInfoManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private recordBindUserInfo()V
    .locals 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BIND_USERINFO:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 96
    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BIND_USERINFO_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 99
    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_START_SYNC:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 101
    new-instance v0, Lcom/baidu/launcher/business/BusinessSyncManager;

    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/BusinessSyncManager;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, appManager:Lcom/baidu/launcher/business/BusinessSyncManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->syncRecomendApp()V

    .line 104
    return-void
.end method


# virtual methods
.method public bindUserInfo()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/baidu/launcher/business/item/PhoneInfo;

    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/item/PhoneInfo;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, phoneinfo:Lcom/baidu/launcher/business/item/PhoneInfo;
    sget-object v1, Lcom/baidu/launcher/business/UserInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindUserInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/PhoneInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/business/UserInfoManager;->mCallback:Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;

    invoke-static {v1, v0, v2}, Lcom/baidu/launcher/protocol/Agent;->bindUserInfo(Landroid/content/Context;Lcom/baidu/launcher/business/item/PhoneInfo;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V

    .line 59
    return-void
.end method

.method public getUpdateUserInfoTime()J
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BIND_USERINFO_TIME:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isBindUserInfo()Z
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BIND_USERINFO:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public processUserInfo()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/baidu/launcher/business/UserInfoManager;->isBindUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/baidu/launcher/business/UserInfoManager;->updateUserInfo()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/business/UserInfoManager;->bindUserInfo()V

    goto :goto_0
.end method

.method public processUserInfoWhenInitTask()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/baidu/launcher/business/UserInfoManager;->isBindUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/baidu/launcher/business/UserInfoManager;->updateUserInfoWhenInitTask()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/business/UserInfoManager;->bindUserInfo()V

    goto :goto_0
.end method

.method public updateUserInfo()V
    .locals 8

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/baidu/launcher/business/UserInfoManager;->getUpdateUserInfoTime()J

    move-result-wide v3

    .line 63
    .local v3, updatetime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, now:J
    const-wide/32 v5, 0x493e0

    add-long/2addr v5, v3

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 65
    new-instance v2, Lcom/baidu/launcher/business/item/PhoneInfo;

    iget-object v5, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/baidu/launcher/business/item/PhoneInfo;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, phoneinfo:Lcom/baidu/launcher/business/item/PhoneInfo;
    sget-object v5, Lcom/baidu/launcher/business/UserInfoManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUserInfo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/baidu/launcher/business/item/PhoneInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/launcher/business/UserInfoManager;->mCallback:Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;

    invoke-static {v5, v2, v6}, Lcom/baidu/launcher/protocol/Agent;->updateUserInfo(Landroid/content/Context;Lcom/baidu/launcher/business/item/PhoneInfo;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V

    .line 69
    .end local v2           #phoneinfo:Lcom/baidu/launcher/business/item/PhoneInfo;
    :cond_0
    return-void
.end method

.method public updateUserInfoWhenInitTask()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/baidu/launcher/business/item/PhoneInfo;

    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/item/PhoneInfo;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, phoneinfo:Lcom/baidu/launcher/business/item/PhoneInfo;
    sget-object v1, Lcom/baidu/launcher/business/UserInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUserInfoWhenInitTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/PhoneInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/business/UserInfoManager;->mCallback:Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;

    invoke-static {v1, v0, v2}, Lcom/baidu/launcher/protocol/Agent;->updateUserInfo(Landroid/content/Context;Lcom/baidu/launcher/business/item/PhoneInfo;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V

    .line 91
    return-void
.end method
