.class public Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;
.super Ljava/lang/Object;
.source "RawNewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawNewsChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

.field public newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
