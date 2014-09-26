.class public Lcom/baidu/launcher/db/LauncherDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/db/LauncherDatabaseHelper$1;,
        Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;,
        Lcom/baidu/launcher/db/LauncherDatabaseHelper$CellComparator;
    }
.end annotation


# static fields
.field private static final CREATE_BULLETINOP_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS bulletinop ( _id INTEGER PRIMARY KEY AUTOINCREMENT,starttime INTEGER,endtime INTEGER,page INTEGER,type INTEGER,action TEXT,uri TEXT,pkgname TEXT,clsname TEXT,extra1 TEXT,extra2 TEXT,extra3 TEXT,intenttype TEXT,content TEXT,contentmd5 TEXT);"

.field private static final CREATE_BUSINESS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS business ( _id INTEGER PRIMARY KEY AUTOINCREMENT,business_id INTEGER,icon_url TEXT,icon BLOB,apk_url TEXT,package_name TEXT,version_name TEXT,version_code INTEGER,description TEXT,rank INTEGER,strategy_id INTEGER,item_type INTEGER,container_id INTEGER INTEGER NOT NULL DEFAULT -1,locate TEXT,title TEXT,spanx INTEGER INTEGER NOT NULL DEFAULT -1,spany INTEGER INTEGER NOT NULL DEFAULT -1);"

.field private static final CREATE_DOWNLOAD_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS download ( _id INTEGER PRIMARY KEY AUTOINCREMENT,file_name TEXT,dest TEXT,url TEXT,mime_type TEXT,total_size INTEGER NOT NULL DEFAULT 0,current_size INTEGER,status INTEGER,download_date INTEGER,title TEXT, description TEXT, wifionly INTEGER NOT NULL DEFAULT -1);"

.field private static final CREATE_STRATEGY_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS strategy ( _id INTEGER PRIMARY KEY AUTOINCREMENT,strategy_key INTEGER,start INTEGER,end INTEGER,channel_id TEXT);"

.field private static final EMPTY_KEY:Ljava/lang/String; = "empty"

.field private static final TAG:Ljava/lang/String; = "LauncherDatabaseHelper"

.field private static final TAG_APPDOCK:Ljava/lang/String; = "appdock"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_BAIDUWIDGET:Ljava/lang/String; = "baiduwidget"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDERAPP:Ljava/lang/String; = "folderapp"

.field private static final TAG_FOLDERS:Ljava/lang/String; = "folders"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private holdPlaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[I>;>;"
        }
    .end annotation
.end field

