.class public abstract Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
.super Ljava/lang/Object;
.source "ProgressListener.java"


# instance fields
.field private mInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->mInterval:J

    .line 3
    return-void
.end method


# virtual methods
.method public final getInterval()J
    .locals 2

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->mInterval:J

    return-wide v0
.end method

.method public abstract onProgress(JJ)V
.end method

.method public final setInterval(J)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->mInterval:J

    .line 14
    return-void
.end method
