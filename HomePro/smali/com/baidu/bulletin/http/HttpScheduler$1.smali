.class Lcom/baidu/bulletin/http/HttpScheduler$1;
.super Ljava/lang/Object;
.source "HttpScheduler.java"

# interfaces
.implements Lcom/baidu/bulletin/http/HttpClientThread$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/http/HttpScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/http/HttpScheduler;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/http/HttpScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/bulletin/http/HttpScheduler$1;->this$0:Lcom/baidu/bulletin/http/HttpScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpScheduler$1;->this$0:Lcom/baidu/bulletin/http/HttpScheduler;

    #calls: Lcom/baidu/bulletin/http/HttpScheduler;->trimFinishedThreadAndSendWaitingTask()V
    invoke-static {v0}, Lcom/baidu/bulletin/http/HttpScheduler;->access$000(Lcom/baidu/bulletin/http/HttpScheduler;)V

    .line 27
    return-void
.end method
