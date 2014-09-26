.class Lcom/baidu/launcher/ui/applistview/AppStoreList$1;
.super Ljava/lang/Object;
.source "AppStoreList.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppStoreList;->initStoreList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #setter for: Lcom/baidu/launcher/ui/applistview/AppStoreList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$102(Lcom/baidu/launcher/ui/applistview/AppStoreList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 84
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #setter for: Lcom/baidu/launcher/ui/applistview/AppStoreList;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$202(Lcom/baidu/launcher/ui/applistview/AppStoreList;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #setter for: Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListView:Landroid/widget/ListView;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$302(Lcom/baidu/launcher/ui/applistview/AppStoreList;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$400(Lcom/baidu/launcher/ui/applistview/AppStoreList;)Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$400(Lcom/baidu/launcher/ui/applistview/AppStoreList;)Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->clearItems()V

    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #setter for: Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$402(Lcom/baidu/launcher/ui/applistview/AppStoreList;Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;)Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    .line 90
    :cond_0
    return-void
.end method
