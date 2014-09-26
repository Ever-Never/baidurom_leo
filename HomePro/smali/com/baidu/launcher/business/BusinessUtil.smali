.class public Lcom/baidu/launcher/business/BusinessUtil;
.super Ljava/lang/Object;
.source "BusinessUtil.java"


# static fields
.field public static final ACTION_LAUNCHER_FIRST_START:Ljava/lang/String; = "com.baidu.launcher.first.start"

.field public static final ACTION_SYNC_RECOMMEND_INFO:Ljava/lang/String; = "com.baidu.launcher.business.sync"

.field public static final ACTION_SYNC_STRATEGY_END:Ljava/lang/String; = "com.baidu.launcher.business.strategy.end"

.field public static final ACTION_SYNC_STRATEGY_START:Ljava/lang/String; = "com.baidu.launcher.business.strategy.start"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_TYPE_CONNECTIVITY_CHANGE:Ljava/lang/String; = "connect"

.field public static final EXTRA_TYPE_FIRST_START:Ljava/lang/String; = "firststart"

.field public static final EXTRA_TYPE_STRATEGY_END:Ljava/lang/String; = "strategyend"

.field public static final EXTRA_TYPE_STRATEGY_START:Ljava/lang/String; = "strategystart"

.field public static final EXTRA_TYPE_SYNC:Ljava/lang/String; = "sync"

.field public static final EXTRA_TYPE_TIME_CAHNGE:Ljava/lang/String; = "timechange"

.field public static final LOCATE_APPLIST:Ljava/lang/String; = "1"

.field public static final LOCATE_FOLDER:Ljava/lang/String; = "2"

.field public static final LOCATE_HOME:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/baidu/launcher/business/BusinessUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BusinessIconClick(Landroid/content/Context;Lcom/baidu/launcher/data/item/BaseItemInfo;)Z
    .locals 18
    .parameter "context"
    .parameter "info"

    .prologue
    .line 86
    const/4 v13, 0x0

    .line 88
    .local v13, canLaunch:Z
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isPreset:Z

    if-eqz v3, :cond_1

    .line 90
    sget-object v3, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info.presetID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessTableID:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v3, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessStrategyKey:J

    invoke-static {v3, v6, v7}, Lcom/baidu/launcher/utils/StorageUtil;->getBusinessApkFileDir(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v17

    .line 99
    .local v17, path:Ljava/lang/String;
    sget-object v3, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "click to download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessStrategyKey:J

    invoke-static {v3, v6, v7}, Lcom/baidu/launcher/utils/StorageUtil;->isBusinessApkFileExit(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v3, :cond_2

    move-object/from16 v15, p1

    .line 104
    check-cast v15, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 105
    .local v15, homeinfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v15, v6}, Lcom/baidu/launcher/data/HomeDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/HomeItemInfo;I)V

    .line 116
    .end local v15           #homeinfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/baidu/launcher/business/BusinessUtil;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    .end local v17           #path:Ljava/lang/String;
    :cond_1
    :goto_1
    return v13

    .line 108
    .restart local v17       #path:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_0

    move-object/from16 v16, p1

    .line 109
    check-cast v16, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 111
    .local v16, listinfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    const/4 v6, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v6}, Lcom/baidu/launcher/data/AppsDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/ListItemInfo;I)V

    goto :goto_0

    .line 119
    .end local v16           #listinfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_3
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadFileManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadFileManager;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessURL:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v6, v0, v7}, Lcom/baidu/launcher/network/http/DownloadFileManager;->isInDownloadTask(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v4

    .line 122
    .local v4, oldid:J
    sget-object v3, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloading, show status bar "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 125
    new-instance v14, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030132

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 126
    .local v14, contexttheme:Landroid/view/ContextThemeWrapper;
    const v3, 0x103000c

    invoke-virtual {v14, v3}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 127
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c020c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x7f0c020d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x1080027

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x104000a

    new-instance v7, Lcom/baidu/launcher/business/BusinessUtil$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v7, v0, v1, v2}, Lcom/baidu/launcher/business/BusinessUtil$2;-><init>(Landroid/content/Context;Lcom/baidu/launcher/data/item/BaseItemInfo;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v6, 0x104

    new-instance v7, Lcom/baidu/launcher/business/BusinessUtil$1;

    invoke-direct {v7}, Lcom/baidu/launcher/business/BusinessUtil$1;-><init>()V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 192
    .local v12, alertDialog:Landroid/app/Dialog;
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 195
    .end local v12           #alertDialog:Landroid/app/Dialog;
    .end local v14           #contexttheme:Landroid/view/ContextThemeWrapper;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->addNotification(JZLandroid/content/Intent;ZLandroid/content/Intent;ZLandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public static BusinessIconFirstRun(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "title"
    .parameter "businessTableID"

    .prologue
    const/4 v6, 0x4

    .line 210
    sget-object v3, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.componentName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-eqz p1, :cond_2

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    .local v0, applist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 217
    .local v1, i:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v3, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lcom/baidu/launcher/data/AppsDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/ListItemInfo;I)V

    .line 224
    const-wide/16 v3, 0x1

    iput-wide v3, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_0

    .line 237
    .end local v1           #i:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Lcom/baidu/launcher/data/HomeDataManager;->onBusinessAppStateUpdate(Ljava/lang/String;I)V

    .line 241
    .end local v0           #applist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/baidu/launcher/ubc/UBC;->reportAppActivated(Landroid/content/Context;Ljava/lang/String;J)V

    .line 242
    return-void
