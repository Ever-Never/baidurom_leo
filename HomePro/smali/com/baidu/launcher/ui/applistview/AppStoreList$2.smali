.class Lcom/baidu/launcher/ui/applistview/AppStoreList$2;
.super Ljava/lang/Object;
.source "AppStoreList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 92
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    .line 95
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppStoreList;->mListAdapter:Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$400(Lcom/baidu/launcher/ui/applistview/AppStoreList;)Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/business/item/RecommendAppItem;

    .line 100
    .local v0, appItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v4, v4, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getPackagename()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 105
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v3, :cond_0

    .line 107
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #calls: Lcom/baidu/launcher/ui/applistview/AppStoreList;->DownloadDialog(Lcom/baidu/launcher/business/item/RecommendAppItem;)V
    invoke-static {v4, v0}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$500(Lcom/baidu/launcher/ui/applistview/AppStoreList;Lcom/baidu/launcher/business/item/RecommendAppItem;)V

    .line 120
    :goto_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->dismiss()V

    .line 121
    return-void

    .line 101
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .line 103
    .restart local v3       #packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v4, v4, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getPackagename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 110
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_2

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v4, v4, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v6, v6, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0211

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 118
    :goto_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v4, v4, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/ubc/UBC;->reportAppstoreOpen(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_2
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v4, v4, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
