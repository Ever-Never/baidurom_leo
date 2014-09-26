.class Lcom/baidu/launcher/ui/editview/EditView$4;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView;->loadAndShow()V
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
    .line 224
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$4;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$4;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$4;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$300(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/editview/EditAppsListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->reloadData(Z)V

    .line 229
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$4;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView$4;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->tabApp:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/editview/EditView;->access$400(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/baidu/launcher/ui/editview/EditView;->setCurrentTab(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/ui/editview/EditView;->access$500(Lcom/baidu/launcher/ui/editview/EditView;Landroid/view/View;Z)V

    .line 231
    :cond_0
    return-void
.end method
