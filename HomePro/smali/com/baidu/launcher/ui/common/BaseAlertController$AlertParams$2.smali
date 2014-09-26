.class Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "BaseAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->createListView(Lcom/baidu/launcher/ui/common/BaseAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

.field final synthetic val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;Lcom/baidu/launcher/ui/common/BaseAlertController;)V
    .locals 2
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iput-object p5, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;

    iput-object p6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 897
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 898
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->mLabelIndex:I

    .line 899
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 900
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 904
    const v2, 0x7f0802cc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 905
    .local v0, text:Landroid/widget/CheckedTextView;
    iget v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->val$listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 908
    return-void

    .line 906
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;->val$dialog:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mMultiChoiceItemLayout:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$900(Lcom/baidu/launcher/ui/common/BaseAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
