.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;
.super Ljava/lang/Object;
.source "QuickSwitchPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;->this$1:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->performLongClick()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->access$700(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V

    .line 208
    return-void
.end method
