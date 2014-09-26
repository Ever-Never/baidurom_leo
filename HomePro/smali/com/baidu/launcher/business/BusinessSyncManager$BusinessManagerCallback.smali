.class public interface abstract Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;
.super Ljava/lang/Object;
.source "BusinessSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/business/BusinessSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BusinessManagerCallback"
.end annotation


# virtual methods
.method public abstract onSyncFailed()V
.end method

.method public abstract onSyncNoUpdate()V
.end method

.method public abstract onSyncSucceed(Ljava/lang/Object;)V
.end method
