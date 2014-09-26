.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;
.super Ljava/lang/Thread;
.source "QuickSwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResetThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 190
    .local v0, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 194
    .end local v0           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$102(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;)Landroid/view/View;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$302(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;)Landroid/view/View;

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->access$402(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;Landroid/view/View;)Landroid/view/View;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z
    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z

    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragMode:Z
    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$602(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z

    .line 199
    return-void

    .line 186
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 183
    :catch_0
    move-exception v1

    goto :goto_0
.end method
