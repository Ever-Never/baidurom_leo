.class Lcom/baidu/launcher/ui/editview/EditView$5;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView;->addShortcutResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$5;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 504
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$5;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1200(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$5;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView$5;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/editview/EditView;->access$1200(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/editview/EditView;->showDraggedView(Landroid/view/View;Z)V

    .line 506
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$5;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #setter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;
    invoke-static {v0, v3}, Lcom/baidu/launcher/ui/editview/EditView;->access$1202(Lcom/baidu/launcher/ui/editview/EditView;Landroid/view/View;)Landroid/view/View;

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$5;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->access$802(Lcom/baidu/launcher/ui/editview/EditView;Z)Z

    .line 510
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$5;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #setter for: Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I
    invoke-static {v0, v3}, Lcom/baidu/launcher/ui/editview/EditView;->access$1302(Lcom/baidu/launcher/ui/editview/EditView;[I)[I

    .line 511
    return-void
.end method
