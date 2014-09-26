.class Lcom/android/systemui/statusbar/switcher/SwitchTracker$2;
.super Ljava/lang/Object;
.source "SwitchTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/SwitchTracker;->startTaskCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mClickTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->access$000(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mClickTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->access$000(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitchTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/SwitchTracker;->mClickTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->access$000(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 156
    :cond_0
    return-void
.end method
