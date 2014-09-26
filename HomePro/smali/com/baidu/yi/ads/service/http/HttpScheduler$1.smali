.class Lcom/baidu/yi/ads/service/http/HttpScheduler$1;
.super Ljava/lang/Object;
.source "HttpScheduler.java"

# interfaces
.implements Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/http/HttpScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/service/http/HttpScheduler;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/http/HttpScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler$1;->this$0:Lcom/baidu/yi/ads/service/http/HttpScheduler;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpScheduler$1;->this$0:Lcom/baidu/yi/ads/service/http/HttpScheduler;

    #calls: Lcom/baidu/yi/ads/service/http/HttpScheduler;->trimFinishedThreadAndSendWaitingTask()V
    invoke-static {v0}, Lcom/baidu/yi/ads/service/http/HttpScheduler;->access$0(Lcom/baidu/yi/ads/service/http/HttpScheduler;)V

    .line 25
    return-void
.end method
