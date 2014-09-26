.class public Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;
.super Ljava/lang/Object;
.source "RawNewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawNewsChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsChannelItem"
.end annotation


# instance fields
.field public abs:Ljava/lang/String;

.field public id:J

.field public image:Ljava/lang/String;

.field public imageHeight:I

.field public imageWidth:I

.field public time:J

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
