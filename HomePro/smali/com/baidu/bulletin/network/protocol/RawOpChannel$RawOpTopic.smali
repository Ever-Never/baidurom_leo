.class public Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;
.super Ljava/lang/Object;
.source "RawOpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawOpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawOpTopic"
.end annotation


# instance fields
.field public channelName:Ljava/lang/String;

.field public topic:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "channel"
    .parameter "topicId"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;->channelName:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;->topic:I

    .line 14
    return-void
.end method
