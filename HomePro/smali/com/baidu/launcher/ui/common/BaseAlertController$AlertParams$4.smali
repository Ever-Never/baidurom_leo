.class Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "BaseAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->createListView(Lcom/baidu/launcher/ui/common/BaseAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

.field final synthetic val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;Lcom/baidu/launcher/ui/common/BaseAlertController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iput-object p2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;

    iput-object p3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$600(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;->val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 957
    return-void
.end method
