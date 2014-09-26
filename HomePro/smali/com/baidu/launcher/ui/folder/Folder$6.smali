.class Lcom/baidu/launcher/ui/folder/Folder$6;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/Folder;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/Folder;

.field final synthetic val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/Folder;Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder$6;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/Folder$6;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 353
    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/Folder$6;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 355
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 356
    .local v0, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/Folder$6;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    iget-wide v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 359
    iget v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 360
    const/4 v3, 0x4

    iput v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/Folder$6;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_0

    .line 366
    .end local v0           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_2
    return-void
.end method
