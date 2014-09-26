.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$1;
.super Ljava/lang/Object;
.source "QuickSwitchPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->cancelSwitchEdit()V
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
    .line 994
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$1;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 997
    const/4 v0, 0x0

    return v0
.end method
