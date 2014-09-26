.class public Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;
.super Ljava/lang/Object;
.source "RawOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawOpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

.field public items:[Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;

.field public opTopic:Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
