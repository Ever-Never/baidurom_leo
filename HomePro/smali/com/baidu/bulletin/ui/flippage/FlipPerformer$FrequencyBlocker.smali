.class Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;
.super Ljava/lang/Object;
.source "FlipPerformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/FlipPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyBlocker"
.end annotation


# static fields
.field private static final MAX_FREQUENCY:I = 0x4

.field private static final MIN_INTERVAL:I = 0xfa

.field private static final ONE_MINUTE:I = 0x3e8


# instance fields
.field private mTimeStamp:J

.field final synthetic this$0:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/flippage/FlipPerformer;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/flippage/FlipPerformer;Lcom/baidu/bulletin/ui/flippage/FlipPerformer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;-><init>(Lcom/baidu/bulletin/ui/flippage/FlipPerformer;)V

    return-void
.end method


# virtual methods
.method public canDo()Z
    .locals 6

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31
    .local v0, now:J
    iget-wide v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;->mTimeStamp:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public doNext()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$FrequencyBlocker;->mTimeStamp:J

    .line 36
    return-void
.end method
