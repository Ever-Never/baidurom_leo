.class Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->onItemClick(Landroid/view/View;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;

.field final synthetic val$desLoc:[I

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;Landroid/view/View;Ljava/lang/Object;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->this$1:Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;

    iput-object p2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->val$item:Ljava/lang/Object;

    iput-object p4, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->val$desLoc:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 443
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->this$1:Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;

    iget-object v1, v1, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v2, v4}, Lcom/baidu/launcher/ui/editview/EditView;->showDraggedView(Landroid/view/View;Z)V

    .line 444
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->val$item:Ljava/lang/Object;

    .line 445
    .local v0, obj:Ljava/lang/Object;
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->this$1:Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;

    iget-object v1, v1, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v1}, Lcom/baidu/launcher/ui/editview/EditView;->access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->val$desLoc:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->val$desLoc:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->val$desLoc:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->processAddItem(Ljava/lang/Object;III)V

    .line 449
    instance-of v1, v0, Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener$1;->this$1:Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;

    iget-object v1, v1, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #setter for: Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z
    invoke-static {v1, v6}, Lcom/baidu/launcher/ui/editview/EditView;->access$802(Lcom/baidu/launcher/ui/editview/EditView;Z)Z

    .line 452
    :cond_0
    return-void
.end method
