.class public Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;
.super Ljava/lang/Object;
.source "RawHistoryChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawHistoryChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

.field public channelId:Ljava/lang/String;

.field public count:I

.field public cuid:Ljava/lang/String;

.field public direct:I

.field public topic:I

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
