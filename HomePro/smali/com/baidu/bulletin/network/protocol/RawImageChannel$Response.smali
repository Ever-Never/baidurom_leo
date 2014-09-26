.class public Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;
.super Ljava/lang/Object;
.source "RawImageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawImageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

.field public imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
