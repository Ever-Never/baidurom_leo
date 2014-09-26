.class final Lcom/baidu/launcher/protocol/Agent$6;
.super Lcom/baidu/launcher/protocol/BusinessHttpTask;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/protocol/Agent;->postCheckUpdate(Lcom/baidu/launcher/update/CheckUpdatePostInfo;Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 223
    iput-object p4, p0, Lcom/baidu/launcher/protocol/Agent$6;->val$aCallback:Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/protocol/BusinessHttpTask;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onCancelled()V

    .line 249
    return-void
.end method

.method protected onFailed()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/baidu/launcher/protocol/Agent$6;->val$aCallback:Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;

    invoke-interface {v0}, Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;->onCheckFailured()V

    .line 243
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onFailed()V

    .line 244
    return-void
.end method

.method protected onFinished()V
    .locals 5

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/protocol/Agent$6;->getHttpResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, respones:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/protocol/Agent;->getResponceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, data:Ljava/lang/String;
    const-class v4, Lcom/baidu/launcher/update/UpdateResponceInfo;

    invoke-static {v0, v4}, Lcom/baidu/launcher/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/update/UpdateResponceInfo;

    .line 233
    .local v2, object:Lcom/baidu/launcher/update/UpdateResponceInfo;
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$6;->val$aCallback:Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;

    invoke-interface {v4, v2}, Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;->onCheckFinish(Lcom/baidu/launcher/update/UpdateResponceInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #object:Lcom/baidu/launcher/update/UpdateResponceInfo;
    .end local v3           #respones:Ljava/lang/String;
    :goto_0
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onFinished()V

    .line 238
    return-void

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