.end method

.method public static getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 5
    .parameter "sourceFile"

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 274
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 275
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v0, v1, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 278
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    .line 279
    return-object v3
.end method

.method public static initUserInfo(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 66
    new-instance v0, Lcom/baidu/launcher/business/UserInfoManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/business/UserInfoManager;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, userinfoManager:Lcom/baidu/launcher/business/UserInfoManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/business/UserInfoManager;->processUserInfoWhenInitTask()V

    .line 68
    return-void
.end method

.method public static initWhenLauncherStart(Landroid/content/Context;)V
    .locals 0
    .parameter "aContext"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/baidu/launcher/business/BusinessUtil;->initUserInfo(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcom/baidu/launcher/business/BusinessUtil;->syncRecommendInfo(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public static installApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public static declared-synchronized installAppInSilent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "path"

    .prologue
    .line 254
    const-class v7, Lcom/baidu/launcher/business/BusinessUtil;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 255
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 256
    .local v0, installFlags:I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v5, sourceFile:Ljava/io/File;
    invoke-static {v5}, Lcom/baidu/launcher/business/BusinessUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 258
    .local v2, mPkgInfo:Landroid/content/pm/PackageParser$Package;
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .local v1, mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x2000

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 263
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 264
    or-int/lit8 v0, v0, 0x2

    .line 268
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v8, v0, v9}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    monitor-exit v7

    return-void

    .line 254
    .end local v0           #installFlags:I
    .end local v1           #mAppInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #mPkgInfo:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #sourceFile:Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 266
    .restart local v0       #installFlags:I
    .restart local v1       #mAppInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #mPkgInfo:Landroid/content/pm/PackageParser$Package;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #sourceFile:Ljava/io/File;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static processRemoveFolder(Landroid/net/Uri;Landroid/content/Context;J)V
    .locals 12
    .parameter "aUri"
    .parameter "aContext"
    .parameter "strategyTableId"

    .prologue
    .line 319
    const/4 v6, 0x0

    .line 322
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "strategy_table_id"

    aput-object v1, v2, v0

    .line 325
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strategy_table_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 330
    .local v8, id:J
    sget-object v0, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRemoveFolder id :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {p0, p1, v8, v9}, Lcom/baidu/launcher/business/BusinessDAOUtil;->getFolderHasUserApp(Landroid/net/Uri;Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 332
    sget-object v0, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFolderHasUserApp id :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 348
    .end local v8           #id:J
    :cond_1
    if-eqz v6, :cond_2

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 352
    .end local v2           #projection:[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 335
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v8       #id:J
    :cond_3
    :try_start_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "isPreset"

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v0, "strategy_table_id"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v11, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 341
    .local v10, update:I
    sget-object v0, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFolderHasUserApp update :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 345
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #id:J
    .end local v10           #update:I
    .end local v11           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 346
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    if-eqz v6, :cond_2

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 348
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static removeStrategy(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "strategyTableId"

    .prologue
    .line 284
    :try_start_0
    sget-object v1, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStrategy strategyTableId : strategyTableId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/utils/Constant;->HOME_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreset = 1 and strategy_table_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "itemType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 293
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->HOME_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1, p2}, Lcom/baidu/launcher/business/BusinessUtil;->processRemoveFolder(Landroid/net/Uri;Landroid/content/Context;J)V

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/utils/Constant;->APPLIST_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreset = 1 and strategy_table_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "itemType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->APPLIST_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1, p2}, Lcom/baidu/launcher/business/BusinessUtil;->processRemoveFolder(Landroid/net/Uri;Landroid/content/Context;J)V

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strategy_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    sget-object v1, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete Constant.STRATEGY_URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/utils/Constant;->STRATEGY_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/baidu/launcher/business/BusinessUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static syncRecommendInfo(Landroid/content/Context;)V
    .locals 7
    .parameter "aContext"

    .prologue
    .line 71
    new-instance v0, Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/business/BusinessSyncManager;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, appManager:Lcom/baidu/launcher/business/BusinessSyncManager;
    new-instance v3, Lcom/baidu/launcher/business/UserInfoManager;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/business/UserInfoManager;-><init>(Landroid/content/Context;)V

    .line 73
    .local v3, userInfoManager:Lcom/baidu/launcher/business/UserInfoManager;
    invoke-static {p0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/baidu/launcher/business/UserInfoManager;->isBindUserInfo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->syncRecomendApp()V

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    sget-object v4, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_SYNC_INTERVAL:Ljava/lang/String;

    sget-wide v5, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->DEFAULT_BUSINESS_SYNC_INTERVAL:J

    invoke-static {p0, v4, v5, v6}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 80
    .local v1, syncInterval:J
    new-instance v4, Lcom/baidu/launcher/utils/AlarmHelper;

    invoke-direct {v4}, Lcom/baidu/launcher/utils/AlarmHelper;-><init>()V

    invoke-virtual {v4, p0, v1, v2}, Lcom/baidu/launcher/utils/AlarmHelper;->setRecommendAppAlarm(Landroid/content/Context;J)V

    goto :goto_0
.end method
