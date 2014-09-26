.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$1;
.super Ljava/util/TimerTask;
.source "QuickSwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$1;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$1;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$1;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchListener:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->post(Ljava/lang/Runnable;)Z

    .line 385
    return-void
.end method
