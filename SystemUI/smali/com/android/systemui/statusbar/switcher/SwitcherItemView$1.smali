.class Lcom/android/systemui/statusbar/switcher/SwitcherItemView$1;
.super Ljava/lang/Object;
.source "SwitcherItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView$1;->this$0:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView$1;->this$0:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    #getter for: Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->mTracker:Lcom/android/systemui/statusbar/switcher/SwitchTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->access$000(Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView$1;->this$0:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onClick(Landroid/content/Context;)V

    .line 135
    return-void
.end method
