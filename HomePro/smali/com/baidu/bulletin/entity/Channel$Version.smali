.class public Lcom/baidu/bulletin/entity/Channel$Version;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/entity/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field private current:J

.field private low:J

.field private up:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;J)V
    .locals 4
    .parameter "version"
    .parameter "current"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-wide v0, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    iput-wide v0, p0, Lcom/baidu/bulletin/entity/Channel$Version;->up:J

    .line 55
    iget-wide v0, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->low:J

    iput-wide v0, p0, Lcom/baidu/bulletin/entity/Channel$Version;->low:J

    .line 56
    iget-wide v0, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->low:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bulletin/entity/Channel$Version;->current:J

    .line 57
    return-void
.end method


# virtual methods
.method public current()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/baidu/bulletin/entity/Channel$Version;->current:J

    return-wide v0
.end method

.method public low()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/baidu/bulletin/entity/Channel$Version;->low:J

    return-wide v0
.end method

.method public up()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/baidu/bulletin/entity/Channel$Version;->up:J

    return-wide v0
.end method

.method public update(J)V
    .locals 0
    .parameter "current"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/baidu/bulletin/entity/Channel$Version;->current:J

    .line 73
    return-void
.end method
