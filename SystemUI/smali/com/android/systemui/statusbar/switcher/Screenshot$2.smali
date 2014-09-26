.class Lcom/android/systemui/statusbar/switcher/Screenshot$2;
.super Ljava/lang/Object;
.source "Screenshot.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/Screenshot;->takeScreenShot(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/Screenshot;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    iput-object p2, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$000(Lcom/android/systemui/statusbar/switcher/Screenshot;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 79
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$300(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/ServiceConnection;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 80
    monitor-exit v5

    .line 105
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 83
    .local v1, messenger:Landroid/os/Messenger;
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 84
    .local v2, msg:Landroid/os/Message;
    move-object v3, p0

    .line 85
    .local v3, myConn:Landroid/content/ServiceConnection;
    new-instance v0, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$2;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$400(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/systemui/statusbar/switcher/Screenshot$2$1;-><init>(Lcom/android/systemui/statusbar/switcher/Screenshot$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 97
    .local v0, h:Landroid/os/Handler;
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 98
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 99
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #messenger:Landroid/os/Messenger;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #myConn:Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 102
    .restart local v0       #h:Landroid/os/Handler;
    .restart local v1       #messenger:Landroid/os/Messenger;
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #myConn:Landroid/content/ServiceConnection;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 107
    return-void
.end method
