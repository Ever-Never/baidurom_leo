.class Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "BaseAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->createListView(Lcom/baidu/launcher/ui/common/BaseAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

.field final synthetic val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iput-object p6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$1;->val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 881
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 882
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v2, v2, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    .line 883
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v2, v2, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .line 884
    .local v0, isItemChecked:Z
    if-eqz v0, :cond_0

    .line 885
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$1;->val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 888
    .end local v0           #isItemChecked:Z
    :cond_0
    return-object v1
.end method
