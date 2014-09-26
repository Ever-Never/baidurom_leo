.class public Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;
.super Ljava/lang/Object;
.source "RawImageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawImageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawImageChannelItem"
.end annotation


# instance fields
.field public direct:I

.field public pictures:[Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;

.field public topic:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
