.class Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;
.super Ljava/lang/Object;
.source "PagedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/PagedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedCounter"
.end annotation


# instance fields
.field private mPos:F

.field private mSpeed:F

.field private mTime:J

.field final synthetic this$0:Lcom/baidu/bulletin/ui/PagedListView;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/PagedListView;F)V
    .locals 2
    .parameter
    .parameter "pos"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->this$0:Lcom/baidu/bulletin/ui/PagedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->mPos:F

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->mTime:J

    .line 20
    return-void
.end method


# virtual methods
.method public getSpeed()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->mSpeed:F

    return v0
.end method

.method public onMovedTo(F)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->mTime:J

    sub-long/2addr v1, v3

    long-to-float v0, v1

    .line 24
    .local v0, elapsedTime:F
    iget v1, p0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->mPos:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->mSpeed:F

    .line 25
    iput p1, p0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->mPos:F

    .line 26
    return-void
.end method
