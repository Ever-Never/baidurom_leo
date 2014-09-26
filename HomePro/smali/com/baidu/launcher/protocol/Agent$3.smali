.class final Lcom/baidu/launcher/protocol/Agent$3;
.super Lcom/baidu/launcher/protocol/BusinessHttpTask;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/protocol/Agent;->getCommonQuestionData(Ljava/lang/String;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 104
    iput-object p3, p0, Lcom/baidu/launcher/protocol/Agent$3;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/protocol/BusinessHttpTask;-><init>(Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/launcher/protocol/Agent$3;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onUpdateFailed()V

    .line 129
    return-void
.end method

.method protected onFailed()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/protocol/Agent$3;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onUpdateFailed()V

    .line 124
    return-void
.end method

.method protected onFinished()V
    .locals 4

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, respones:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/protocol/Agent$3;->getHttpResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 111
    const-class v3, [Lcom/baidu/launcher/feedback/CommonQuestionItem;

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/baidu/launcher/feedback/CommonQuestionItem;

    .line 113
    .local v1, item:[Lcom/baidu/launcher/feedback/CommonQuestionItem;
    iget-object v3, p0, Lcom/baidu/launcher/protocol/Agent$3;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v3, v1}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onSyncDone([Lcom/baidu/launcher/feedback/CommonQuestionItem;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1           #item:[Lcom/baidu/launcher/feedback/CommonQuestionItem;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    iget-object v3, p0, Lcom/baidu/launcher/protocol/Agent$3;->val$aCallback:Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;

    invoke-interface {v3}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;->onUpdateFailed()V

    goto :goto_0
.end method
