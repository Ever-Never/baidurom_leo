.class Lcom/baidu/launcher/ui/editview/EditView$8;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView;->buildUpAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$8;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    iput p2, p0, Lcom/baidu/launcher/ui/editview/EditView$8;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$8;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/EditView$8;->val$index:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeViewFromEditView(I)V

    .line 648
    return-void
.end method
