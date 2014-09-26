.class public Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;
.super Ljava/lang/Object;
.source "RawMusicChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawMusicChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

.field public content:[Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;

.field public topic:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
