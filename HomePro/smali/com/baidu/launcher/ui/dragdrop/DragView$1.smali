.class Lcom/baidu/launcher/ui/dragdrop/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/dragdrop/DragView;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragView;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$1;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$1;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$1;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$1;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragView;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragView;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragView;->access$000(Lcom/baidu/launcher/ui/dragdrop/DragView;)Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$1;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 254
    :cond_1
    return-void
.end method
