.class Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;
.super Ljava/lang/Object;
.source "ThumbnailGroup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;->this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1510
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;->this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    iget-object v3, v3, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;->this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    iget-object v4, v4, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->v:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1511
    .local v0, index:I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 1512
    .local v1, loc:[I
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;->this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    iget-object v3, v3, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->v:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1513
    new-instance v2, Landroid/graphics/RectF;

    aget v3, v1, v5

    int-to-float v3, v3

    aget v4, v1, v7

    int-to-float v4, v4

    aget v5, v1, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;->this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    iget-object v6, v6, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aget v6, v1, v7

    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;->this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    iget-object v7, v7, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1515
    .local v2, rect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;->this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    iget-object v3, v3, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    #getter for: Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->access$000(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    const v4, 0x7f08013a

    new-instance v5, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v5}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 1516
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;->this$1:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    iget-object v3, v3, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    #getter for: Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->access$000(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->showAnimation(Landroid/graphics/RectF;I)V

    .line 1517
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1523
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1529
    return-void
.end method
