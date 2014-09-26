.class public Lcom/baidu/bulletin/utils/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(II)I
    .locals 5
    .parameter "min"
    .parameter "max"

    .prologue
    .line 12
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 13
    .local v1, random:Ljava/util/Random;
    sub-int v3, p1, p0

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 14
    .local v0, r:I
    add-int v2, p0, v0

    .line 16
    .local v2, result:I
    return v2
.end method
