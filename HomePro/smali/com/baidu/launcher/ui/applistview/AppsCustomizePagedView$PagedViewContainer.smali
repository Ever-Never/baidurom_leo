.class public interface abstract Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PagedViewContainer"
.end annotation


# virtual methods
.method public abstract getPageType()I
.end method

.method public abstract onDropCompleted(Landroid/view/View;)V
.end method

.method public abstract onItemClick(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract onItemLongClick(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public abstract onPageTypeChanged(I)Z
.end method

.method public abstract updateDisableAppsButtons(ZI)V
.end method

.method public abstract updateHideAppsButtons(ZI)V
.end method
