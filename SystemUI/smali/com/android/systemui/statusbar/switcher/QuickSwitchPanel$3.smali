.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickSwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->resetAnimateViews()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->hideTip(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->showTip(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mFakePost:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->hideTip(I)V

    .line 1130
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->resetAnimateViews()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->hideTip(I)V

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->showTip(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mFakePost:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$3000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->hideTip(I)V

    .line 1121
    :cond_0
    return-void
.end method
