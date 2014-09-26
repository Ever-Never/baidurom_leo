.class public Lcom/baidu/launcher/network/http/HttpParam$Range;
.super Ljava/lang/Object;
.source "HttpParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/HttpParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public begin:J

.field public end:J

.field public total:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    .line 54
    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    .line 55
    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->total:J

    .line 59
    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 4

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    iget-wide v2, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 4

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->total:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(I)V
    .locals 6
    .parameter "length"

    .prologue
    const-wide/16 v4, 0x1

    .line 76
    iget-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    .line 77
    iget-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    .line 78
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->total:J

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    .line 63
    return-void
.end method

.method public set(JJ)V
    .locals 4
    .parameter "begin"
    .parameter "length"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    .line 67
    add-long v0, p1, p3

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    .line 68
    return-void
.end method

.method public setStart(J)V
    .locals 2
    .parameter "begin"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    .line 73
    return-void
.end method

.method toText()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/baidu/launcher/network/http/HttpParam$Range;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    new-instance v0, Ljava/lang/String;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, range:Ljava/lang/String;
    iget-wide v1, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-wide v1, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/launcher/network/http/HttpParam$Range;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .end local v0           #range:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
