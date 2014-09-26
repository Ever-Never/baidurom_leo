.class public interface abstract Lcom/baidu/bulletin/network/FileDownloader$Observer;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
.end method

.method public abstract onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
.end method
