.class public Lcom/baidu/launcher/network/http/HttpTask$Progress;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Progress"
.end annotation


# instance fields
.field public mFinished:I

.field public mState:Lcom/baidu/launcher/network/http/HttpTask$State;

.field public mTotal:I

.field final synthetic this$0:Lcom/baidu/launcher/network/http/HttpTask;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/network/http/HttpTask;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->this$0:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Idle:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    .line 40
    return-void
.end method


# virtual methods
.method public percent()I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    packed-switch v0, :pswitch_data_0

    .line 55
    iget v0, p0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    div-int/2addr v0, v1

    :goto_0
    return v0

    .line 51
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    .line 46
    return-void
.end method
