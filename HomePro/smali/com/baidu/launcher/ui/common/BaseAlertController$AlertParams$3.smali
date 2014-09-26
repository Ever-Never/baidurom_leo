.class Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;Lcom/baidu/launcher/ui/common/BaseAlertController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iput-object p2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;->val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;->val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$600(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 944
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;->val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$600(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 947
    :cond_0
    return-void
.end method
