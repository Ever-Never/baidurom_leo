.class Lcom/baidu/launcher/ui/editview/EditView$7;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView;->completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditView;

.field final synthetic val$desLoc:[I

.field final synthetic val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;Lcom/baidu/launcher/data/item/IFolderInfo;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    iput-object p3, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->val$desLoc:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 590
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 592
    .local v0, obj:Lcom/baidu/launcher/data/item/IFolderInfo;
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v1}, Lcom/baidu/launcher/ui/editview/EditView;->access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->val$desLoc:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->val$desLoc:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->val$desLoc:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->processAddItem(Ljava/lang/Object;III)V

    .line 594
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView$7;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #setter for: Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z
    invoke-static {v1, v6}, Lcom/baidu/launcher/ui/editview/EditView;->access$802(Lcom/baidu/launcher/ui/editview/EditView;Z)Z

    .line 595
    return-void
.end method
