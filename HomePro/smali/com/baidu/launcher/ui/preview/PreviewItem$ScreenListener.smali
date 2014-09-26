.class public interface abstract Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
.super Ljava/lang/Object;
.source "PreviewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/preview/PreviewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenListener"
.end annotation


# virtual methods
.method public abstract onDefaultScreenChanged(I)V
.end method

.method public abstract onScreenClicked(Landroid/view/View;)V
.end method

.method public abstract onScreenLongClicked(Landroid/view/View;)Z
.end method
