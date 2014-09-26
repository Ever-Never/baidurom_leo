.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperDetailOnlineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, action:Ljava/lang/String;
    const-string v10, "com.baidu.launcher.download_progress"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 312
    const-string v10, "extra_mimetype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, mimeType:Ljava/lang/String;
    const-string v10, "wallpaper"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 314
    const-string v10, "extra_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 315
    .local v4, id:J
    const-string v10, "extra_total"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 316
    .local v7, total:J
    const-string v10, "extra_current"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 317
    .local v2, current:J
    const-string v10, "extra_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, url:Ljava/lang/String;
    iget-object v10, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I
    invoke-static {v11}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    invoke-virtual {v10}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 321
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-lez v10, :cond_2

    .line 322
    cmp-long v10, v7, v2

    if-lez v10, :cond_3

    .line 323
    iget-object v10, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mProgress:[I
    invoke-static {v10}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)[I

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I
    invoke-static {v11}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)I

    move-result v11

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v2

    div-long/2addr v12, v7

    long-to-int v12, v12

    aput v12, v10, v11

    .line 328
    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    iget-object v10, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;
    invoke-static {v10}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Landroid/widget/Button;

    move-result-object v12

    iget-object v10, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v13, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I
    invoke-static {v13}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    iget-object v13, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mProgress:[I
    invoke-static {v13}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)[I

    move-result-object v13

    iget-object v14, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I
    invoke-static {v14}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)I

    move-result v14

    aget v13, v13, v14

    invoke-static {v11, v12, v10, v13}, Lcom/baidu/launcher/thememanager/util/Utils;->changeWallpaperButtonState(Landroid/content/Context;Landroid/widget/Button;Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;I)V

    goto/16 :goto_0

    .line 324
    :cond_3
    cmp-long v10, v7, v2

    if-nez v10, :cond_2

    .line 325
    iget-object v10, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mProgress:[I
    invoke-static {v10}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)[I

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I
    invoke-static {v11}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)I

    move-result v11

    const/16 v12, 0x64

    aput v12, v10, v11

    goto :goto_1
.end method
