.class public Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;
.super Ljava/lang/Object;
.source "RequestAccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/RequestAccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestSong"
.end annotation


# instance fields
.field public channelItem:Lcom/baidu/bulletin/entity/ChannelItem;

.field public channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field public songId:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
