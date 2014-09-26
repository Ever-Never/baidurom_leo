.class public Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;
.super Ljava/lang/Object;
.source "RawNewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawNewsChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

.field public count:I

.field public cuid:Ljava/lang/String;

.field public direct:I

.field public topic:I

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
