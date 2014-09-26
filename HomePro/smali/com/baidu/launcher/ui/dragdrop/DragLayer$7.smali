.class Lcom/baidu/launcher/ui/dragdrop/DragLayer$7;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/dragdrop/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$7;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$7;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$600(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$7;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$602(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;)Landroid/view/View;

    .line 647
    return-void
.end method
