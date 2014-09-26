.class Lcom/baidu/launcher/update/UpdateManager$3;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/update/UpdateManager;->showConfirmDialod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/update/UpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 20
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 188
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 189
    .local v17, path:Ljava/io/File;
    new-instance v18, Landroid/os/StatFs;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 190
    .local v18, stat:Landroid/os/StatFs;
    const/16 v16, 0x5

    .line 191
    .local v16, minMB:I
    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->IsSdCardMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00a4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const/high16 v3, 0x50

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00b9

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 198
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mTargetMarket:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$500(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mTargetMarket:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/update/UpdateManager;->access$500(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/update/UpdateManager;->updateFromMarket(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v19, 0x1

    .line 199
    .local v19, update:Z
    :goto_1
    if-nez v19, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, notificationTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->getVersionUpdateFileDir()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/baidu/launcher/update/UpdateManager;->mSavePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/baidu/launcher/update/UpdateManager;->access$702(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadFileManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadFileManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/update/UpdateManager;->access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/update/UpdateManager;->access$300(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mSavePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/launcher/update/UpdateManager;->access$700(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mSaveName:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/launcher/update/UpdateManager;->access$400(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual/range {v1 .. v10}, Lcom/baidu/launcher/network/http/DownloadFileManager;->insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)J

    move-result-wide v8

    .line 206
    .local v8, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/update/UpdateManager$3;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->addNotification(JZLandroid/content/Intent;ZLandroid/content/Intent;ZLandroid/content/Intent;)V

    goto/16 :goto_0

    .line 198
    .end local v6           #notificationTitle:Ljava/lang/String;
    .end local v8           #id:J
    .end local v19           #update:Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_1
.end method
