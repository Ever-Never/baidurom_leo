.class Lcom/baidu/launcher/ui/dragdrop/DragController$2;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/dragdrop/DragController;->showFlingToDeleteAnimation(FFLandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

.field final synthetic val$pointF:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragController;Landroid/graphics/PointF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$2;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iput-object p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$2;->val$pointF:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 812
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 806
    const-string v0, "Launcher.DragController"

    const-string v1, "android 4.0:onAnimationEnd"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$2;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$2;->val$pointF:Landroid/graphics/PointF;

    #calls: Lcom/baidu/launcher/ui/dragdrop/DragController;->FlingToDelete(Landroid/graphics/PointF;)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragController;Landroid/graphics/PointF;)V

    .line 808
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 816
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 802
    return-void
.end method
