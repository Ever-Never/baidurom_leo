.class public Lcom/baidu/bulletin/http/HttpTask$Progress;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation


# instance fields
.field public mFinished:J

.field public mState:Lcom/baidu/bulletin/http/HttpTask$State;

.field public mTotal:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->Idel:Lcom/baidu/bulletin/http/HttpTask$State;

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mTotal:J

    return-void
.end method


# virtual methods
.method public percent()I
    .locals 4

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mTotal:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 35
    iget-wide v0, p0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mFinished:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mTotal:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    .line 31
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->Idel:Lcom/baidu/bulletin/http/HttpTask$State;

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mTotal:J

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/bulletin/http/HttpTask$Progress;->mFinished:J

    .line 26
    return-void
.end method
