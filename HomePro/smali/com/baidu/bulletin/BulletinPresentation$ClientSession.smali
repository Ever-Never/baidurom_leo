.class public interface abstract Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
.super Ljava/lang/Object;
.source "BulletinPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientSession"
.end annotation


# virtual methods
.method public abstract onAlreadySyncing()V
.end method

.method public abstract onNewMessageNofitied(I)V
.end method

.method public abstract onPageImageLoaded(I)V
.end method

.method public abstract onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method public abstract onServiceStart()V
.end method

.method public abstract onSyncFinish(ZI)V
.end method

.method public abstract onSyncStart()V
.end method
