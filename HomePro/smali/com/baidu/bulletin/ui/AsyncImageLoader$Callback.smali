.class public interface abstract Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/AsyncImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getReferPath()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract onLoaded(Landroid/graphics/drawable/Drawable;)V
.end method
