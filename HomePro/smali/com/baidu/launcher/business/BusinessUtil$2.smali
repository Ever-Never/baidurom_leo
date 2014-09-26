.class final Lcom/baidu/launcher/business/BusinessUtil$2;
.super Ljava/lang/Object;
.source "BusinessUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/business/BusinessUtil;->BusinessIconClick(Landroid/content/Context;Lcom/baidu/launcher/data/item/BaseItemInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/launcher/data/item/BaseItemInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iput-object p3, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadFileManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-object v2, v3, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$path:Ljava/lang/String;

    const-string v4, "application"

    iget-object v5, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-object v5, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-object v6, v6, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessDescription:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/baidu/launcher/network/http/DownloadFileManager;->insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)J

    move-result-wide v1

    .line 150
    .local v1, taskid:J
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->addNotification(JZLandroid/content/Intent;ZLandroid/content/Intent;ZLandroid/content/Intent;)V

    .line 156
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->showProgressNotifAtOnce(J)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v0, :cond_2

    .line 161
    iget-object v11, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    check-cast v11, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 162
    .local v11, homeinfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v11, v3}, Lcom/baidu/launcher/data/HomeDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/HomeItemInfo;I)V

    .line 177
    .end local v11           #homeinfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-object v3, v3, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-wide v4, v4, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessTableID:J

    invoke-static {v0, v3, v4, v5}, Lcom/baidu/launcher/ubc/UBC;->reportAppDownload(Landroid/content/Context;Ljava/lang/String;J)V

    .line 179
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v0, :cond_1

    .line 168
    iget-object v12, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$info:Lcom/baidu/launcher/data/item/BaseItemInfo;

    check-cast v12, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 170
    .local v12, listinfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v3}, Lcom/baidu/launcher/data/AppsDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/ListItemInfo;I)V

    goto :goto_0
.end method
