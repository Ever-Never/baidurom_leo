.class public abstract Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
.super Ljava/lang/Object;
.source "ProtocolPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/ProtocolPackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveAppListDetail(Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 36
    return-void
.end method

.method public receiveAppsChannel(Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 31
    return-void
.end method

.method public receiveBulletinOpChannel(Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 35
    return-void
.end method

.method public receiveChannelContent(Lcom/baidu/bulletin/network/protocol/RawChannel$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 26
    return-void
.end method

.method public receiveHistoryChannel(Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 37
    return-void
.end method

.method public receiveImageChannel(Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 38
    return-void
.end method

.method public receiveMusicChannel(Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 32
    return-void
.end method

.method public receiveNativePage(Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 27
    return-void
.end method

.method public receiveNewsChannel(Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 30
    return-void
.end method

.method public receiveNewsDetail(Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 33
    return-void
.end method

.method public receiveOpChannel(Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 34
    return-void
.end method

.method public receiveTokenSonginfo(Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 29
    return-void
.end method

.method public receiveTokenText(Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 28
    return-void
.end method

.method public receiveUpdateInfo(Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 25
    return-void
.end method
