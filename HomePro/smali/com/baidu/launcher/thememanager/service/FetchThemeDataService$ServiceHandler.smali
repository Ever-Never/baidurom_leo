.class public final Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;
.super Landroid/os/Handler;
.source "FetchThemeDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final BAIDU_RES_FINISHED:I = 0x3

.field public static final BOOT_COMPLETED:I = 0x0

.field public static final DOWNLOAD_FINISHED:I = 0x2

.field public static final MEDIA_SCANNER_FINISHED:I = 0x1

.field public static final OPEN_APPLY:I = 0xa

.field public static final REMOVE_APK_RES:I = 0x9

.field public static final SCAN_APK:I = 0x8

.field public static final SCAN_DOWNLOAD_FOULDER_THEME:I = 0x4

.field public static final SCAN_DOWNLOAD_FOULDER_WALLPAPER:I = 0x7

.field public static final SCAN_FILE_BY_PATH:I = 0x5

.field public static final UPDATE_PROCRESS:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    .line 260
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 261
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .parameter "msg"

    .prologue
    .line 265
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 447
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 270
    :pswitch_1
    const-string v2, "DownloadTheme"

    const-string v4, "FetchThemeDataService MEDIA_SCANNER_FINISHED"

    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 272
    .local v17, intent1:Landroid/content/Intent;
    const/16 v26, 0x0

    .line 273
    .local v26, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const-string v2, "extra_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 274
    .local v10, downloadId:J
    const-string v2, "extra_notify_type"

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 276
    .local v21, notify_type:I
    const/16 v2, 0xb

    move/from16 v0, v21

    if-ne v0, v2, :cond_3

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const-string v4, "theme/ICON"

    invoke-static {v2, v10, v11, v4}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadInfoById(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 284
    :cond_1
    :goto_1
    if-eqz v26, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_8

    .line 286
    const/16 v27, 0x2

    .line 287
    .local v27, status:I
    const/16 v31, 0x0

    .line 288
    .local v31, title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 289
    .local v3, url:Ljava/lang/String;
    const/16 v23, 0x0

    .line 291
    .local v23, path:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 292
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31           #title:Ljava/lang/String;
    check-cast v31, Ljava/lang/String;

    .line 293
    .restart local v31       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #url:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 294
    .restart local v3       #url:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #path:Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 296
    .restart local v23       #path:Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 297
    const-string v2, "DownloadTheme"

    const-string v4, "FetchThemeDataService startNext"

    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->startNextTask(Landroid/content/Context;)V

    .line 301
    :cond_2
    new-instance v18, Landroid/content/Intent;

    const-string v2, "com.baidu.thememanager.action.downloadstatechange"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v18, intent_state:Landroid/content/Intent;
    const-string v2, "com.baidu.thememanager.extra.url"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v2, "com.baidu.thememanager.extra.status"

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    if-nez v27, :cond_6

    .line 310
    const/16 v2, 0x14

    move/from16 v0, v21

    if-eq v0, v2, :cond_5

    .line 312
    invoke-static/range {v23 .. v23}, Lcom/baidu/launcher/thememanager/util/Utils;->isZipFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 313
    const-string v2, "DownloadTheme"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNotZip, path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v13, f:Ljava/io/File;
    invoke-static {v13}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 316
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v2

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x0

    invoke-static {v2, v10, v11, v4}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownloadWithNotice(Landroid/content/Context;JZ)V

    .line 320
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->startNextTask(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 280
    .end local v3           #url:Ljava/lang/String;
    .end local v13           #f:Ljava/io/File;
    .end local v18           #intent_state:Landroid/content/Intent;
    .end local v23           #path:Ljava/lang/String;
    .end local v27           #status:I
    .end local v31           #title:Ljava/lang/String;
    :cond_3
    const/16 v2, 0x14

    move/from16 v0, v21

    if-ne v0, v2, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const-string v4, "wallpaper"

    invoke-static {v2, v10, v11, v4}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadInfoById(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;

    move-result-object v26

    goto/16 :goto_1

    .line 323
    .restart local v3       #url:Ljava/lang/String;
    .restart local v18       #intent_state:Landroid/content/Intent;
    .restart local v23       #path:Ljava/lang/String;
    .restart local v27       #status:I
    .restart local v31       #title:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x2

    move-object/from16 v0, v23

    #calls: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->analyThemeByPath(Ljava/lang/String;I)V
    invoke-static {v2, v0, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$000(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 329
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x2

    move-object/from16 v0, v23

    #calls: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->analyThemeByPath(Ljava/lang/String;I)V
    invoke-static {v2, v0, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$000(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 332
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v27

    if-eq v2, v0, :cond_7

    const-wide/16 v4, -0x1

    cmp-long v2, v4, v10

    if-eqz v2, :cond_7

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x0

    invoke-static {v2, v10, v11, v4}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownloadWithNotice(Landroid/content/Context;JZ)V

    goto/16 :goto_0

    .line 335
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v27

    if-ne v2, v0, :cond_0

    .line 336
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v2

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 338
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.baidu.thememanager.action.downloadstatechange"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v20, localIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 343
    .end local v3           #url:Ljava/lang/String;
    .end local v18           #intent_state:Landroid/content/Intent;
    .end local v20           #localIntent:Landroid/content/Intent;
    .end local v23           #path:Ljava/lang/String;
    .end local v27           #status:I
    .end local v31           #title:Ljava/lang/String;
    :cond_8
    new-instance v18, Landroid/content/Intent;

    const-string v2, "com.baidu.thememanager.action.downloadstatechange"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v18       #intent_state:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 348
    .end local v10           #downloadId:J
    .end local v17           #intent1:Landroid/content/Intent;
    .end local v18           #intent_state:Landroid/content/Intent;
    .end local v21           #notify_type:I
    .end local v26           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 349
    .restart local v23       #path:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isSupprotWallpaperTempType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-static {v2, v0, v4}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->analyWallpaper(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 352
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-static/range {v23 .. v23}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->fatchDefaultData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mProviderBeans:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$102(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/util/List;)Ljava/util/List;

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    #getter for: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mProviderBeans:Ljava/util/List;
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$100(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v2, v4, v5}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->analyThemeFromZip(Landroid/content/Context;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 361
    .end local v23           #path:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x4

    #calls: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->scanDownloadFolder(I)V
    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$200(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;I)V

    goto/16 :goto_0

    .line 365
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    #getter for: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$300(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->copyDefalutWallpaper2Sdcard(Landroid/content/Context;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x7

    #calls: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->scanDownloadFolder(I)V
    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$200(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;I)V

    goto/16 :goto_0

    .line 369
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 370
    .local v14, filePath:Ljava/lang/String;
    invoke-static {v14}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isSupprotWallpaperType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x5

    invoke-static {v2, v14, v4}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->analyWallpaper(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 372
    :cond_a
    const-string v2, "com.baidu.launcher"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_b

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 376
    .local v24, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v25

    .line 377
    .local v25, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x5

    move-object/from16 v0, v25

    invoke-static {v2, v0, v14, v4}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->analyThemeFromAssets(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 379
    .end local v25           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v12

    .line 381
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 384
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v24           #pm:Landroid/content/pm/PackageManager;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-static {v14}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->fatchDefaultData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    #setter for: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mProviderBeans:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$102(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/util/List;)Ljava/util/List;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    #getter for: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mProviderBeans:Ljava/util/List;
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$100(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v2, v4, v5}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->analyThemeFromZip(Landroid/content/Context;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 391
    .end local v14           #filePath:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->validDBAPKData(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 394
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 395
    .local v9, apkName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-static {v2, v9}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getThemeIDByPath(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 397
    .local v15, id:I
    new-instance v29, Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, -0x1

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v15, v4}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;-><init>(Landroid/content/Context;II)V

    .line 398
    .local v29, themeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-virtual/range {v29 .. v29}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->init()V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual/range {v29 .. v29}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getComponentList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->checkDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->restoreDefaultTheme(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)I

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const-string v4, "com.baidu.launcher.theme.changed"

    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/util/Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const-class v4, Lcom/baidu/launcher/app/Launcher;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 405
    const/high16 v2, 0x1000

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->startActivity(Landroid/content/Intent;)V

    .line 409
    .end local v16           #intent:Landroid/content/Intent;
    :cond_c
    new-instance v30, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 410
    .local v30, themeString:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    new-instance v28, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme_id=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 415
    .local v28, themeContentString:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 418
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.baidu.thememanager.action.downloadstatechange"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v19, it:Landroid/content/Intent;
    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CHANGE_TYPE:Ljava/lang/String;

    sget v4, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CHANGE_TYPE_RESTORE:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 425
    .end local v9           #apkName:Ljava/lang/String;
    .end local v15           #id:I
    .end local v19           #it:Landroid/content/Intent;
    .end local v28           #themeContentString:Ljava/lang/StringBuffer;
    .end local v29           #themeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    .end local v30           #themeString:Ljava/lang/StringBuffer;
    :pswitch_8
    const-string v2, "FetchThemeDataService"

    const-string v4, "open_apply"

    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 427
    .local v22, packageName:Ljava/lang/String;
    const-string v2, "com.baidu.launcher"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 432
    .restart local v24       #pm:Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v25

    .line 433
    .restart local v25       #resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const/4 v4, 0x5

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v2, v0, v1, v4}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->analyThemeFromAssets(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyFromAsset(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    const-string v4, "com.baidu.launcher.theme.changed"

    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/util/Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 439
    .end local v25           #resources:Landroid/content/res/Resources;
    :catch_1
    move-exception v12

    .line 441
    .restart local v12       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
