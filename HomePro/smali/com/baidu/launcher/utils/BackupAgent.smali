.class public Lcom/baidu/launcher/utils/BackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "BackupAgent.java"


# static fields
.field private static final CHANNEL_IDS:[Ljava/lang/String; = null

.field private static final CHANNEL_IDS_NEW:[Ljava/lang/String; = null

.field private static final KEY_ALLAPPLIST:Ljava/lang/String; = "allapplist"

.field private static final KEY_BULLETIN_SETTINGS:Ljava/lang/String; = "bulletin"

.field private static final KEY_BULLETIN_SETTINGS_NEW:Ljava/lang/String; = "bulletin_new"

.field private static final KEY_FAVORITES:Ljava/lang/String; = "favourites"

.field private static final KEY_HIDEAPPS:Ljava/lang/String; = "hideapps"

.field private static final KEY_SCREENS:Ljava/lang/String; = "screens"

.field private static final PROJECTION_APPLIST:[Ljava/lang/String; = null

.field private static final PROJECTION_FAV:[Ljava/lang/String; = null

.field private static final STATE_APPLISTSORT:I = 0x4

.field private static final STATE_BULLETIN:I = 0x3

.field private static final STATE_BULLETIN_NEW:I = 0x5

.field private static final STATE_FAVORITES:I = 0x0

.field private static final STATE_HIDEAPPS:I = 0x2

.field private static final STATE_SCREENS:I = 0x1

.field private static final STATE_SIZE:I = 0x6

.field private static final STATE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BackupAgent"


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "focus_news"

    aput-object v1, v0, v3

    const-string v1, "military"

    aput-object v1, v0, v4

    const-string v1, "entertainment"

    aput-object v1, v0, v5

    const-string v1, "tech"

    aput-object v1, v0, v6

    const-string v1, "finance"

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "internet"

    aput-object v1, v0, v3

    const-string v1, "music"

    aput-object v1, v0, v4

    const-string v1, "app"

    aput-object v1, v0, v5

    const-string v1, "gym"

    aput-object v1, v0, v6

    const-string v1, "women"

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS_NEW:[Ljava/lang/String;

    .line 76
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "intent"

    aput-object v1, v0, v5

    const-string v1, "container"

    aput-object v1, v0, v6

    const-string v1, "screen"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "isShortcut"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "displayMode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "isPreset"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "presetID"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "clickCount"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "strategy_table_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    .line 101
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "intent"

    aput-object v1, v0, v5

    const-string v1, "itemType"

    aput-object v1, v0, v6

    const-string v1, "container"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sort_index"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "isPreset"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "presetID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "clickCount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "strategy_table_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_APPLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private addAppWidget(Landroid/content/ContentValues;Landroid/content/ComponentName;)Z
    .locals 13
    .parameter "values"
    .parameter "cn"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 704
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 706
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const-string v9, "appWidgetId"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 707
    .local v4, id:Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 709
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 711
    .local v5, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v5, :cond_0

    iget-object v9, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    .line 742
    .end local v5           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return v9

    .line 717
    :cond_0
    const-string v9, "com.baidu.gallery3d"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "com.baidu.gallery3d.gadget.PhotoAppWidgetProvider"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v11

    .line 720
    goto :goto_0

    .line 724
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v8

    .line 726
    .local v8, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v8, :cond_2

    move v9, v11

    .line 727
    goto :goto_0

    .line 728
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 729
    .local v7, providerCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_4

    .line 730
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 731
    .local v6, provider:Landroid/content/ComponentName;
    if-eqz v6, :cond_3

    invoke-virtual {v6, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 732
    iget-object v9, p0, Lcom/baidu/launcher/utils/BackupAgent;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 733
    .local v0, appWidgetId:I
    const-string v9, "appWidgetId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    invoke-virtual {v1, v0, p2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v10

    .line 735
    goto :goto_0

    .line 729
    .end local v0           #appWidgetId:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 738
    .end local v3           #i:I
    .end local v6           #provider:Landroid/content/ComponentName;
    .end local v7           #providerCount:I
    .end local v8           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_0
    move-exception v2

    .line 739
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v9, "BackupAgent"

    const-string v10, "Problem allocating appWidgetId"

    invoke-static {v9, v10, v2}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2           #ex:Ljava/lang/RuntimeException;
    :cond_4
    move v9, v11

    .line 742
    goto :goto_0
.end method

.method private getAppListData()[B
    .locals 18

    .prologue
    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_APPLIST:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 365
    .local v7, cur:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 367
    .local v12, result:[B
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sget-object v2, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_APPLIST:[Ljava/lang/String;

    array-length v2, v2

    mul-int v13, v1, v2

    .line 369
    .local v13, size:I
    new-array v0, v13, [[B

    move-object/from16 v17, v0

    .line 370
    .local v17, values:[[B
    const/4 v14, 0x0

    .line 371
    .local v14, totalSize:I
    const/4 v9, 0x0

    .line 374
    .local v9, index:I
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget-object v1, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_APPLIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v8, v1, :cond_3

    .line 375
    const/16 v16, 0x0

    .line 377
    .local v16, valueBytes:[B
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 378
    .local v15, value:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    const/16 v16, 0x0

    .line 386
    :goto_1
    add-int/lit8 v14, v14, 0x4

    .line 387
    if-eqz v16, :cond_1

    .line 388
    move-object/from16 v0, v16

    array-length v1, v0

    add-int/2addr v14, v1

    .line 391
    :cond_1
    add-int/lit8 v10, v9, 0x1

    .end local v9           #index:I
    .local v10, index:I
    aput-object v16, v17, v9

    .line 374
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    .end local v10           #index:I
    .restart local v9       #index:I
    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    goto :goto_1

    .line 394
    .end local v15           #value:Ljava/lang/String;
    .end local v16           #valueBytes:[B
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    new-array v12, v14, [B

    .line 398
    const/4 v11, 0x0

    .line 399
    .local v11, pos:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v13, :cond_5

    .line 400
    aget-object v1, v17, v8

    if-eqz v1, :cond_4

    .line 401
    aget-object v1, v17, v8

    array-length v1, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v1}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v11

    .line 402
    aget-object v1, v17, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v1}, Lcom/baidu/launcher/utils/BackupAgent;->writeBytes([BI[B)I

    move-result v11

    .line 399
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 404
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v1}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v11

    goto :goto_3

    .line 409
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v11           #pos:I
    .end local v13           #size:I
    .end local v14           #totalSize:I
    .end local v17           #values:[[B
    :cond_5
    if-eqz v7, :cond_6

    .line 410
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_6
    return-object v12
.end method

.method private getBulletinSettingsData()[B
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    const/16 v3, 0x20

    new-array v2, v3, [B

    .line 208
    .local v2, result:[B
    const/4 v1, 0x0

    .line 210
    .local v1, pos:I
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->init(Landroid/content/Context;)V

    .line 211
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isBulletinEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-direct {p0, v2, v1, v3}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v1

    .line 213
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isAutoSyncEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v2, v1, v3}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v1

    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v3, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 216
    sget-object v3, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_3
    invoke-direct {p0, v2, v1, v3}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v1

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    :cond_0
    move v3, v5

    .line 211
    goto :goto_0

    :cond_1
    move v3, v5

    .line 213
    goto :goto_1

    .restart local v0       #i:I
    :cond_2
    move v3, v5

    .line 216
    goto :goto_3

    .line 224
    :cond_3
    return-object v2
.end method

.method private getBulletinSettingsData_new()[B
    .locals 4

    .prologue
    .line 228
    const/16 v3, 0x80

    new-array v2, v3, [B

    .line 230
    .local v2, result:[B
    const/4 v1, 0x0

    .line 231
    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS_NEW:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 232
    sget-object v3, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v2, v1, v3}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v1

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 240
    :cond_1
    return-object v2
.end method

.method private getFavouritesData()[B
    .locals 18

    .prologue
    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 301
    .local v7, cur:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 303
    .local v12, result:[B
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 304
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sget-object v2, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    array-length v2, v2

    mul-int v13, v1, v2

    .line 305
    .local v13, size:I
    new-array v0, v13, [[B

    move-object/from16 v17, v0

    .line 306
    .local v17, values:[[B
    const/4 v14, 0x0

    .line 307
    .local v14, totalSize:I
    const/4 v9, 0x0

    .line 310
    .local v9, index:I
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget-object v1, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    array-length v1, v1

    if-ge v8, v1, :cond_5

    .line 311
    const/16 v16, 0x0

    .line 312
    .local v16, valueBytes:[B
    sget-object v1, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    aget-object v1, v1, v8

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 330
    :goto_1
    add-int/lit8 v14, v14, 0x4

    .line 331
    if-eqz v16, :cond_1

    .line 332
    move-object/from16 v0, v16

    array-length v1, v0

    add-int/2addr v14, v1

    .line 335
    :cond_1
    add-int/lit8 v10, v9, 0x1

    .end local v9           #index:I
    .local v10, index:I
    aput-object v16, v17, v9

    .line 310
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    .end local v10           #index:I
    .restart local v9       #index:I
    goto :goto_0

    .line 315
    :cond_2
    sget-object v1, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    aget-object v1, v1, v8

    const-string v2, "screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 318
    .local v15, value:Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 319
    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 320
    goto :goto_1

    .line 321
    .end local v15           #value:Ljava/lang/Integer;
    :cond_3
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 322
    .local v15, value:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    const/16 v16, 0x0

    goto :goto_1

    .line 326
    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    goto :goto_1

    .line 338
    .end local v15           #value:Ljava/lang/String;
    .end local v16           #valueBytes:[B
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    new-array v12, v14, [B

    .line 342
    const/4 v11, 0x0

    .line 343
    .local v11, pos:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v13, :cond_7

    .line 344
    aget-object v1, v17, v8

    if-eqz v1, :cond_6

    .line 345
    aget-object v1, v17, v8

    array-length v1, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v1}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v11

    .line 346
    aget-object v1, v17, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v1}, Lcom/baidu/launcher/utils/BackupAgent;->writeBytes([BI[B)I

    move-result v11

    .line 343
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 348
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v1}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v11

    goto :goto_3

    .line 353
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v11           #pos:I
    .end local v13           #size:I
    .end local v14           #totalSize:I
    .end local v17           #values:[[B
    :cond_7
    if-eqz v7, :cond_8

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_8
    return-object v12
.end method

.method private getScreensData()[B
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 417
    invoke-static {}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->getDoubleclickName()Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, name:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->getDoubleclickAction()Landroid/content/Intent;

    move-result-object v0

    .line 419
    .local v0, action:Landroid/content/Intent;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 421
    .local v3, intent:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v4}, Lcom/baidu/launcher/utils/BackupAgent;->getStringLength(Ljava/lang/String;)I

    move-result v2

    .line 422
    .local v2, doubleClickNameLength:I
    invoke-direct {p0, v3}, Lcom/baidu/launcher/utils/BackupAgent;->getStringLength(Ljava/lang/String;)I

    move-result v1

    .line 424
    .local v1, doubleClickIntentLength:I
    add-int/lit8 v7, v2, 0x4c

    add-int/2addr v7, v1

    new-array v6, v7, [B

    .line 426
    .local v6, result:[B
    const/4 v5, 0x0

    .line 428
    .local v5, pos:I
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 429
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 430
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v7, :cond_1

    move v7, v8

    :goto_1
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 431
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    if-eqz v7, :cond_2

    move v7, v8

    :goto_2
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 433
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 434
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 436
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    if-eqz v7, :cond_3

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 439
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    if-eqz v7, :cond_4

    move v7, v8

    :goto_4
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 442
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    const v10, 0x47c35000

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 445
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    if-eqz v7, :cond_5

    move v7, v8

    :goto_5
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 446
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    if-eqz v7, :cond_6

    move v7, v8

    :goto_6
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 448
    invoke-static {}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->getDoubleclickType()I

    move-result v7

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 451
    if-eqz v4, :cond_7

    .line 452
    invoke-direct {p0, v6, v5, v2}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 453
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeBytes([BI[B)I

    move-result v5

    .line 459
    :goto_7
    if-eqz v3, :cond_8

    .line 460
    invoke-direct {p0, v6, v5, v1}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 461
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeBytes([BI[B)I

    move-result v5

    .line 466
    :goto_8
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    if-eqz v7, :cond_9

    move v7, v8

    :goto_9
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 468
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 469
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    if-eqz v7, :cond_a

    move v7, v8

    :goto_a
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 471
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    if-eqz v7, :cond_b

    move v7, v8

    :goto_b
    invoke-direct {p0, v6, v5, v7}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 473
    sget-boolean v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    if-eqz v7, :cond_c

    :goto_c
    invoke-direct {p0, v6, v5, v8}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    .line 475
    return-object v6

    .line 419
    .end local v1           #doubleClickIntentLength:I
    .end local v2           #doubleClickNameLength:I
    .end local v3           #intent:Ljava/lang/String;
    .end local v5           #pos:I
    .end local v6           #result:[B
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .restart local v1       #doubleClickIntentLength:I
    .restart local v2       #doubleClickNameLength:I
    .restart local v3       #intent:Ljava/lang/String;
    .restart local v5       #pos:I
    .restart local v6       #result:[B
    :cond_1
    move v7, v9

    .line 430
    goto/16 :goto_1

    :cond_2
    move v7, v9

    .line 431
    goto/16 :goto_2

    :cond_3
    move v7, v9

    .line 436
    goto/16 :goto_3

    :cond_4
    move v7, v9

    .line 439
    goto/16 :goto_4

    :cond_5
    move v7, v9

    .line 445
    goto :goto_5

    :cond_6
    move v7, v9

    .line 446
    goto :goto_6

    .line 456
    :cond_7
    invoke-direct {p0, v6, v5, v9}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    goto :goto_7

    .line 464
    :cond_8
    invoke-direct {p0, v6, v5, v9}, Lcom/baidu/launcher/utils/BackupAgent;->writeInt([BII)I

    move-result v5

    goto :goto_8

    :cond_9
    move v7, v9

    .line 466
    goto :goto_9

    :cond_a
    move v7, v9

    .line 469
    goto :goto_a

    :cond_b
    move v7, v9

    .line 471
    goto :goto_b

    :cond_c
    move v8, v9

    .line 473
    goto :goto_c
.end method

.method private getStringLength(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 479
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "in"
    .parameter "pos"

    .prologue
    .line 905
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 907
    .local v0, result:I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 7
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    .line 484
    new-array v2, v6, [J

    .line 486
    .local v2, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 490
    .local v0, dataInput:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 492
    .local v3, stateVersion:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 493
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 494
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v1           #i:I
    .end local v3           #stateVersion:I
    :catch_0
    move-exception v4

    .line 501
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 502
    return-object v2
.end method

.method private restoreApplist(Landroid/app/backup/BackupDataInput;)V
    .locals 10
    .parameter "data"

    .prologue
    .line 667
    new-instance v1, Landroid/content/ContentValues;

    sget-object v7, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_APPLIST:[Ljava/lang/String;

    array-length v7, v7

    invoke-direct {v1, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 668
    .local v1, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v7

    new-array v0, v7, [B

    .line 671
    .local v0, applist:[B
    const/4 v7, 0x0

    :try_start_0
    array-length v8, v0

    invoke-virtual {p1, v0, v7, v8}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 673
    const/4 v5, 0x0

    .line 675
    .local v5, pos:I
    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_2

    .line 676
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 677
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v7, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_APPLIST:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 678
    invoke-direct {p0, v0, v5}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v4

    .line 679
    .local v4, length:I
    add-int/lit8 v5, v5, 0x4

    .line 681
    if-lez v4, :cond_0

    .line 682
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v5, v4}, Ljava/lang/String;-><init>([BII)V

    .line 683
    .local v6, value:Ljava/lang/String;
    sget-object v7, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_APPLIST:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    add-int/2addr v5, v4

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 690
    .end local v4           #length:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    .end local v2           #i:I
    .end local v5           #pos:I
    :catch_0
    move-exception v3

    .line 695
    .local v3, ioe:Ljava/io/IOException;
    const-string v7, "BackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t read entity data "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 696
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 699
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 701
    return-void
.end method

.method private restoreBulletinSettings(Landroid/app/backup/BackupDataInput;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 244
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v9

    new-array v1, v9, [B

    .line 247
    .local v1, bulletinData:[B
    const/4 v9, 0x0

    :try_start_0
    array-length v10, v1

    invoke-virtual {p1, v1, v9, v10}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 248
    const/4 v6, 0x0

    .line 249
    .local v6, pos:I
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->init(Landroid/content/Context;)V

    .line 250
    invoke-direct {p0, v1, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v9

    if-ne v9, v7, :cond_0

    move v4, v7

    .line 252
    .local v4, enableBulletin:Z
    :goto_0
    invoke-static {v4}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->enableBulletin(Z)Z

    .line 253
    iget-object v9, p0, Lcom/baidu/launcher/utils/BackupAgent;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/baidu/launcher/utils/BackupAgent$2;

    invoke-direct {v10, p0, v4}, Lcom/baidu/launcher/utils/BackupAgent$2;-><init>(Lcom/baidu/launcher/utils/BackupAgent;Z)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    add-int/lit8 v6, v6, 0x4

    .line 261
    invoke-direct {p0, v1, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v0, v7

    .line 263
    .local v0, autoDownload:Z
    :goto_1
    invoke-static {v0}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->setAutoSync(Z)Z

    .line 264
    add-int/lit8 v6, v6, 0x4

    .line 265
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    sget-object v9, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_3

    .line 266
    invoke-direct {p0, v1, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v9

    if-ne v9, v7, :cond_2

    move v2, v7

    .line 268
    .local v2, channelSelected:Z
    :goto_3
    sget-object v9, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-static {v9, v2}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->setChannelSubscription(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    add-int/lit8 v6, v6, 0x4

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0           #autoDownload:Z
    .end local v2           #channelSelected:Z
    .end local v4           #enableBulletin:Z
    .end local v5           #i:I
    :cond_0
    move v4, v8

    .line 250
    goto :goto_0

    .restart local v4       #enableBulletin:Z
    :cond_1
    move v0, v8

    .line 261
    goto :goto_1

    .restart local v0       #autoDownload:Z
    .restart local v5       #i:I
    :cond_2
    move v2, v8

    .line 266
    goto :goto_3

    .line 272
    .end local v0           #autoDownload:Z
    .end local v4           #enableBulletin:Z
    .end local v5           #i:I
    .end local v6           #pos:I
    :catch_0
    move-exception v3

    .line 273
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "BackupAgent"

    const-string v8, "Restore preferences error"

    invoke-static {v7, v8, v3}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private restoreBulletinSettings_new(Landroid/app/backup/BackupDataInput;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 278
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v7

    new-array v0, v7, [B

    .line 281
    .local v0, bulletinData:[B
    const/4 v7, 0x0

    :try_start_0
    array-length v8, v0

    invoke-virtual {p1, v0, v7, v8}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 282
    const/4 v4, 0x0

    .line 283
    .local v4, pos:I
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->init(Landroid/content/Context;)V

    .line 284
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS_NEW:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 285
    invoke-direct {p0, v0, v4}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v7

    if-ne v7, v5, :cond_0

    move v1, v5

    .line 287
    .local v1, channelSelected:Z
    :goto_1
    sget-object v7, Lcom/baidu/launcher/utils/BackupAgent;->CHANNEL_IDS_NEW:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7, v1}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->setChannelSubscription(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    add-int/lit8 v4, v4, 0x4

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #channelSelected:Z
    :cond_0
    move v1, v6

    .line 285
    goto :goto_1

    .line 291
    .end local v3           #i:I
    .end local v4           #pos:I
    :catch_0
    move-exception v2

    .line 292
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "BackupAgent"

    const-string v6, "Restore preferences error"

    invoke-static {v5, v6, v2}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private restoreFavourites(Landroid/app/backup/BackupDataInput;)V
    .locals 22
    .parameter "data"

    .prologue
    .line 543
    new-instance v6, Landroid/content/ContentValues;

    sget-object v19, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 544
    .local v6, cv:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v19

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 547
    .local v8, favourites:[B
    const/16 v19, 0x0

    :try_start_0
    array-length v0, v8

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v8, v1, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 549
    const/4 v13, 0x0

    .line 550
    .local v13, pos:I
    const/4 v3, 0x1

    .line 552
    .local v3, added:Z
    :goto_0
    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_5

    .line 553
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 554
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    sget-object v19, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 555
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v12

    .line 556
    .local v12, length:I
    add-int/lit8 v13, v13, 0x4

    .line 558
    sget-object v19, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string v20, "icon"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 560
    new-array v0, v12, [B

    move-object/from16 v18, v0

    .line 561
    .local v18, value:[B
    if-lez v12, :cond_0

    .line 562
    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v8, v13, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    :cond_0
    sget-object v19, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 581
    .end local v18           #value:[B
    :cond_1
    :goto_2
    add-int/2addr v13, v12

    .line 554
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 565
    :cond_2
    sget-object v19, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    aget-object v19, v19, v9

    const-string v20, "screen"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 567
    if-lez v12, :cond_3

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v13, v12}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    .local v18, value:Ljava/lang/String;
    :goto_3
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v15, v19, 0x1

    .line 571
    .local v15, screen:I
    sget-object v19, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    aget-object v19, v19, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 572
    .end local v15           #screen:I
    :catch_0
    move-exception v7

    .line 573
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v19, "BackupAgent"

    const-string v20, "backup file error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    .end local v3           #added:Z
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #i:I
    .end local v12           #length:I
    .end local v13           #pos:I
    .end local v18           #value:Ljava/lang/String;
    :goto_4
    return-void

    .line 567
    .restart local v3       #added:Z
    .restart local v9       #i:I
    .restart local v12       #length:I
    .restart local v13       #pos:I
    :cond_3
    const-string v18, ""

    goto :goto_3

    .line 576
    :cond_4
    if-lez v12, :cond_1

    .line 577
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v13, v12}, Ljava/lang/String;-><init>([BII)V

    .line 578
    .restart local v18       #value:Ljava/lang/String;
    sget-object v19, Lcom/baidu/launcher/utils/BackupAgent;->PROJECTION_FAV:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 656
    .end local v3           #added:Z
    .end local v9           #i:I
    .end local v12           #length:I
    .end local v13           #pos:I
    .end local v18           #value:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 657
    .local v11, ioe:Ljava/io/IOException;
    const-string v19, "BackupAgent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Couldn\'t read entity data "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 658
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 661
    .end local v11           #ioe:Ljava/io/IOException;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_4

    .line 584
    .restart local v3       #added:Z
    .restart local v9       #i:I
    .restart local v13       #pos:I
    :cond_6
    :try_start_3
    const-string v19, "itemType"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 588
    .local v16, type:Ljava/lang/String;
    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 591
    const-string v19, "intent"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v17

    .line 594
    .local v17, uri:Ljava/lang/String;
    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 595
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 596
    .local v4, comp:Landroid/content/ComponentName;
    if-eqz v4, :cond_7

    .line 597
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/baidu/launcher/utils/BackupAgent;->addAppWidget(Landroid/content/ContentValues;Landroid/content/ComponentName;)Z
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v3

    .line 649
    .end local v4           #comp:Landroid/content/ComponentName;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v17           #uri:Ljava/lang/String;
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 650
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 654
    :cond_8
    const/4 v3, 0x1

    .line 655
    goto/16 :goto_0

    .line 603
    :cond_9
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v19

    if-eqz v19, :cond_7

    .line 610
    :cond_a
    const/4 v3, 0x0

    .line 612
    :try_start_6
    const-string v19, "intent"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 616
    .restart local v10       #intent:Landroid/content/Intent;
    if-eqz v10, :cond_7

    .line 617
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 618
    .local v5, componentName:Landroid/content/ComponentName;
    if-eqz v5, :cond_c

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v14

    .line 640
    .local v14, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_b

    const/4 v3, 0x1

    .line 641
    :goto_6
    goto :goto_5

    .line 640
    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    .line 642
    .end local v14           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_c
    const/4 v3, 0x1

    goto :goto_5

    .line 645
    .end local v5           #componentName:Landroid/content/ComponentName;
    .end local v10           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v7

    .line 646
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_5

    .line 599
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v17       #uri:Ljava/lang/String;
    :catch_3
    move-exception v19

    goto :goto_5
.end method

.method private restoreScreens(Landroid/app/backup/BackupDataInput;)V
    .locals 14
    .parameter "data"

    .prologue
    .line 746
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v10

    new-array v8, v10, [B

    .line 747
    .local v8, screenData:[B
    const-string v5, ""

    .line 748
    .local v5, name:Ljava/lang/String;
    const-string v3, ""

    .line 749
    .local v3, intent:Ljava/lang/String;
    const/4 v1, 0x0

    .line 751
    .local v1, doubleClickType:I
    const/4 v10, 0x0

    :try_start_0
    array-length v11, v8

    invoke-virtual {p1, v8, v10, v11}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 752
    const/4 v6, 0x0

    .line 753
    .local v6, pos:I
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    .line 754
    .local v7, screenCount:I
    add-int/lit8 v6, v6, 0x4

    .line 755
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    add-int/lit8 v0, v10, 0x1

    .line 756
    .local v0, defaultScreen:I
    add-int/lit8 v6, v6, 0x4

    .line 757
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v7, v0, v10}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->updateScreenConfig(IILandroid/content/Context;)V

    .line 760
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_0
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    .line 762
    add-int/lit8 v6, v6, 0x4

    .line 763
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    :goto_1
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    .line 765
    add-int/lit8 v6, v6, 0x4

    .line 766
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 767
    add-int/lit8 v6, v6, 0x4

    .line 768
    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    if-ltz v10, :cond_0

    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    const/4 v11, 0x7

    if-lt v10, v11, :cond_1

    .line 770
    :cond_0
    const/4 v10, 0x0

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 772
    :cond_1
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 773
    add-int/lit8 v6, v6, 0x4

    .line 774
    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-ltz v10, :cond_2

    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v11, 0x2

    if-le v10, v11, :cond_3

    .line 776
    :cond_2
    const/4 v10, 0x1

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 779
    :cond_3
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    :goto_2
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    .line 781
    add-int/lit8 v6, v6, 0x4

    .line 785
    const/4 v10, 0x0

    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    .line 786
    add-int/lit8 v6, v6, 0x4

    .line 788
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x47c35000

    div-float/2addr v10, v11

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 790
    add-int/lit8 v6, v6, 0x4

    .line 792
    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    float-to-double v10, v10

    const-wide v12, 0x3fb999999999999aL

    cmpg-double v10, v10, v12

    if-gez v10, :cond_4

    .line 793
    const/high16 v10, 0x3f80

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 795
    :cond_4
    const-string v10, "BackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "icon scale "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const/4 v10, 0x1

    :goto_3
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    .line 799
    add-int/lit8 v6, v6, 0x4

    .line 800
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    const/4 v10, 0x1

    :goto_4
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    .line 802
    add-int/lit8 v6, v6, 0x4

    .line 804
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v1

    .line 805
    add-int/lit8 v6, v6, 0x4

    .line 807
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v4

    .line 808
    .local v4, length:I
    add-int/lit8 v6, v6, 0x4

    .line 809
    if-lez v4, :cond_5

    .line 810
    if-lez v4, :cond_c

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8, v6, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v10

    .line 812
    :cond_5
    :goto_5
    add-int/lit8 v6, v4, 0x34

    .line 814
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v4

    .line 815
    add-int/lit8 v6, v6, 0x4

    .line 816
    if-lez v4, :cond_6

    .line 817
    if-lez v4, :cond_d

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8, v6, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v3, v10

    .line 819
    :cond_6
    :goto_6
    add-int/2addr v6, v4

    .line 821
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v1, v3, v5}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->initDoubleclickGesture(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const/4 v10, 0x1

    :goto_7
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    .line 826
    add-int/lit8 v6, v6, 0x4

    .line 827
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    sput v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    .line 828
    const/4 v10, 0x1

    sput-boolean v10, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    .line 829
    add-int/lit8 v6, v6, 0x4

    .line 830
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    const/4 v10, 0x1

    :goto_8
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    .line 832
    add-int/lit8 v6, v6, 0x4

    .line 833
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/4 v10, 0x1

    :goto_9
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    .line 835
    add-int/lit8 v6, v6, 0x4

    .line 836
    invoke-direct {p0, v8, v6}, Lcom/baidu/launcher/utils/BackupAgent;->readInt([BI)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    const/4 v10, 0x1

    :goto_a
    sput-boolean v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    add-int/lit8 v6, v6, 0x4

    .line 842
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 844
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "loop"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "inter_loop"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "slide_wallpaper"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "show_dockbar_applist_icon"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "show_dockbar_bg"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "show_icon_floor"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "scroll_type"

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "SORT"

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "gesture_up"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "gesture_down"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_type"

    invoke-interface {v10, v11, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_name"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_action"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "applist_background"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "system_persistent"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "applist_alpha"

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .end local v0           #defaultScreen:I
    .end local v4           #length:I
    .end local v6           #pos:I
    .end local v7           #screenCount:I
    :goto_b
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 878
    return-void

    .line 760
    .end local v9           #sp:Landroid/content/SharedPreferences;
    .restart local v0       #defaultScreen:I
    .restart local v6       #pos:I
    .restart local v7       #screenCount:I
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 763
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 779
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 797
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 800
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 810
    .restart local v4       #length:I
    :cond_c
    :try_start_1
    const-string v5, ""

    goto/16 :goto_5

    .line 817
    :cond_d
    const-string v3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 824
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 830
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 833
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 836
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 839
    .end local v0           #defaultScreen:I
    .end local v4           #length:I
    .end local v6           #pos:I
    .end local v7           #screenCount:I
    :catch_0
    move-exception v2

    .line 840
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "BackupAgent"

    const-string v11, "Restore preferences error"

    invoke-static {v10, v11, v2}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 842
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 844
    .restart local v9       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "loop"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "inter_loop"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "slide_wallpaper"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "show_dockbar_applist_icon"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "show_dockbar_bg"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "show_icon_floor"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "scroll_type"

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "SORT"

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "gesture_up"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "gesture_down"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_type"

    invoke-interface {v10, v11, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_name"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "doubleclick_action"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "applist_background"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "system_persistent"

    sget-boolean v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "applist_alpha"

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    goto/16 :goto_b

    .line 842
    .end local v2           #e:Ljava/lang/Exception;
    .end local v9           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 844
    .restart local v9       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "loop"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "inter_loop"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "slide_wallpaper"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "show_dockbar_applist_icon"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "show_dockbar_bg"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "show_icon_floor"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "scroll_type"

    sget v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "SORT"

    sget v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "gesture_up"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureUp:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "gesture_down"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->gestureDown:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "doubleclick_type"

    invoke-interface {v11, v12, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "doubleclick_name"

    invoke-interface {v11, v12, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "doubleclick_action"

    invoke-interface {v11, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "applist_background"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "system_persistent"

    sget-boolean v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "applist_alpha"

    sget v13, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 842
    throw v10
.end method

.method private writeBytes([BI[B)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 900
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 901
    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 7
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 520
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 521
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 523
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 525
    .local v2, newChecksum:J
    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 528
    :try_start_0
    array-length v4, p4

    invoke-virtual {p5, p3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 529
    array-length v4, p4

    invoke-virtual {p5, p4, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_0
    :goto_0
    return-wide v2

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, ioe:Ljava/io/IOException;
    const-string v4, "BackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write change failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private writeInt([BII)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 892
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 893
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 894
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 895
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 896
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "checksums"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 510
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 512
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 513
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 516
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 30
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getFavouritesData()[B

    move-result-object v12

    .line 130
    .local v12, favouritesData:[B
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getScreensData()[B

    move-result-object v7

    .line 131
    .local v7, screensData:[B
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getBulletinSettingsData()[B

    move-result-object v17

    .line 132
    .local v17, bulletinData:[B
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getAppListData()[B

    move-result-object v22

    .line 133
    .local v22, applist:[B
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/utils/BackupAgent;->getBulletinSettingsData_new()[B

    move-result-object v27

    .line 135
    .local v27, bulletinData_new:[B
    invoke-direct/range {p0 .. p1}, Lcom/baidu/launcher/utils/BackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v29

    .line 137
    .local v29, stateChecksums:[J
    const/4 v9, 0x1

    const/4 v3, 0x1

    aget-wide v4, v29, v3

    const-string v6, "screens"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/baidu/launcher/utils/BackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v3

    aput-wide v3, v29, v9

    .line 140
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v29, v3

    .line 142
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-wide v9, v29, v4

    const-string v11, "favourites"

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/baidu/launcher/utils/BackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 146
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v14, v29, v4

    const-string v16, "bulletin"

    move-object/from16 v13, p0

    move-object/from16 v18, p2

    invoke-direct/range {v13 .. v18}, Lcom/baidu/launcher/utils/BackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 150
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget-wide v19, v29, v4

    const-string v21, "allapplist"

    move-object/from16 v18, p0

    move-object/from16 v23, p2

    invoke-direct/range {v18 .. v23}, Lcom/baidu/launcher/utils/BackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 153
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-wide v24, v29, v4

    const-string v26, "bulletin_new"

    move-object/from16 v23, p0

    move-object/from16 v28, p2

    invoke-direct/range {v23 .. v28}, Lcom/baidu/launcher/utils/BackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/utils/BackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 157
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/utils/BackupAgent;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/baidu/launcher/utils/BackupAgent;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 123
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 6
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 163
    const-string v2, "BackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestore ver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v2, 0xc1c

    if-lt p2, v2, :cond_7

    .line 166
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, key:Ljava/lang/String;
    const-string v2, "favourites"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/BackupAgent;->restoreFavourites(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 178
    :cond_1
    const-string v2, "screens"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/BackupAgent;->restoreScreens(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 180
    :cond_2
    const-string v2, "hideapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    const-string v2, "bulletin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/BackupAgent;->restoreBulletinSettings(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 184
    :cond_3
    const-string v2, "allapplist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/BackupAgent;->restoreApplist(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 186
    :cond_4
    const-string v2, "bulletin_new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/BackupAgent;->restoreBulletinSettings_new(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 193
    .end local v1           #key:Ljava/lang/String;
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.launcher.theme.changed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/utils/BackupAgent;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 196
    :cond_7
    iget-object v2, p0, Lcom/baidu/launcher/utils/BackupAgent;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/utils/BackupAgent$1;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/utils/BackupAgent$1;-><init>(Lcom/baidu/launcher/utils/BackupAgent;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
