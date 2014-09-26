.class public interface abstract Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;
.super Ljava/lang/Object;
.source "IDetailContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/IDetailContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IContentRefeshListener"
.end annotation


# virtual methods
.method public abstract onContentRefreshFinish(Z)V
.end method

.method public abstract onContentRefreshStart(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method

.method public abstract onDetailItemChanged(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method
