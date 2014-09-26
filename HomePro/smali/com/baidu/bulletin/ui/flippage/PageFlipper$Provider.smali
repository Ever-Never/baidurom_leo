.class public interface abstract Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;
.super Ljava/lang/Object;
.source "PageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/PageFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract canFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z
.end method

.method public abstract getHost()Landroid/view/ViewGroup;
.end method

.method public abstract getView(Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;)Landroid/view/View;
.end method

.method public abstract onFlipped(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V
.end method

.method public abstract setVisibility(I)V
.end method
