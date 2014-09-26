.class public Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;
.super Ljava/lang/Object;
.source "RawNewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawNewsChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawNewsChannelItem"
.end annotation


# instance fields
.field public direct:I

.field public news:[Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;

.field public topic:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
