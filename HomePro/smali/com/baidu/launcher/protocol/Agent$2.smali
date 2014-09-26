.class final Lcom/baidu/launcher/protocol/Agent$2;
.super Lcom/baidu/launcher/protocol/BusinessHttpTask;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/protocol/Agent;->postCommonQuestionUpdate(Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 58
    iput-object p4, p0, Lcom/baidu/launcher/protocol/Agent$2;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/protocol/BusinessHttpTask;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/protocol/Agent$2;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onUpdateFailed()V

    .line 96
    return-void
.end method

.method protected onFailed()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/launcher/protocol/Agent$2;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onUpdateFailed()V

    .line 90
    sget-object v0, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    const-string v1, "postCommonQuestionUpdate onFailed"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected onFinished()V
    .locals 7

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/baidu/launcher/protocol/Agent$2;->getHttpResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, respones:Ljava/lang/String;
    sget-object v4, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postCommonQuestionUpdate respones"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {v2}, Lcom/baidu/launcher/protocol/Agent;->getResponceBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, body:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$2;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v4}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onNoUpdate()V

    .line 85
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    const-class v4, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    invoke-static {v0, v4}, Lcom/baidu/launcher/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    .line 72
    .local v3, updateitem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 73
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$2;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v4, v3}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onNeedUpdate(Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v3           #updateitem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Lorg/json/JSONException;
    sget-object v4, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postCommonQuestionUpdate onFailed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$2;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v4}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onUpdateFailed()V

    goto :goto_0

    .line 76
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v3       #updateitem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/baidu/launcher/protocol/Agent$2;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v4}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onNoUpdate()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
