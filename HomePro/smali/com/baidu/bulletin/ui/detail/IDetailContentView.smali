.class public interface abstract Lcom/baidu/bulletin/ui/detail/IDetailContentView;
.super Ljava/lang/Object;
.source "IDetailContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;,
        Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getContentListener()Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract init()V
.end method

.method public abstract invalidate()V
.end method

.method public abstract setContentListener(Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;)V
.end method

.method public abstract updateDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method

.method public abstract updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
.end method
