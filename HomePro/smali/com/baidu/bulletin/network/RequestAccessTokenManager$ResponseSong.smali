.class public Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;
.super Ljava/lang/Object;
.source "RequestAccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/RequestAccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseSong"
.end annotation


# instance fields
.field public channelItem:Lcom/baidu/bulletin/entity/ChannelItem;

.field public channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field public songItem:Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
