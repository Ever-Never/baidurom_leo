.class Lcom/android/systemui/statusbar/switcher/RotationTracker$1;
.super Ljava/lang/Object;
.source "RotationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/RotationTracker;->showLockedNotification(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/RotationTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/RotationTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/RotationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/RotationTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/RotationTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/RotationTracker;->mNotificationBlamePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/RotationTracker;->access$000(Lcom/android/systemui/statusbar/switcher/RotationTracker;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 186
    return-void
.end method