.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mLastFolderId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 137
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->holdPlaceMap:Ljava/util/HashMap;

    .line 549
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mLastFolderId:J

    .line 138
    iput-object p1, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 140
    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/db/LauncherDatabaseHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/db/LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/db/LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->isDisableEmpty(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/db/LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->loadDisable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/HashMap;)Z
    .locals 10
    .parameter "db"
    .parameter "values"
    .parameter "pkgname"
    .parameter "clsname"
    .parameter "packageManager"
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 599
    .local p7, appsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    move-object v6, p3

    .line 600
    .local v6, packageName:Ljava/lang/String;
    move-object v1, p4

    .line 605
    .local v1, className:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v8, 0x0

    invoke-virtual {p5, v2, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 614
    .local v4, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 615
    const/high16 v8, 0x1020

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 617
    const-string v8, "intent"

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v8, "title"

    invoke-virtual {v4, p5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v8, "itemType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string v8, "spanX"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string v8, "spanY"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    if-eqz p7, :cond_0

    .line 623
    move-object/from16 v0, p7

    invoke-direct {p0, p2, v0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addToMap(Landroid/content/ContentValues;Ljava/util/HashMap;)V

    .line 634
    :goto_1
    const/4 v8, 0x1

    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ActivityInfo;
    :goto_2
    return v8

    .line 607
    :catch_0
    move-exception v5

    .line 608
    .local v5, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {p5, v8}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 610
    .local v7, packages:[Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-direct {v2, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .restart local v2       #cn:Landroid/content/ComponentName;
    const/4 v8, 0x0

    invoke-virtual {p5, v2, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .restart local v4       #info:Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 625
    .end local v5           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #packages:[Ljava/lang/String;
    :cond_0
    const-string v8, "favorites"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 627
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v3

    .line 628
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz p7, :cond_1

    .line 629
    const-string v8, "empty"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 630
    move-object/from16 v0, p7

    invoke-direct {p0, p2, v0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addToMap(Landroid/content/ContentValues;Ljava/util/HashMap;)V

    .line 632
    :cond_1
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 7
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, allocatedAppWidgets:Z
    iget-object v5, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 688
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v5, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 689
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string v5, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string v5, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 694
    .local v4, uri:Landroid/content/Intent;
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 695
    const-string v5, "intent"

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 698
    const/4 v0, 0x1

    .line 699
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v1           #appWidgetId:I
    .end local v4           #uri:Landroid/content/Intent;
    :goto_0
    return v0

    .line 700
    :catch_0
    move-exception v3

    .line 701
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherDatabaseHelper"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v3}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 13
    .parameter "db"
    .parameter "values"
    .parameter "pkgname"
    .parameter "clsname"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "packageManager"

    .prologue
    .line 650
    move-object/from16 v11, p3

    .line 651
    .local v11, packageName:Ljava/lang/String;
    move-object/from16 v7, p4

    .line 653
    .local v7, className:Ljava/lang/String;
    if-eqz v11, :cond_0

    if-nez v7, :cond_1

    .line 654
    :cond_0
    const/4 v1, 0x0

    .line 678
    :goto_0
    return v1

    .line 657
    :cond_1
    const/4 v10, 0x1

    .line 658
    .local v10, hasPackage:Z
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v11, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_1
    if-eqz v10, :cond_4

    .line 673
    if-eqz p5, :cond_2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 674
    .local v5, spanXX:I
    :goto_2
    if-eqz p6, :cond_3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, spanYY:I
    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 675
    invoke-direct/range {v1 .. v6}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v1

    goto :goto_0

    .line 661
    .end local v5           #spanXX:I
    .end local v6           #spanYY:I
    :catch_0
    move-exception v8

    .line 662
    .local v8, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 664
    .local v12, packages:[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-direct {v4, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .restart local v4       #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 667
    :catch_1
    move-exception v9

    .line 668
    .local v9, e1:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1

    .line 673
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e1:Ljava/lang/Exception;
    .end local v12           #packages:[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 674
    .restart local v5       #spanXX:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 678
    .end local v5           #spanXX:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addBaiduWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "db"
    .parameter "values"
    .parameter "widgetID"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 329
    if-nez p3, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 339
    :goto_0
    return v1

    .line 332
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, baiduWidgetId:I
    const-string v1, "itemType"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v1, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v1, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v1, "appWidgetId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 339
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private addFolderApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 11
    .parameter "db"
    .parameter "values"
    .parameter "pkgname"
    .parameter "clsname"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    .line 564
    move-object v6, p3

    .line 565
    .local v6, packageName:Ljava/lang/String;
    move-object v1, p4

    .line 569
    .local v1, className:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v8, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 578
    .local v4, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 579
    const/high16 v8, 0x1020

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 581
    const-string v8, "intent"

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v8, "title"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v8, "itemType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v8, "spanX"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    const-string v8, "spanY"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    const-string v8, "container"

    iget-wide v9, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mLastFolderId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 588
    const-string v8, "favorites"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 592
    const/4 v8, 0x1

    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ActivityInfo;
    :goto_1
    return v8

    .line 571
    :catch_0
    move-exception v5

    .line 572
    .local v5, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 574
    .local v7, packages:[Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-direct {v2, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .restart local v2       #cn:Landroid/content/ComponentName;
    const/4 v8, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4       #info:Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 589
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ActivityInfo;
    .end local v5           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #packages:[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 590
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private addFolders(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 3
    .parameter "db"
    .parameter "values"
    .parameter "title"

    .prologue
    const/4 v2, 0x1

    .line 552
    const-string v0, "title"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v0, "itemType"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v0, "spanX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string v0, "spanY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    const-string v0, "favorites"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mLastFolderId:J

    .line 557
    return v2
.end method

.method private addHoldPlace(Ljava/lang/Integer;IIII)V
    .locals 3
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->holdPlaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 470
    .local v0, holdPlace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    const/4 v2, 0x4

    new-array v1, v2, [I

    .line 471
    .local v1, place:[I
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 472
    const/4 v2, 0x1

    aput p3, v1, v2

    .line 473
    const/4 v2, 0x2

    aput p4, v1, v2

    .line 474
    const/4 v2, 0x3

    aput p5, v1, v2

    .line 475
    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #holdPlace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .restart local v0       #holdPlace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v2, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->holdPlaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addToMap(Landroid/content/ContentValues;Ljava/util/HashMap;)V
    .locals 3
    .parameter "values"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p2, appsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    const-string v2, "screen"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 639
    .local v1, screen:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 640
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez v0, :cond_0

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .restart local v0       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "icon"
    .parameter "title"
    .parameter "uri_f"
    .parameter "isShortcut"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 709
    iget-object v7, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 711
    .local v2, r:Landroid/content/res/Resources;
    const-string v7, "string"

    iget-object v8, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 714
    .local v3, titleResId:I
    const/4 v4, 0x0

    .line 716
    .local v4, uri:Ljava/lang/String;
    move-object v4, p5

    .line 717
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v4, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 723
    .local v1, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    if-nez p3, :cond_1

    .line 724
    :cond_0
    const-string v6, "LauncherDatabaseHelper"

    const-string v7, "Shortcut is missing title or icon resource ID"

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v5

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v6, "LauncherDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut has malformed uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 728
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 729
    const-string v7, "intent"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v7, "title"

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v7, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    const-string v7, "spanX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    const-string v7, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    const-string v7, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    const-string v7, "iconPackage"

    iget-object v8, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v7, "iconResource"

    invoke-virtual {p2, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v7, "isShortcut"

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string v5, "favorites"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v5, v6

    .line 742
    goto :goto_0
.end method

.method private isDisableEmpty(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .parameter "db"

    .prologue
    .line 208
    const/4 v8, 0x0

    .line 209
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x1

    .line 212
    .local v10, ret:Z
    :try_start_0
    const-string v1, "disable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 214
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 215
    const/4 v10, 0x0

    .line 223
    :cond_0
    if-eqz v8, :cond_1

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_1
    :goto_0
    return v10

    .line 218
    :catch_0
    move-exception v9

    .line 219
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const-string v0, "LauncherDatabaseHelper"

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    if-eqz v8, :cond_1

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 223
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isFavoritesEmpty(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .parameter "db"

    .prologue
    .line 232
    const/4 v8, 0x0

    .line 233
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x1

    .line 236
    .local v10, ret:Z
    :try_start_0
    const-string v1, "favorites"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 238
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 239
    const/4 v10, 0x0

    .line 247
    :cond_0
    if-eqz v8, :cond_1

    .line 248
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_1
    :goto_0
    return v10

    .line 242
    :catch_0
    move-exception v9

    .line 243
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const-string v0, "LauncherDatabaseHelper"

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    if-eqz v8, :cond_1

    .line 248
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 247
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 248
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private loadDisable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 745
    iget-object v7, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 746
    .local v4, manager:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 753
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 754
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 755
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    .line 756
    .local v6, state:I
    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 768
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 771
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v6           #state:I
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.baidu.appdisable.action.PACKAGES_DISABLE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "PACKAGES_DISABLE_MAP"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 773
    iget-object v7, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    return-void
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 35
    .parameter "db"

    .prologue
    .line 348
    new-instance v9, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    .local v9, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 351
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/lit8 v29, v3, -0x4

    .line 353
    .local v29, offset:I
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v10, appsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    const/16 v30, 0x0

    .line 355
    .local v30, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v26, Ljava/io/File;

    const-string v3, "system/etc/baidu/BaiduLauncher/configuration/default_workspace.xml"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v26, file:Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 357
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v30

    .line 358
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "system/etc/baidu/BaiduLauncher/configuration/default_workspace.xml"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 362
    :goto_0
    const-string v3, "favorites"

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 363
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    .line 368
    .local v24, depth:I
    :cond_0
    :goto_1
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .local v34, type:I
    const/4 v3, 0x3

    move/from16 v0, v34

    if-ne v0, v3, :cond_1

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v24

    if-le v3, v0, :cond_d

    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_d

    .line 369
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_0

    .line 372
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 373
    .local v28, name:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v5, values:Landroid/content/ContentValues;
    const-string v3, "container"

    const/16 v4, -0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const/4 v3, 0x0

    const-string v4, "screen"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 376
    .local v31, screen:I
    const/4 v3, 0x0

    const-string v4, "x"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 377
    .local v13, cellX:I
    const/4 v3, 0x0

    const-string v4, "y"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 378
    .local v14, cellY:I
    const-string v3, "screen"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v3, "cellX"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v3, "cellY"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v3, "favorite"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 382
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKJB()Z

    move-result v3

    if-nez v3, :cond_0

    .line 385
    :cond_2
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.BaiduMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 388
    :cond_3
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/HashMap;)Z

    .line 394
    const-string v3, "cellY"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 452
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #appsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v13           #cellX:I
    .end local v14           #cellY:I
    .end local v24           #depth:I
    .end local v26           #file:Ljava/io/File;
    .end local v28           #name:Ljava/lang/String;
    .end local v30           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v31           #screen:I
    .end local v34           #type:I
    :catch_0
    move-exception v25

    .line 453
    .local v25, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "LauncherDatabaseHelper"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    .end local v25           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    return-void

    .line 360
    .restart local v10       #appsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v26       #file:Ljava/io/File;
    .restart local v30       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v30

    goto/16 :goto_0

    .line 396
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v13       #cellX:I
    .restart local v14       #cellY:I
    .restart local v24       #depth:I
    .restart local v28       #name:Ljava/lang/String;
    .restart local v31       #screen:I
    .restart local v34       #type:I
    :cond_5
    const-string v3, "folderapp"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 397
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 400
    :cond_6
    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addHoldPlace(Ljava/lang/Integer;IIII)V

    .line 401
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addFolderApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 454
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #appsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .end local v13           #cellX:I
    .end local v14           #cellY:I
    .end local v24           #depth:I
    .end local v26           #file:Ljava/io/File;
    .end local v28           #name:Ljava/lang/String;
    .end local v30           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v31           #screen:I
    .end local v34           #type:I
    :catch_1
    move-exception v25

    .line 455
    .local v25, e:Ljava/io/IOException;
    const-string v3, "LauncherDatabaseHelper"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 403
    .end local v25           #e:Ljava/io/IOException;
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v10       #appsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentValues;>;>;"
    .restart local v13       #cellX:I
    .restart local v14       #cellY:I
    .restart local v24       #depth:I
    .restart local v26       #file:Ljava/io/File;
    .restart local v28       #name:Ljava/lang/String;
    .restart local v30       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31       #screen:I
    .restart local v34       #type:I
    :cond_7
    :try_start_2
    const-string v3, "folders"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 404
    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addHoldPlace(Ljava/lang/Integer;IIII)V

    .line 405
    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v3}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addFolders(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 406
    :cond_8
    const-string v3, "appwidget"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 408
    const/16 v33, 0x1

    .line 409
    .local v33, shouldAddWidget:Z
    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.launcher.searchbar.BaiduSearchWidgetProvider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.baidu.home2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 411
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKJB()Z

    move-result v3

    if-nez v3, :cond_9

    .line 412
    const/16 v33, 0x0

    .line 415
    :cond_9
    if-eqz v33, :cond_0

    .line 416
    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addHoldPlace(Ljava/lang/Integer;IIII)V

    .line 418
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move-object/from16 v22, v8

    invoke-direct/range {v15 .. v22}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    goto/16 :goto_1

    .line 421
    .end local v33           #shouldAddWidget:Z
    :cond_a
    const-string v3, "shortcut"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 422
    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addHoldPlace(Ljava/lang/Integer;IIII)V

    .line 423
    const/4 v3, 0x0

    const-string v4, "icon"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x0

    const-string v4, "uri"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v3, 0x0

    const-string v4, "isShortcut"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v21}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 425
    :cond_b
    const-string v3, "appdock"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 426
    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addHoldPlace(Ljava/lang/Integer;IIII)V

    .line 427
    const-string v3, "container"

    const/16 v4, -0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v22}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/HashMap;)Z

    goto/16 :goto_1

    .line 430
    :cond_c
    const-string v3, "baiduwidget"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    const-string v3, "cellY"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    new-instance v12, Ljava/lang/Integer;

    move/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addHoldPlace(Ljava/lang/Integer;IIII)V

    .line 440
    const/4 v3, 0x0

    const-string v4, "widgetID"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, v30

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v20}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->addBaiduWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 444
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v13           #cellX:I
    .end local v14           #cellY:I
    .end local v28           #name:Ljava/lang/String;
    .end local v31           #screen:I
    :cond_d
    new-instance v23, Lcom/baidu/launcher/db/LauncherDatabaseHelper$CellComparator;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$CellComparator;-><init>(Lcom/baidu/launcher/db/LauncherDatabaseHelper$1;)V

    .line 445
    .local v23, comparator:Lcom/baidu/launcher/db/LauncherDatabaseHelper$CellComparator;
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 446
    .local v32, scrn:I
    const-string v3, "LauncherDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logaaa scrn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->holdPlaceMap:Ljava/util/HashMap;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->reorderItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/util/Comparator;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 451
    .end local v32           #scrn:I
    :cond_e
    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method private reorderItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/util/Comparator;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "db"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/content/ContentValues;>;"
    .local p4, holdPlace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-static {p2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 488
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 489
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "cellX"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 490
    .local v0, cellX:I
    const-string v8, "cellY"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 491
    .local v1, cellY:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 492
    .local v2, cv:Landroid/content/ContentValues;
    const-string v8, "LauncherDatabaseHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "logaaa title  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cellX  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  cellY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v8, "empty"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 494
    .local v3, empty:Ljava/lang/Boolean;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    .line 495
    :cond_3
    const-string v8, "cellX"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v8, "cellY"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v8, "favorites"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 498
    add-int/lit8 v0, v0, 0x1

    .line 500
    sget v8, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    const/4 v9, 0x3

    if-le v8, v9, :cond_6

    sget v8, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    :goto_1
    if-lt v0, v8, :cond_4

    .line 501
    const/4 v0, 0x0

    .line 502
    add-int/lit8 v1, v1, 0x1

    .line 503
    sget v8, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    const/4 v9, 0x3

    if-le v8, v9, :cond_7

    sget v8, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    :goto_2
    if-ge v1, v8, :cond_0

    .line 508
    :cond_4
    if-eqz p4, :cond_2

    .line 509
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 510
    .local v6, p:[I
    const/4 v8, 0x0

    aget v8, v6, v8

    if-ne v0, v8, :cond_5

    const/4 v8, 0x1

    aget v8, v6, v8

    if-ne v1, v8, :cond_5

    .line 511
    const/4 v8, 0x2

    aget v8, v6, v8

    add-int/2addr v0, v8

    .line 512
    sget v8, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    const/4 v9, 0x3

    if-le v8, v9, :cond_8

    sget v8, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    :goto_3
    if-lt v0, v8, :cond_5

    .line 513
    const/4 v0, 0x0

    .line 514
    const/4 v8, 0x3

    aget v8, v6, v8

    add-int/2addr v1, v8

    .line 515
    sget v8, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    const/4 v9, 0x3

    if-le v8, v9, :cond_9

    sget v8, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    :goto_4
    if-lt v1, v8, :cond_5

    goto/16 :goto_0

    .line 500
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #p:[I
    :cond_6
    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    goto :goto_1

    .line 503
    :cond_7
    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    goto :goto_2

    .line 512
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #p:[I
    :cond_8
    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    goto :goto_3

    .line 515
    :cond_9
    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    goto :goto_4
.end method

.method private upgradeDatabaseToVersion16(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 311
    const-string v0, "CREATE TABLE IF NOT EXISTS disable (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,package TEXT,icon BLOB,itemType INTEGER,activity TEXT,isDisable INTEGER,visible INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKJB()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const-string v0, "delete from favorites where intent=\'#Intent;component=com.baidu.home2/com.baidu.launcher.searchbar.BaiduSearchWidgetProvider;end\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 144
    const-string v0, "CREATE TABLE IF NOT EXISTS favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,isPreset INTEGER,presetID INTEGER NOT NULL DEFAULT -1,clickCount INTEGER NOT NULL DEFAULT 0,strategy_table_id INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "CREATE TABLE IF NOT EXISTS event_number(componentName varchar, eventCount integer,  pendingIntent blob);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "CREATE TABLE IF NOT EXISTS disable (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,package TEXT,icon BLOB,itemType INTEGER,activity TEXT,isDisable INTEGER,visible INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "CREATE TABLE IF NOT EXISTS allapplist (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,container INTEGER,sort_index INTEGER,visible INTEGER,isPreset INTEGER,presetID INTEGER NOT NULL DEFAULT -1,clickCount INTEGER NOT NULL DEFAULT 0,strategy_table_id INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string v0, "CREATE TABLE IF NOT EXISTS download ( _id INTEGER PRIMARY KEY AUTOINCREMENT,file_name TEXT,dest TEXT,url TEXT,mime_type TEXT,total_size INTEGER NOT NULL DEFAULT 0,current_size INTEGER,status INTEGER,download_date INTEGER,title TEXT, description TEXT, wifionly INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v0, "CREATE TABLE IF NOT EXISTS bulletinop ( _id INTEGER PRIMARY KEY AUTOINCREMENT,starttime INTEGER,endtime INTEGER,page INTEGER,type INTEGER,action TEXT,uri TEXT,pkgname TEXT,clsname TEXT,extra1 TEXT,extra2 TEXT,extra3 TEXT,intenttype TEXT,content TEXT,contentmd5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->isFavoritesEmpty(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;-><init>(Lcom/baidu/launcher/db/LauncherDatabaseHelper;Lcom/baidu/launcher/db/LauncherDatabaseHelper$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v3, 0xf

    .line 257
    move v1, p2

    .line 259
    .local v1, version:I
    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 261
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    const-string v2, "DROP TABLE IF EXISTS allapplist"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    iget-object v2, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/utils/Utilities;->updateOldVersionToBulletin(Landroid/content/Context;)V

    .line 266
    const/16 v1, 0xe

    .line 269
    :cond_0
    if-ge v1, v3, :cond_1

    .line 270
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 271
    const/16 v1, 0xf

    .line 274
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 292
    :cond_2
    :goto_0
    return-void

    .line 276
    :pswitch_0
    if-le p3, v3, :cond_2

    .line 280
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 282
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->upgradeDatabaseToVersion16(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 283
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "LauncherDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 274
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method
