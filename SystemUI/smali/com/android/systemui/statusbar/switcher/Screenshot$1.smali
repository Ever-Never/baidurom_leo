.class Lcom/android/systemui/statusbar/switcher/Screenshot$1;
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
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$1;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$1;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$000(Lcom/android/systemui/statusbar/switcher/Screenshot;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$1;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/Screenshot$1;->this$0:Lcom/android/systemui/statusbar/switcher/Screenshot;

    #getter for: Lcom/android/systemui/statusbar/switcher/Screenshot;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$100(Lcom/android/systemui/statusbar/switcher/Screenshot;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/switcher/Screenshot;->takeScreenShot(Landroid/content/Context;)V
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/switcher/Screenshot;->access$200(Lcom/android/systemui/statusbar/switcher/Screenshot;Landroid/content/Context;)V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
