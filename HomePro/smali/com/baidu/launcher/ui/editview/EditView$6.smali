.class Lcom/baidu/launcher/ui/editview/EditView$6;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView;->completeAddShortcut(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 535
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1400(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I
    invoke-static {v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$1300(Lcom/baidu/launcher/ui/editview/EditView;)[I

    move-result-object v2

    aget v2, v2, v5

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I
    invoke-static {v3}, Lcom/baidu/launcher/ui/editview/EditView;->access$1300(Lcom/baidu/launcher/ui/editview/EditView;)[I

    move-result-object v3

    aget v3, v3, v11

    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I
    invoke-static {v4}, Lcom/baidu/launcher/ui/editview/EditView;->access$1300(Lcom/baidu/launcher/ui/editview/EditView;)[I

    move-result-object v4

    aget v4, v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/data/HomeDataManager;->addShortcut(Landroid/content/Intent;IIIZ)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-result-object v13

    .line 539
    .local v13, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/baidu/launcher/ui/logic/ViewManager;->createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 540
    .local v7, view:Landroid/view/View;
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v6

    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1300(Lcom/baidu/launcher/ui/editview/EditView;)[I

    move-result-object v0

    aget v8, v0, v5

    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1300(Lcom/baidu/launcher/ui/editview/EditView;)[I

    move-result-object v0

    aget v9, v0, v11

    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1300(Lcom/baidu/launcher/ui/editview/EditView;)[I

    move-result-object v0

    aget v10, v0, v10

    move v12, v11

    invoke-virtual/range {v6 .. v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 543
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->addShortcutResult(I)V

    .line 544
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$6;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #setter for: Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z
    invoke-static {v0, v5}, Lcom/baidu/launcher/ui/editview/EditView;->access$802(Lcom/baidu/launcher/ui/editview/EditView;Z)Z

    .line 545
    return-void
.end method
