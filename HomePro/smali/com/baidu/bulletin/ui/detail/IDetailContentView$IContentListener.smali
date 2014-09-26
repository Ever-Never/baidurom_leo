.class public interface abstract Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;
.super Ljava/lang/Object;
.source "IDetailContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/IDetailContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IContentListener"
.end annotation


# virtual methods
.method public abstract onChannelItemChanged(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method

.method public abstract onContentUpdateFinish(Lcom/baidu/bulletin/ui/detail/IDetailContentView;Z)V
.end method

.method public abstract onContentUpdateStart(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method
