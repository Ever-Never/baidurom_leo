.class public Lcom/baidu/bulletin/http/HttpParam$Range;
.super Ljava/lang/Object;
.source "HttpParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/http/HttpParam;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    .line 49
    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    .line 50
    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->total:J

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 95
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, section:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 97
    aget-object v1, v0, v3

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 99
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->total:J

    .line 100
    aget-object v1, v0, v4

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v1, v0

    if-le v1, v3, :cond_0

    .line 102
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 103
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    .line 108
    :goto_0
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 109
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 105
    :cond_1
    iput-wide v5, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    goto :goto_0

    .line 111
    :cond_2
    iput-wide v5, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    goto :goto_1
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    iget-wide v2, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

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
    .line 71
    iget-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->total:J

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

    .line 66
    iget-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    .line 67
    iget-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    .line 68
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->total:J

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    .line 58
    return-void
.end method

.method public set(JJ)V
    .locals 4
    .parameter "begin"
    .parameter "length"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    .line 62
    add-long v0, p1, p3

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/baidu/bulletin/http/HttpParam$Range;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    new-instance v0, Ljava/lang/String;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, range:Ljava/lang/String;
    iget-wide v1, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->begin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
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

    .line 84
    iget-wide v1, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/http/HttpParam$Range;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v0           #range:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
