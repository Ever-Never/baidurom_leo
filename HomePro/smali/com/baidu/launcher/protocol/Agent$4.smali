.class final Lcom/baidu/launcher/protocol/Agent$4;
.super Lcom/baidu/launcher/protocol/BusinessHttpTask;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/protocol/Agent;->postSyncData(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendPostInfo;Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

.field final synthetic val$aContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Landroid/content/Context;Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p4, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aCallback:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/protocol/BusinessHttpTask;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onCancelled()V

    .line 177
    iget-object v0, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aCallback:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    invoke-interface {v0}, Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;->onSyncFailed()V

    .line 178
    return-void
.end method

.method protected onFailed()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onFailed()V

    .line 171
    iget-object v0, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aCallback:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    invoke-interface {v0}, Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;->onSyncFailed()V

    .line 172
    return-void
.end method

.method protected onFinished()V
    .locals 8

    .prologue
    .line 142
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onFinished()V

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/protocol/Agent$4;->getHttpResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, respones:Ljava/lang/String;
    sget-object v4, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "respones SyncData: json "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/baidu/launcher/protocol/Agent;->getResponceBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, body:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 149
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aCallback:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    invoke-interface {v4}, Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;->onSyncFailed()V

    .line 166
    .end local v0           #body:Ljava/lang/String;
    .end local v3           #respones:Ljava/lang/String;
    :goto_0
    return-void

    .line 151
    .restart local v0       #body:Ljava/lang/String;
    .restart local v3       #respones:Ljava/lang/String;
    :cond_0
    const-class v4, Lcom/baidu/launcher/business/item/RecommendResponceInfo;

    invoke-static {v0, v4}, Lcom/baidu/launcher/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/business/item/RecommendResponceInfo;

    .line 153
    .local v2, object:Lcom/baidu/launcher/business/item/RecommendResponceInfo;
    if-nez v2, :cond_1

    .line 154
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aCallback:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    invoke-interface {v4}, Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;->onSyncNoUpdate()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v0           #body:Ljava/lang/String;
    .end local v2           #object:Lcom/baidu/launcher/business/item/RecommendResponceInfo;
    .end local v3           #respones:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #body:Ljava/lang/String;
    .restart local v2       #object:Lcom/baidu/launcher/business/item/RecommendResponceInfo;
    .restart local v3       #respones:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getStrategyId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aCallback:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    invoke-interface {v4, v2}, Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;->onSyncSucceed(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$4;->val$aCallback:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    invoke-interface {v4}, Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;->onSyncNoUpdate()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
