.class public Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;
.super Ljava/lang/Object;
.source "RawImageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawImageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageChannelItem"
.end annotation


# instance fields
.field public id:J

.field public image:Ljava/lang/String;

.field public thumb:Ljava/lang/String;

.field public thumbHeight:I

.field public thumbWidth:I

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
