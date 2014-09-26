.class public Lcom/baidu/launcher/data/AppsDataManager;
.super Landroid/content/BroadcastReceiver;
.source "AppsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;,
        Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;,
        Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;,
        Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    }
.end annotation


# static fields
.field public static final APP_DEFAULT_CONFIGURATION_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_FREQUENCY_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENQUEUE_PACKAGE:I = -0x2

.field private static final TAG:Ljava/lang/String; = "AppsDataManager"

.field private static installTime:J

.field private static mAppContext:Landroid/content/Context;

.field private static mInstance:Lcom/baidu/launcher/data/AppsDataManager;

.field private static final mLock:Ljava/lang/Object;

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

.field private mAllFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllWidgetsList:Lcom/baidu/launcher/data/AllWidgetsList;

.field private mAppsLoaded:Z

.field private mHander:Landroid/os/Handler;

.field private mIconCache:Lcom/baidu/launcher/data/IconCache;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPresetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/launcher/data/AppsDataManager;->installTime:J

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "apps-data-manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    .line 143
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 145
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/baidu/launcher/data/AppsDataManager$1;

    invoke-direct {v0}, Lcom/baidu/launcher/data/AppsDataManager$1;-><init>()V

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->APP_DEFAULT_CONFIGURATION_COMPARATOR:Ljava/util/Comparator;

    .line 177
    new-instance v0, Lcom/baidu/launcher/data/AppsDataManager$2;

    invoke-direct {v0}, Lcom/baidu/launcher/data/AppsDataManager$2;-><init>()V

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 208
    new-instance v0, Lcom/baidu/launcher/data/AppsDataManager$3;

    invoke-direct {v0}, Lcom/baidu/launcher/data/AppsDataManager$3;-><init>()V

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->APP_FREQUENCY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "aContext"

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 136
    iput-boolean v2, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAppsLoaded:Z

    .line 841
    new-instance v0, Lcom/baidu/launcher/data/AppsDataManager$5;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/data/AppsDataManager$5;-><init>(Lcom/baidu/launcher/data/AppsDataManager;)V

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mHander:Landroid/os/Handler;

    .line 1499
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "business._id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apk_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "strategy_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "strategy.start"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->projection:[Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    .line 256
    invoke-static {p1}, Lcom/baidu/launcher/data/IconCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    .line 257
    new-instance v0, Lcom/baidu/launcher/data/AllAppsList;

    iget-object v1, p0, Lcom/baidu/launcher/data/AppsDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/AllAppsList;-><init>(Lcom/baidu/launcher/data/IconCache;)V

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    .line 258
    new-instance v0, Lcom/baidu/launcher/data/AllWidgetsList;

    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/AllWidgetsList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllWidgetsList:Lcom/baidu/launcher/data/AllWidgetsList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    .line 263
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/baidu/launcher/data/AppsDataManager;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mInstance:Lcom/baidu/launcher/data/AppsDataManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/data/AppsDataManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/baidu/launcher/data/AppsDataManager;->downgradeFolders()V

    return-void
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager;->notifyBusinessChanged(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/data/AppsDataManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/baidu/launcher/data/AppsDataManager;->loadPresetItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/data/AppsDataManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/data/AppsDataManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/baidu/launcher/data/AppsDataManager;->loadAllApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager;->notifyChange(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/IconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/data/AppsDataManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/data/AppsDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager;->doAddItemToDataBase(Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    return-void
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 58
    sget-wide v0, Lcom/baidu/launcher/data/AppsDataManager;->installTime:J

    return-wide v0
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private doAddItemToDataBase(Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 3
    .parameter "values"
    .parameter "item"

    .prologue
    .line 1035
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1036
    .local v0, result:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1037
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    .line 1039
    :cond_0
    return-void
.end method

.method private downgradeFolders()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1394
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1395
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 1396
    .local v1, item:Lcom/baidu/launcher/data/item/ListItemInfo;
    instance-of v3, v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_0

    .line 1397
    iget-wide v3, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    invoke-direct {p0, v3, v4}, Lcom/baidu/launcher/data/AppsDataManager;->isDowngrade(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1398
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1399
    const-string v3, "isPreset"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    iput-boolean v6, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    .line 1401
    sget-object v3, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-wide v4, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    invoke-static {v4, v5, v6}, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1405
    .end local v1           #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_1
    return-void
.end method

.method private findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/ListFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;",
            ">;J)",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1458
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1459
    .local v0, folderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-nez v1, :cond_1

    .line 1461
    :cond_0
    new-instance v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local v0           #folderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    invoke-direct {v0}, Lcom/baidu/launcher/data/item/ListFolderInfo;-><init>()V

    .line 1462
    .restart local v0       #folderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_1
    return-object v0
.end method

.method private getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-nez v0, :cond_0

    .line 554
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 556
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getComparator(Landroid/content/pm/PackageManager;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0
.end method

.method public static getComparator(Landroid/content/pm/PackageManager;)Ljava/util/Comparator;
    .locals 1
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1162
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->COMPARATOR:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 1163
    new-instance v0, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/data/AppsDataManager$BaiduApplistInfoComparator;-><init>(Landroid/content/pm/PackageManager;)V

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->COMPARATOR:Ljava/util/Comparator;

    .line 1165
    :cond_0
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1469
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1471
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1473
    :goto_0
    return-object v2

    .line 1472
    :catch_0
    move-exception v1

    .line 1473
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getInfoFromBusiness(Lcom/baidu/launcher/data/item/ListItemInfo;J)V
    .locals 9
    .parameter "item"
    .parameter "presetID"

    .prologue
    const/4 v4, 0x0

    .line 1415
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 1416
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "package_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "icon"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "apk_url"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "description"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "strategy_key"

    aput-object v1, v2, v0

    .line 1424
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "business._id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1428
    .local v6, businessCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    :try_start_0
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1432
    .local v8, businessPackageIndex:I
    const-string v0, "icon"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1434
    .local v7, businessIconIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->dependPackage:Ljava/lang/String;

    .line 1435
    invoke-direct {p0, v6, v7}, Lcom/baidu/launcher/data/AppsDataManager;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1437
    const-string v0, "apk_url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->businessURL:Ljava/lang/String;

    .line 1439
    const-string v0, "description"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->businessDescription:Ljava/lang/String;

    .line 1441
    const-string v0, "strategy_key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->businessStrategyKey:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    .end local v7           #businessIconIndex:I
    .end local v8           #businessPackageIndex:I
    :goto_0
    if-eqz v6, :cond_0

    .line 1450
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1453
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 1454
    return-void

    .line 1446
    :cond_1
    const-string v0, "AppsDataManager"

    const-string v1, "cursor is NULL or can NOT move to first"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1443
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;
    .locals 3
    .parameter "aContext"

    .prologue
    .line 242
    const-class v1, Lcom/baidu/launcher/data/AppsDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mInstance:Lcom/baidu/launcher/data/AppsDataManager;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/baidu/launcher/data/AppsDataManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/data/AppsDataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mInstance:Lcom/baidu/launcher/data/AppsDataManager;

    .line 244
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/AppsDataManager$4;

    invoke-direct {v2}, Lcom/baidu/launcher/data/AppsDataManager$4;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    :cond_0
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mInstance:Lcom/baidu/launcher/data/AppsDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initItemDatabase(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1091
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const-string v4, "AppsDataManager"

    const-string v5, "====>initItemDatabase()"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1093
    .local v2, size:I
    const/4 v1, 0x0

    .line 1095
    .local v1, result:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1096
    .local v3, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1098
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    iput v0, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 1099
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    sget-object v5, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lcom/baidu/launcher/data/item/ListAppInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 1100
    sget-object v4, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1101
    if-eqz v1, :cond_0

    .line 1102
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    .line 1096
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    return-void
.end method

.method private isDowngrade(J)Z
    .locals 10
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1560
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "isPreset"

    aput-object v0, v2, v9

    .line 1562
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1564
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    :try_start_0
    const-string v0, "isPreset"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1567
    .local v7, presettype:I
    const/16 v0, 0x3e8

    if-ne v0, v7, :cond_0

    .line 1571
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1577
    .end local v7           #presettype:I
    :goto_0
    return v0

    .line 1571
    .restart local v7       #presettype:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1574
    .end local v7           #presettype:I
    :cond_1
    if-eqz v6, :cond_2

    .line 1575
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    .line 1577
    goto :goto_0

    .line 1571
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private loadAllApps()V
    .locals 26

    .prologue
    .line 411
    sget-object v21, Lcom/baidu/launcher/data/AppsDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v21

    .line 412
    :try_start_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAppsLoaded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 414
    const-string v20, "AppsDataManager"

    const-string v22, "already loaded, leave directly"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 416
    monitor-exit v21

    .line 529
    :goto_0
    return-void

    .line 419
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/data/AllAppsList;->clear()V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/data/AppsDataManager;->loadPresetItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 425
    .local v11, exceedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v19, savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/AppsDataManager;->loadSavedData(Ljava/util/ArrayList;)V

    .line 428
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 429
    .local v6, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    iget-wide v0, v6, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/data/AppsDataManager;->findSavedFolder(Ljava/util/ArrayList;J)Lcom/baidu/launcher/data/item/ListFolderInfo;

    move-result-object v12

    .line 430
    .local v12, folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    if-eqz v12, :cond_1

    .line 431
    invoke-virtual {v12, v6}, Lcom/baidu/launcher/data/item/ListFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    goto :goto_1

    .line 528
    .end local v6           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v11           #exceedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v12           #folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 434
    .restart local v11       #exceedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v19       #savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    :cond_2
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v5, allFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 438
    .local v15, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    instance-of v0, v15, Lcom/baidu/launcher/data/item/ListFolderInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 439
    check-cast v15, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local v15           #info:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 443
    :cond_4
    new-instance v16, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 444
    .local v16, mainIntent:Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    sget-object v20, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 447
    .local v17, packageManager:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 449
    .local v8, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_5

    .line 450
    const-string v20, "AppsDataManager"

    const-string v22, "apps is NULL"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 452
    monitor-exit v21

    goto/16 :goto_0

    .line 455
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 456
    .local v4, N:I
    if-nez v4, :cond_6

    .line 457
    const-string v20, "AppsDataManager"

    const-string v22, "NO Apps in the PHONE !!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 459
    monitor-exit v21

    goto/16 :goto_0

    .line 462
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_a

    .line 463
    const-string v20, "AppsDataManager"

    const-string v22, "we have saved apps"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v4, :cond_e

    .line 466
    new-instance v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/baidu/launcher/data/IconCache;)V

    .line 468
    .local v7, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/data/AppsDataManager;->findSavedApp(Ljava/util/ArrayList;Landroid/content/ComponentName;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v18

    .line 470
    .local v18, saved:Lcom/baidu/launcher/data/item/ListAppInfo;
    if-eqz v18, :cond_8

    .line 471
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    .line 472
    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 475
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    move/from16 v20, v0

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    .line 476
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    move/from16 v20, v0

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    .line 477
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    .line 478
    move-object/from16 v0, v18

    iget v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 479
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 480
    iget-wide v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x3e8

    cmp-long v20, v22, v24

    if-eqz v20, :cond_7

    .line 481
    iget-wide v0, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/baidu/launcher/data/AppsDataManager;->findSavedFolder(Ljava/util/ArrayList;J)Lcom/baidu/launcher/data/item/ListFolderInfo;

    move-result-object v12

    .line 483
    .restart local v12       #folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    if-eqz v12, :cond_7

    .line 484
    invoke-virtual {v12, v7}, Lcom/baidu/launcher/data/item/ListFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 487
    .end local v12           #folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 491
    :cond_8
    invoke-static {v7}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->filterAppInfo(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/baidu/launcher/data/AllAppsList;->add(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    .line 464
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 504
    .end local v7           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v13           #i:I
    .end local v18           #saved:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_a
    const-string v20, "AppsDataManager"

    const-string v22, "NO saved apps"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 506
    .local v9, curtime:J
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    if-ge v13, v4, :cond_c

    .line 508
    new-instance v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/baidu/launcher/data/IconCache;)V

    .line 512
    .restart local v7       #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-static {v7}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->filterAppInfo(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/baidu/launcher/data/AllAppsList;->add(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    .line 506
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 518
    .end local v7           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/data/AppsDataManager;->reorderApplistfForTopLauncher()V

    .line 520
    sget v20, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/data/AppsDataManager;->getComparator()Ljava/util/Comparator;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/AppsDataManager;->initItemDatabase(Ljava/util/ArrayList;)V

    .line 525
    .end local v9           #curtime:J
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/baidu/launcher/data/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 526
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppsLoaded:Z

    .line 527
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 528
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private loadPresetItems()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1294
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1296
    sget-object v4, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "isPreset=1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1299
    .local v10, c:Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    .local v12, exceedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1302
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1303
    .local v15, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1304
    .local v19, idIndex:I
    const-string v4, "title"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 1305
    .local v27, titleIndex:I
    const-string v4, "container"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1306
    .local v11, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1307
    .local v22, itemTypeIndex:I
    const-string v4, "sort_index"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1308
    .local v26, sortIndex:I
    const-string v4, "presetID"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 1309
    .local v25, presetIDIndex:I
    const-string v4, "visible"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 1314
    .local v28, visibleIndex:I
    :cond_0
    :try_start_0
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1315
    .local v21, itemType:I
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1316
    .local v17, id:J
    const/16 v4, 0xb

    move/from16 v0, v21

    if-ne v0, v4, :cond_4

    .line 1317
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v15, v1, v2}, Lcom/baidu/launcher/data/AppsDataManager;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/ListFolderInfo;

    move-result-object v20

    .line 1321
    .local v20, item:Lcom/baidu/launcher/data/item/ListItemInfo;
    :goto_0
    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1322
    .local v23, presetID:J
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInfoFromBusiness(Lcom/baidu/launcher/data/item/ListItemInfo;J)V

    .line 1323
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    const/16 v4, 0xb

    move/from16 v0, v21

    if-eq v0, v4, :cond_5

    .line 1344
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1345
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1346
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1347
    .local v13, folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1348
    invoke-virtual {v13}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1350
    .end local v13           #folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #id:J
    .end local v20           #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v21           #itemType:I
    .end local v23           #presetID:J
    :catch_0
    move-exception v4

    .line 1357
    .end local v11           #containerIndex:I
    .end local v15           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    .end local v19           #idIndex:I
    .end local v22           #itemTypeIndex:I
    .end local v25           #presetIDIndex:I
    .end local v26           #sortIndex:I
    .end local v27           #titleIndex:I
    .end local v28           #visibleIndex:I
    :cond_2
    :goto_3
    if-eqz v10, :cond_3

    .line 1358
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1361
    :cond_3
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 1362
    return-object v12

    .line 1319
    .restart local v11       #containerIndex:I
    .restart local v15       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    .restart local v17       #id:J
    .restart local v19       #idIndex:I
    .restart local v21       #itemType:I
    .restart local v22       #itemTypeIndex:I
    .restart local v25       #presetIDIndex:I
    .restart local v26       #sortIndex:I
    .restart local v27       #titleIndex:I
    .restart local v28       #visibleIndex:I
    :cond_4
    :try_start_1
    new-instance v20, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct/range {v20 .. v20}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>()V

    .restart local v20       #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    goto :goto_0

    .line 1324
    .restart local v23       #presetID:J
    :cond_5
    move-wide/from16 v0, v17

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    .line 1325
    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->title:Ljava/lang/CharSequence;

    .line 1326
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    .line 1327
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    .line 1328
    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 1329
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    .line 1330
    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->businessTableID:J

    .line 1331
    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    .line 1332
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    .line 1334
    const-string v4, "AppsDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preset id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->businessTableID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    const-wide/16 v6, -0x3e8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 1338
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v5}, Lcom/baidu/launcher/data/AppsDataManager;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/ListFolderInfo;

    move-result-object v14

    .line 1340
    .local v14, folderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/baidu/launcher/data/item/ListFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    goto/16 :goto_1

    .line 1331
    .end local v14           #folderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 1342
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1354
    .end local v11           #containerIndex:I
    .end local v15           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    .end local v17           #id:J
    .end local v19           #idIndex:I
    .end local v20           #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v21           #itemType:I
    .end local v22           #itemTypeIndex:I
    .end local v23           #presetID:J
    .end local v25           #presetIDIndex:I
    .end local v26           #sortIndex:I
    .end local v27           #titleIndex:I
    .end local v28           #visibleIndex:I
    :cond_8
    const-string v4, "AppsDataManager"

    const-string v5, "cursor is NULL or can NOT move to first"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private loadSavedData(Ljava/util/ArrayList;)V
    .locals 29
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 561
    sget-object v2, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 562
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "isPreset<1 or isPreset is null"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 565
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 567
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 568
    .local v17, idIndex:I
    const-string v2, "sort_index"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 569
    .local v26, sortIndex:I
    const-string v2, "intent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 570
    .local v20, intentIndex:I
    const-string v2, "title"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 571
    .local v27, titleIndex:I
    const-string v2, "container"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 572
    .local v15, containerIndex:I
    const-string v2, "itemType"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 573
    .local v22, itemTypeIndex:I
    const-string v2, "visible"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 574
    .local v28, visibleIndex:I
    const-string v2, "clickCount"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 575
    .local v11, clickCountIndex:I
    const-string v2, "presetID"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 585
    .local v25, presetIDIndex:I
    :cond_0
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 587
    .local v21, itemType:I
    sparse-switch v21, :sswitch_data_0

    .line 656
    :cond_1
    :goto_0
    :sswitch_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 665
    .end local v11           #clickCountIndex:I
    .end local v15           #containerIndex:I
    .end local v17           #idIndex:I
    .end local v20           #intentIndex:I
    .end local v21           #itemType:I
    .end local v22           #itemTypeIndex:I
    .end local v25           #presetIDIndex:I
    .end local v26           #sortIndex:I
    .end local v27           #titleIndex:I
    .end local v28           #visibleIndex:I
    :goto_1
    if-eqz v8, :cond_2

    .line 666
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 668
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 669
    return-void

    .line 589
    .restart local v11       #clickCountIndex:I
    .restart local v15       #containerIndex:I
    .restart local v17       #idIndex:I
    .restart local v20       #intentIndex:I
    .restart local v21       #itemType:I
    .restart local v22       #itemTypeIndex:I
    .restart local v25       #presetIDIndex:I
    .restart local v26       #sortIndex:I
    .restart local v27       #titleIndex:I
    .restart local v28       #visibleIndex:I
    :sswitch_1
    :try_start_1
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .line 591
    .local v19, intentDescription:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    .line 595
    .local v18, intent:Landroid/content/Intent;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 596
    .local v12, componentName:Landroid/content/ComponentName;
    if-eqz v12, :cond_1

    .line 598
    new-instance v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct {v7}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>()V

    .line 599
    .local v7, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    .line 600
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 601
    .local v14, container:I
    int-to-long v2, v14

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 602
    iput-object v12, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 603
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 604
    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    .line 605
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 606
    .local v9, clickCount:I
    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 607
    .local v23, presetID:I
    move/from16 v0, v23

    int-to-long v2, v0

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    .line 608
    int-to-long v2, v9

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 609
    const/4 v2, 0x1

    if-ge v9, v2, :cond_3

    const/4 v2, -0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_3

    .line 610
    const/4 v2, 0x3

    iput v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 613
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 658
    .end local v7           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v9           #clickCount:I
    .end local v11           #clickCountIndex:I
    .end local v12           #componentName:Landroid/content/ComponentName;
    .end local v14           #container:I
    .end local v15           #containerIndex:I
    .end local v17           #idIndex:I
    .end local v18           #intent:Landroid/content/Intent;
    .end local v19           #intentDescription:Ljava/lang/String;
    .end local v20           #intentIndex:I
    .end local v21           #itemType:I
    .end local v22           #itemTypeIndex:I
    .end local v23           #presetID:I
    .end local v25           #presetIDIndex:I
    .end local v26           #sortIndex:I
    .end local v27           #titleIndex:I
    .end local v28           #visibleIndex:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 592
    .restart local v11       #clickCountIndex:I
    .restart local v15       #containerIndex:I
    .restart local v17       #idIndex:I
    .restart local v19       #intentDescription:Ljava/lang/String;
    .restart local v20       #intentIndex:I
    .restart local v21       #itemType:I
    .restart local v22       #itemTypeIndex:I
    .restart local v25       #presetIDIndex:I
    .restart local v26       #sortIndex:I
    .restart local v27       #titleIndex:I
    .restart local v28       #visibleIndex:I
    :catch_1
    move-exception v16

    .line 593
    .local v16, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 604
    .end local v16           #e:Ljava/net/URISyntaxException;
    .restart local v7       #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .restart local v12       #componentName:Landroid/content/ComponentName;
    .restart local v14       #container:I
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 632
    .end local v7           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v12           #componentName:Landroid/content/ComponentName;
    .end local v14           #container:I
    .end local v18           #intent:Landroid/content/Intent;
    .end local v19           #intentDescription:Ljava/lang/String;
    :sswitch_2
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v19

    .line 634
    .restart local v19       #intentDescription:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v18

    .line 638
    .restart local v18       #intent:Landroid/content/Intent;
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 639
    .local v13, componentNameDisable:Landroid/content/ComponentName;
    if-eqz v13, :cond_1

    .line 641
    new-instance v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct {v7}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>()V

    .line 642
    .restart local v7       #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    .line 643
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 644
    .restart local v14       #container:I
    int-to-long v2, v14

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 645
    iput-object v13, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 646
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 647
    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    .line 648
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 649
    .local v10, clickCountDisabale:I
    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 650
    .local v24, presetIDDisable:I
    move/from16 v0, v24

    int-to-long v2, v0

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    .line 651
    int-to-long v2, v10

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 652
    const/4 v2, 0x5

    iput v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 653
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 635
    .end local v7           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v10           #clickCountDisabale:I
    .end local v13           #componentNameDisable:Landroid/content/ComponentName;
    .end local v14           #container:I
    .end local v18           #intent:Landroid/content/Intent;
    .end local v24           #presetIDDisable:I
    :catch_2
    move-exception v16

    .line 636
    .restart local v16       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 647
    .end local v16           #e:Ljava/net/URISyntaxException;
    .restart local v7       #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .restart local v13       #componentNameDisable:Landroid/content/ComponentName;
    .restart local v14       #container:I
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 662
    .end local v7           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v11           #clickCountIndex:I
    .end local v13           #componentNameDisable:Landroid/content/ComponentName;
    .end local v14           #container:I
    .end local v15           #containerIndex:I
    .end local v17           #idIndex:I
    .end local v18           #intent:Landroid/content/Intent;
    .end local v19           #intentDescription:Ljava/lang/String;
    .end local v20           #intentIndex:I
    .end local v21           #itemType:I
    .end local v22           #itemTypeIndex:I
    .end local v25           #presetIDIndex:I
    .end local v26           #sortIndex:I
    .end local v27           #titleIndex:I
    .end local v28           #visibleIndex:I
    :cond_6
    const-string v2, "AppsDataManager"

    const-string v3, "cursor is NULL or can NOT move to first"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 587
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method private notifyBusinessChanged(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "updateType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1409
    .local p1, changeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;

    .line 1410
    .local v1, listener:Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    invoke-interface {v1, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;->onAppListDataChanged(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1412
    .end local v1           #listener:Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    :cond_0
    return-void
.end method

.method private notifyChange(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, changed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;

    .line 302
    .local v1, listener:Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    invoke-interface {v1, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;->onAppChanged(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 304
    .end local v1           #listener:Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    :cond_0
    return-void
.end method

.method private reorderApplistfForTopLauncher()V
    .locals 8

    .prologue
    .line 532
    sget-object v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mTopComponentNames:Ljava/util/ArrayList;

    .line 533
    .local v5, topApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    invoke-virtual {v6}, Lcom/baidu/launcher/data/AllAppsList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const/4 v3, 0x0

    .line 537
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v4, reorders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 539
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    iget-object v6, v6, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 540
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 542
    .local v2, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v6, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 543
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 544
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 549
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_4
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    iget-object v6, v6, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public addFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    return-void
.end method

.method public addFolderToDatabase(Lcom/baidu/launcher/data/item/ListFolderInfo;JI)V
    .locals 3
    .parameter "folder"
    .parameter "container"
    .parameter "index"

    .prologue
    .line 1042
    iput-wide p2, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;->container:J

    .line 1043
    iput p4, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;->index:I

    .line 1045
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1047
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/launcher/data/item/ListFolderInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 1049
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/AppsDataManager$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/data/AppsDataManager$11;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1069
    return-void
.end method

.method public addItemInPresetList(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public addItemToDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V
    .locals 3
    .parameter "item"
    .parameter "container"
    .parameter "index"

    .prologue
    .line 997
    iput-wide p2, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    .line 998
    iput p4, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 1000
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1002
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/launcher/data/item/ListItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 1005
    instance-of v1, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v1, :cond_0

    .line 1006
    invoke-direct {p0, v0, p1}, Lcom/baidu/launcher/data/AppsDataManager;->doAddItemToDataBase(Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1014
    :goto_0
    return-void

    .line 1008
    :cond_0
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/AppsDataManager$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/data/AppsDataManager$8;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V
    .locals 4
    .parameter "item"
    .parameter "container"
    .parameter "index"

    .prologue
    .line 989
    iget-wide v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 990
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/data/AppsDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/data/AppsDataManager;->moveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    goto :goto_0
.end method

.method public batchUpdateItemInDatabase(Ljava/util/Vector;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1130
    .local p1, allItemList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/AppsDataManager$14;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/AppsDataManager$14;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/Vector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1156
    return-void
.end method

.method public clearAllListeners()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    return-void
.end method

.method public deleteFolderContentsFromDatabase(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 1237
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/AppsDataManager$15;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/AppsDataManager$15;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1245
    return-void
.end method

.method public deleteItemInDataBase(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1017
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/AppsDataManager$9;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/AppsDataManager$9;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1022
    return-void
.end method

.method public deleteItemsInDataBase(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1025
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/AppsDataManager$10;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/AppsDataManager$10;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1032
    return-void
.end method

.method enqueuePackageUpdated(Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 866
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 867
    return-void
.end method

.method public findSavedApp(Ljava/util/ArrayList;Landroid/content/ComponentName;)Lcom/baidu/launcher/data/item/ListAppInfo;
    .locals 4
    .parameter
    .parameter "componentName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/baidu/launcher/data/item/ListAppInfo;"
        }
    .end annotation

    .prologue
    .local p1, savedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const/4 v2, 0x0

    .line 746
    if-nez p2, :cond_0

    move-object v0, v2

    .line 752
    :goto_0
    return-object v0

    .line 747
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 748
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_2
    move-object v0, v2

    .line 752
    goto :goto_0
.end method

.method public findSavedFolder(Ljava/util/ArrayList;J)Lcom/baidu/launcher/data/item/ListFolderInfo;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;",
            ">;J)",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 758
    .local v0, folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-wide v2, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 762
    .end local v0           #folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public folderUpdateNotify(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 962
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v0, :cond_0

    .line 963
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/AppsDataManager$6;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/AppsDataManager$6;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 974
    :cond_0
    return-void
.end method

.method public getAllApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/baidu/launcher/data/AppsDataManager;->loadAllApps()V

    .line 388
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    iget-object v0, v0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllFolders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/baidu/launcher/data/AppsDataManager;->loadAllApps()V

    .line 333
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllPresetItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/baidu/launcher/data/AppsDataManager;->loadAllApps()V

    .line 406
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllVisiableApps()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    .local v0, applist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-boolean v2, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-nez v2, :cond_0

    .line 397
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 401
    :cond_1
    return-object v0
.end method

.method public getAllVisiableFolders()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/baidu/launcher/data/AppsDataManager;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 343
    .local v0, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-boolean v2, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;->isVisible:Z

    if-nez v2, :cond_0

    .line 346
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 350
    :cond_1
    return-object v0
.end method

.method public getAllWidgets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllWidgetsList:Lcom/baidu/launcher/data/AllWidgetsList;

    invoke-virtual {v0}, Lcom/baidu/launcher/data/AllWidgetsList;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getInstallTime()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, allActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, dialIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 269
    .local v1, cn:Landroid/content/ComponentName;
    sget-object v6, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 272
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 273
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cn:Landroid/content/ComponentName;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v1       #cn:Landroid/content/ComponentName;
    :try_start_0
    sget-object v6, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 278
    .local v4, pia:Landroid/content/pm/PackageInfo;
    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/32 v8, 0x6ddd00

    add-long/2addr v6, v8

    sput-wide v6, Lcom/baidu/launcher/data/AppsDataManager;->installTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v4           #pia:Landroid/content/pm/PackageInfo;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v5       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    .line 281
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/baidu/launcher/data/AppsDataManager;->installTime:J

    .line 282
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getListAppInfo(Ljava/lang/String;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1593
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1594
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    :cond_0
    return-void
.end method

.method public getWidgetByID(I)Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .locals 1
    .parameter "widgetID"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllWidgetsList:Lcom/baidu/launcher/data/AllWidgetsList;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/data/AllWidgetsList;->getById(I)Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public insertItemsInDatabase(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1110
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/AppsDataManager$13;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/AppsDataManager$13;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1126
    return-void
.end method

.method public declared-synchronized isAppLoaded()Z
    .locals 1

    .prologue
    .line 1274
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAppsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadSavedApp(Ljava/util/ArrayList;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 674
    sget-object v2, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 675
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "isPreset<1 or isPreset is null"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 678
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 680
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 681
    .local v13, idIndex:I
    const-string v2, "sort_index"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 682
    .local v19, sortIndex:I
    const-string v2, "intent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 683
    .local v16, intentIndex:I
    const-string v2, "container"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 684
    .local v11, containerIndex:I
    const-string v2, "itemType"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 685
    .local v18, itemTypeIndex:I
    const-string v2, "visible"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 693
    .local v20, visibleIndex:I
    :cond_0
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 695
    .local v17, itemType:I
    packed-switch v17, :pswitch_data_0

    .line 716
    :cond_1
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 725
    .end local v11           #containerIndex:I
    .end local v13           #idIndex:I
    .end local v16           #intentIndex:I
    .end local v17           #itemType:I
    .end local v18           #itemTypeIndex:I
    .end local v19           #sortIndex:I
    .end local v20           #visibleIndex:I
    :goto_1
    if-eqz v8, :cond_2

    .line 726
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 729
    return-void

    .line 697
    .restart local v11       #containerIndex:I
    .restart local v13       #idIndex:I
    .restart local v16       #intentIndex:I
    .restart local v17       #itemType:I
    .restart local v18       #itemTypeIndex:I
    .restart local v19       #sortIndex:I
    .restart local v20       #visibleIndex:I
    :pswitch_0
    :try_start_1
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 699
    .local v15, intentDescription:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v15, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    .line 703
    .local v14, intent:Landroid/content/Intent;
    :try_start_3
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 704
    .local v9, componentName:Landroid/content/ComponentName;
    if-eqz v9, :cond_1

    .line 705
    new-instance v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct {v7}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>()V

    .line 706
    .local v7, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    .line 707
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 708
    .local v10, container:I
    int-to-long v2, v10

    iput-wide v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 709
    iput-object v9, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 710
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 711
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    .line 713
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 718
    .end local v7           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v9           #componentName:Landroid/content/ComponentName;
    .end local v10           #container:I
    .end local v11           #containerIndex:I
    .end local v13           #idIndex:I
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #intentDescription:Ljava/lang/String;
    .end local v16           #intentIndex:I
    .end local v17           #itemType:I
    .end local v18           #itemTypeIndex:I
    .end local v19           #sortIndex:I
    .end local v20           #visibleIndex:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 700
    .restart local v11       #containerIndex:I
    .restart local v13       #idIndex:I
    .restart local v15       #intentDescription:Ljava/lang/String;
    .restart local v16       #intentIndex:I
    .restart local v17       #itemType:I
    .restart local v18       #itemTypeIndex:I
    .restart local v19       #sortIndex:I
    .restart local v20       #visibleIndex:I
    :catch_1
    move-exception v12

    .line 701
    .local v12, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 711
    .end local v12           #e:Ljava/net/URISyntaxException;
    .restart local v7       #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .restart local v9       #componentName:Landroid/content/ComponentName;
    .restart local v10       #container:I
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 722
    .end local v7           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v9           #componentName:Landroid/content/ComponentName;
    .end local v10           #container:I
    .end local v11           #containerIndex:I
    .end local v13           #idIndex:I
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #intentDescription:Ljava/lang/String;
    .end local v16           #intentIndex:I
    .end local v17           #itemType:I
    .end local v18           #itemTypeIndex:I
    .end local v19           #sortIndex:I
    .end local v20           #visibleIndex:I
    :cond_4
    const-string v2, "AppsDataManager"

    const-string v3, "cursor is NULL or can NOT move to first"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public loadeAppStoreData()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1510
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 1512
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v8, appStoreItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/business/item/RecommendAppItem;>;"
    new-instance v9, Lcom/baidu/launcher/business/BusinessManager;

    invoke-direct {v9}, Lcom/baidu/launcher/business/BusinessManager;-><init>()V

    .line 1514
    .local v9, businessManager:Lcom/baidu/launcher/business/BusinessManager;
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Lcom/baidu/launcher/business/BusinessManager;->getServicingStrategyTableId(Landroid/content/Context;)J

    move-result-wide v11

    .line 1515
    .local v11, currentStrategyTableId:J
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/data/AppsDataManager;->projection:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strategy_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1521
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1523
    :try_start_0
    const-string v1, "icon"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1524
    .local v14, iconIndex:I
    const-string v1, "apk_url"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1525
    .local v7, apkUrlIndex:I
    const-string v1, "package_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1526
    .local v16, packagenameIndex:I
    const-string v1, "title"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1527
    .local v18, titleIndex:I
    const-string v1, "strategy_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1530
    .local v17, strategyIdIndex:I
    :cond_0
    new-instance v15, Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-direct {v15}, Lcom/baidu/launcher/business/item/RecommendAppItem;-><init>()V

    .line 1532
    .local v15, item:Lcom/baidu/launcher/business/item/RecommendAppItem;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 1533
    .local v13, icon:[B
    if-nez v13, :cond_2

    .line 1534
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/business/BusinessDAOUtil;->donwloadIconBitmap(Landroid/content/Context;J)V

    .line 1538
    :goto_0
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setApk(Ljava/lang/String;)V

    .line 1539
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setPackagename(Ljava/lang/String;)V

    .line 1540
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setName(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 1550
    .end local v7           #apkUrlIndex:I
    .end local v13           #icon:[B
    .end local v14           #iconIndex:I
    .end local v15           #item:Lcom/baidu/launcher/business/item/RecommendAppItem;
    .end local v16           #packagenameIndex:I
    .end local v17           #strategyIdIndex:I
    .end local v18           #titleIndex:I
    :goto_1
    if-eqz v10, :cond_1

    .line 1551
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1554
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 1555
    return-object v8

    .line 1536
    .restart local v7       #apkUrlIndex:I
    .restart local v13       #icon:[B
    .restart local v14       #iconIndex:I
    .restart local v15       #item:Lcom/baidu/launcher/business/item/RecommendAppItem;
    .restart local v16       #packagenameIndex:I
    .restart local v17       #strategyIdIndex:I
    .restart local v18       #titleIndex:I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    array-length v2, v13

    invoke-static {v13, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setIconbmp(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1543
    .end local v7           #apkUrlIndex:I
    .end local v13           #icon:[B
    .end local v14           #iconIndex:I
    .end local v15           #item:Lcom/baidu/launcher/business/item/RecommendAppItem;
    .end local v16           #packagenameIndex:I
    .end local v17           #strategyIdIndex:I
    .end local v18           #titleIndex:I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1547
    :cond_3
    const-string v1, "AppsDataManager"

    const-string v2, "cursor is NULL or can NOT move to first"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public moveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V
    .locals 5
    .parameter "item"
    .parameter "container"
    .parameter "index"

    .prologue
    .line 1072
    iput-wide p2, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    .line 1073
    iput p4, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 1075
    iget-wide v2, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    .line 1076
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "container"

    iget-wide v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1079
    const-string v2, "sort_index"

    iget v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1081
    sget-object v2, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/data/AppsDataManager$12;

    invoke-direct {v3, p0, v0, v1}, Lcom/baidu/launcher/data/AppsDataManager$12;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1086
    return-void
.end method

.method public newWidget(JII)Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .locals 1
    .parameter "presetID"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllWidgetsList:Lcom/baidu/launcher/data/AllWidgetsList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/launcher/data/AllWidgetsList;->newWidget(JII)Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public onBusinessAppStateChange(Lcom/baidu/launcher/data/item/ListItemInfo;I)V
    .locals 4
    .parameter "item"
    .parameter "state"

    .prologue
    .line 1490
    iput p2, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->status:I

    .line 1491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .local v0, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;

    .line 1494
    .local v2, listener:Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    const/4 v3, 0x2

    invoke-interface {v2, v0, v3}, Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;->onAppListDataChanged(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1496
    .end local v2           #listener:Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    :cond_0
    return-void
.end method

.method public onBusinessChanged()V
    .locals 3

    .prologue
    .line 1371
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1372
    :try_start_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 1373
    iget-boolean v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAppsLoaded:Z

    if-nez v0, :cond_0

    .line 1374
    const-string v0, "AppsDataManager"

    const-string v2, "loading apps currently"

    invoke-static {v0, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 1376
    monitor-exit v1

    .line 1390
    :goto_0
    return-void

    .line 1378
    :cond_0
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/AppsDataManager$17;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/data/AppsDataManager$17;-><init>(Lcom/baidu/launcher/data/AppsDataManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1389
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, action:Ljava/lang/String;
    const-string v13, "AppsDataManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 776
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 777
    .local v7, packageName:Ljava/lang/String;
    const-string v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 780
    .local v10, replacing:Z
    const-string v13, "com.baidu.searchbox"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.baidu.imagesearch"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.baidu.voiceassistant"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "com.baiyi_mobile.search"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 781
    :cond_1
    new-instance v11, Landroid/content/Intent;

    const-string v13, "com.baidu.BaiduSearchWidgetProider.widget_update"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v11, updateIntent:Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 783
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 784
    .local v4, extras:Landroid/os/Bundle;
    new-instance v3, Landroid/content/ComponentName;

    const-string v13, "com.baidu.home2"

    const-string v14, "com.baidu.launcher.searchbar.BaiduSearchWidgetProvider"

    invoke-direct {v3, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .local v3, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v12

    .line 786
    .local v12, widgetIds:[I
    const-string v13, "appWidgetIds"

    invoke-virtual {v4, v13, v12}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 787
    invoke-virtual {v11, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 791
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #cn:Landroid/content/ComponentName;
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v11           #updateIntent:Landroid/content/Intent;
    .end local v12           #widgetIds:[I
    :cond_2
    const/4 v6, -0x1

    .line 792
    .local v6, op:I
    const/4 v9, 0x1

    .line 794
    .local v9, permanent:Z
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 838
    .end local v6           #op:I
    .end local v7           #packageName:Ljava/lang/String;
    .end local v9           #permanent:Z
    .end local v10           #replacing:Z
    :cond_3
    :goto_0
    return-void

    .line 798
    .restart local v6       #op:I
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v9       #permanent:Z
    .restart local v10       #replacing:Z
    :cond_4
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 799
    const/4 v6, 0x2

    .line 816
    :cond_5
    :goto_1
    const/4 v13, -0x1

    if-eq v6, v13, :cond_3

    .line 817
    const/4 v13, 0x2

    if-ne v6, v13, :cond_9

    .line 818
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 819
    .local v5, m:Landroid/os/Message;
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    iput v6, v5, Landroid/os/Message;->what:I

    .line 821
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/data/AppsDataManager;->mHander:Landroid/os/Handler;

    invoke-virtual {v13, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 802
    .end local v5           #m:Landroid/os/Message;
    :cond_6
    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 803
    if-nez v10, :cond_5

    .line 804
    const/4 v6, 0x1

    goto :goto_1

    .line 808
    :cond_7
    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 809
    if-nez v10, :cond_8

    .line 810
    const/4 v6, 0x0

    goto :goto_1

    .line 812
    :cond_8
    const/4 v6, 0x2

    goto :goto_1

    .line 823
    :cond_9
    new-instance v13, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v14, v9}, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;-><init>(Lcom/baidu/launcher/data/AppsDataManager;I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/launcher/data/AppsDataManager;->enqueuePackageUpdated(Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;)V

    goto :goto_0

    .line 827
    .end local v6           #op:I
    .end local v7           #packageName:Ljava/lang/String;
    .end local v9           #permanent:Z
    .end local v10           #replacing:Z
    :cond_a
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 829
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 830
    .local v8, packages:[Ljava/lang/String;
    new-instance v13, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;

    const/4 v14, 0x3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v8, v15}, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;-><init>(Lcom/baidu/launcher/data/AppsDataManager;I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/launcher/data/AppsDataManager;->enqueuePackageUpdated(Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;)V

    goto :goto_0

    .line 832
    .end local v8           #packages:[Ljava/lang/String;
    :cond_b
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 833
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 834
    .restart local v8       #packages:[Ljava/lang/String;
    new-instance v13, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v8, v15}, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;-><init>(Lcom/baidu/launcher/data/AppsDataManager;I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/launcher/data/AppsDataManager;->enqueuePackageUpdated(Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;)V

    goto/16 :goto_0
.end method

.method public registerAppChangeListener(Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reloadAppsLabel()V
    .locals 2

    .prologue
    .line 735
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :try_start_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 737
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    invoke-virtual {v0}, Lcom/baidu/launcher/data/AllAppsList;->clear()V

    .line 738
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 739
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/data/IconCache;->flush()V

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAppsLoaded:Z

    .line 741
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 742
    monitor-exit v1

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeApp(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;

    iget-object v0, v0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method public removeFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mAllFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method

.method public unregisterAppChangeListener(Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method public updateCalendarIcon(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "icon"

    .prologue
    .line 1581
    invoke-virtual {p0}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 1582
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1583
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    sget-object v3, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1584
    iput-object p1, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1588
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_1
    return-void
.end method

.method public updateFolderContentsInDatabase(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 1251
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/AppsDataManager$16;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/AppsDataManager$16;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1270
    return-void
.end method

.method public updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 977
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 979
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/launcher/data/item/ListItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 981
    sget-object v1, Lcom/baidu/launcher/data/AppsDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/AppsDataManager$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/baidu/launcher/data/AppsDataManager$7;-><init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListItemInfo;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    return-void
.end method
