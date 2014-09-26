.class Lcom/android/systemui/statusbar/switcher/Screenshot$3;
.super Ljava/lang/Object;
.source "Screenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/Screenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/Screenshot;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$3;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$3;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$000(Lcom/android/systemui/statusbar/switcher/Screenshot;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$3;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$300(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$3;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$100(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$3;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$300(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$3;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$302(Lcom/android/systemui/statusbar/switcher/Screenshot;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 122
    :cond_0
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
