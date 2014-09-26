.class public abstract Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;
.super Ljava/lang/Object;
.source "SingleTaskDownloadObserver.java"

# interfaces
.implements Lcom/baidu/bulletin/network/logic/DownloadObserver;


# instance fields
.field private mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter "observer"
    .parameter "item"

    .prologue
    .line 22
    instance-of v0, p0, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->onFinished(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 15
    return-void
.end method

.method protected abstract onFinished(Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method public setResult(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 19
    return-void
.end method
