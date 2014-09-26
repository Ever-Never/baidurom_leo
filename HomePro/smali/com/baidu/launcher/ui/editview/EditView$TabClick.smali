.class public Lcom/baidu/launcher/ui/editview/EditView$TabClick;
.super Ljava/lang/Object;
.source "EditView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/editview/EditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditView;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$TabClick;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$TabClick;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditView;->currentView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$600(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$TabClick;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    const/4 v1, 0x1

    #calls: Lcom/baidu/launcher/ui/editview/EditView;->setCurrentTab(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lcom/baidu/launcher/ui/editview/EditView;->access$500(Lcom/baidu/launcher/ui/editview/EditView;Landroid/view/View;Z)V

    .line 363
    :cond_0
    return-void
.end method
