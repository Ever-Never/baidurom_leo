.class final Lcom/baidu/launcher/protocol/Agent$7;
.super Lcom/baidu/launcher/protocol/BusinessHttpTask;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/protocol/Agent;->updateUserInfo(Landroid/content/Context;Lcom/baidu/launcher/business/item/PhoneInfo;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;

.field final synthetic val$aContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Landroid/content/Context;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p4, p0, Lcom/baidu/launcher/protocol/Agent$7;->val$aContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/baidu/launcher/protocol/Agent$7;->val$aCallback:Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/protocol/BusinessHttpTask;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 0

    .prologue
    .line 278
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onCancelled()V

    .line 279
    return-void
.end method

.method protected onFailed()V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onFailed()V

    .line 274
    return-void
.end method

.method protected onFinished()V
    .locals 5

    .prologue
    .line 262
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onFinished()V

    .line 263
    invoke-virtual {p0}, Lcom/baidu/launcher/protocol/Agent$7;->getHttpResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, respones:Ljava/lang/String;
    sget-object v2, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUserInfo : json "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/baidu/launcher/protocol/Agent$7;->val$aContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/baidu/launcher/protocol/Agent;->getResponceBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, body:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 267
    iget-object v2, p0, Lcom/baidu/launcher/protocol/Agent$7;->val$aCallback:Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;

    invoke-interface {v2}, Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;->onUpdateInfoSucceed()V

    .line 269
    :cond_0
    return-void
.end method
