.class Lcom/baidu/launcher/ui/applistview/AppStoreList$3;
.super Ljava/lang/Object;
.source "AppStoreList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppStoreList;->DownloadDialog(Lcom/baidu/launcher/business/item/RecommendAppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$strategyId:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->val$appName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->val$strategyId:J

    iput-object p5, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->val$appName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->val$strategyId:J

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/utils/StorageUtil;->getBusinessApkFileDir(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, dst:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadFileManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v1, v1, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->val$url:Ljava/lang/String;

    const-string v4, "mime"

    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->val$appName:Ljava/lang/String;

    const-string v6, "dest"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/baidu/launcher/network/http/DownloadFileManager;->insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)J

    move-result-wide v5

    .line 162
    .local v5, taskid:J
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->addNotification(JZLandroid/content/Intent;ZLandroid/content/Intent;ZLandroid/content/Intent;)V

    .line 164
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->showProgressNotifAtOnce(J)V

    .line 165
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppStoreList;->taskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppStoreList;->access$600(Lcom/baidu/launcher/ui/applistview/AppStoreList;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method
