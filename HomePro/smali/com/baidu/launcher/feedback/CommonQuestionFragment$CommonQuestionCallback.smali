.class public interface abstract Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;
.super Ljava/lang/Object;
.source "CommonQuestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/feedback/CommonQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommonQuestionCallback"
.end annotation


# virtual methods
.method public abstract onNeedUpdate(Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;)V
.end method

.method public abstract onNoUpdate()V
.end method

.method public abstract onSyncDone([Lcom/baidu/launcher/feedback/CommonQuestionItem;)V
.end method

.method public abstract onUpdateFailed()V
.end method
