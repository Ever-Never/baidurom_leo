.class Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;
.super Landroid/os/Handler;
.source "Screenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/Screenshot$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/Screenshot$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    iput-object p3, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$000(Lcom/android/systemui/statusbar/switcher/Screenshot;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$300(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    iget-object v2, v2, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$300(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$302(Lcom/android/systemui/statusbar/switcher/Screenshot;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$400(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;->this$1:Lcom/android/systemui/statusbar/switcher/Screenshot$2;

    iget-object v2, v2, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    iget-object v2, v2, Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    :cond_0
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
