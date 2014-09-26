.class public Lcom/baidu/launcher/data/HomeDataManager;
.super Ljava/lang/Object;
.source "HomeDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;,
        Lcom/baidu/launcher/data/HomeDataManager$HomeDataSelection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeDataManager"

.field private static final deleteComponent:[Ljava/lang/String;

.field private static mInstance:Lcom/baidu/launcher/data/HomeDataManager;

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;

.field static final updateComponent:[Ljava/lang/String;


# instance fields
.field private load_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppConext:Landroid/content/Context;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mIconCache:Lcom/baidu/launcher/data/IconCache;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.baidu.resmanager.filemanager"

    aput-object v1, v0, v3

    const-string v1, "com.baidu.resmanager.filemanager.ui.ProfileActivity"

    aput-object v1, v0, v4

    const-string v1, "com.baidu.resmanager.filemanager"

    aput-object v1, v0, v5

    const-string v1, "com.baidu.resmanager.filemanager.ui.MainActivity"

    aput-object v1, v0, v6

    const-string v1, "com.baidu.android.ota"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.ops.stub.activity.DisplayItemActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.baidu.android.ota"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.ops.stub.activity.RecommendActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/data/HomeDataManager;->updateComponent:[Ljava/lang/String;

    .line 141
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.baidu.reader"

    aput-object v1, v0, v3

    const-string v1, "com.baidu.netdisk"

    aput-object v1, v0, v4

    const-string v1, "com.baidu.multimedianote"

    aput-object v1, v0, v5

    const-string v1, "com.baidu.BaiduMap"

    aput-object v1, v0, v6

    const-string v1, "com.baidu.videoplayer"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.baidu.musicplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.baidu.BaiduReader"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.baidu.thememanager.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.baidu.notepad"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.baidu.soundrecorder"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.baidu.weather"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.calculator2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.baidu.antitheft"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.lehecai.main"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/data/HomeDataManager;->deleteComponent:[Ljava/lang/String;

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "home-data-manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    .line 153
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/launcher/data/HomeDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "aContext"

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 127
    iput-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager;->load_items:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    .line 166
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/IconCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mListeners:Ljava/util/ArrayList;

    .line 168
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/data/HomeDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager;->doAddItemToDataBase(Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/data/HomeDataManager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager;->moveContentToScreen(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/data/HomeDataManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/baidu/launcher/data/HomeDataManager;->getExceptFolders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/data/HomeDataManager;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager;->notifyDataChange(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/launcher/data/HomeDataManager;Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/data/HomeDataManager;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/data/HomeDataManager;Lcom/baidu/launcher/data/item/HomeFolderInfo;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/data/HomeDataManager;->loadExtraItemsForPresetFolder(Lcom/baidu/launcher/data/item/HomeFolderInfo;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/baidu/launcher/data/HomeDataManager;Lcom/baidu/launcher/data/item/HomeItemInfo;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/data/HomeDataManager;->getInfoFromBusiness(Lcom/baidu/launcher/data/item/HomeItemInfo;J)V

    return-void
.end method

.method private checkItemPlacement([[[Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/data/item/HomeItemInfo;)Z
    .locals 9
    .parameter "occupied"
    .parameter "item"

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 563
    iget-wide v4, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v2

    .line 567
    :cond_1
    iget v0, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .local v0, x:I
    :goto_1
    iget v4, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    iget v5, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_8

    .line 568
    iget v1, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .local v1, y:I
    :goto_2
    iget v4, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    iget v5, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_7

    .line 569
    iget v4, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v4, v5, :cond_2

    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    if-le v4, v8, :cond_3

    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    :goto_3
    if-ge v0, v4, :cond_2

    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    if-le v4, v8, :cond_4

    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    :goto_4
    if-lt v1, v4, :cond_5

    .line 572
    :cond_2
    const-string v2, "HomeDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " into cell ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") exceed area"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 576
    goto :goto_0

    .line 569
    :cond_3
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    goto :goto_3

    :cond_4
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    goto :goto_4

    .line 578
    :cond_5
    iget v4, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    aget-object v4, p1, v4

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    if-eqz v4, :cond_6

    .line 579
    const-string v2, "HomeDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " into cell ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") occupied by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    aget-object v5, p1, v5

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 584
    goto/16 :goto_0

    .line 568
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 567
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 588
    .end local v1           #y:I
    :cond_8
    iget v0, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    :goto_5
    iget v3, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    iget v4, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 589
    iget v1, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .restart local v1       #y:I
    :goto_6
    iget v3, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    iget v4, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_9

    .line 590
    iget v3, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    aget-object v3, p1, v3

    aget-object v3, v3, v0

    aput-object p2, v3, v1

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 588
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private doAddItemToDataBase(Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 3
    .parameter "values"
    .parameter "item"

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1059
    .local v0, result:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1060
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    .line 1062
    :cond_0
    return-void
.end method

.method private findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/launcher/data/item/HomeFolderInfo;",
            ">;J)",
            "Lcom/baidu/launcher/data/item/HomeFolderInfo;"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 914
    .local v0, folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-nez v1, :cond_1

    .line 916
    :cond_0
    new-instance v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .end local v0           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-direct {v0}, Lcom/baidu/launcher/data/item/HomeFolderInfo;-><init>()V

    .line 917
    .restart local v0       #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iput-wide p2, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    .line 920
    :cond_1
    return-object v0
.end method

.method private getExceptFolders()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1454
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    .local v7, excepts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "isPreset=1000"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1459
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1461
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1462
    .local v8, idIndex:I
    const-string v0, "itemType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1464
    .local v11, itemTypeIndex:I
    const/4 v9, 0x0

    .line 1465
    .local v9, item:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1467
    .local v12, values:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1468
    .local v10, itemType:I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    .line 1469
    new-instance v9, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .end local v9           #item:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-direct {v9}, Lcom/baidu/launcher/data/item/HomeFolderInfo;-><init>()V

    .line 1470
    .restart local v9       #item:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    .line 1471
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 1473
    const-string v0, "isPreset"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1474
    const-string v0, "HomeDataManager"

    invoke-static {v0}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, v9, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1477
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    .end local v8           #idIndex:I
    .end local v9           #item:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v10           #itemType:I
    .end local v11           #itemTypeIndex:I
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v6, :cond_3

    .line 1482
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1484
    :cond_3
    return-object v7

    .line 1478
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 801
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 803
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 805
    :goto_0
    return-object v2

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getInfoFromBusiness(Lcom/baidu/launcher/data/item/HomeItemInfo;J)V
    .locals 9
    .parameter "item"
    .parameter "presetID"

    .prologue
    const/4 v4, 0x0

    .line 1488
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "package_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "icon"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "apk_url"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "description"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "strategy_key"

    aput-object v3, v2, v1

    .line 1495
    .local v2, projection:[Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1496
    .local v0, contentResolver:Landroid/content/ContentResolver;
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

    .line 1500
    .local v6, businessCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    const-string v1, "package_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1503
    .local v8, businessPackageIndex:I
    const-string v1, "icon"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1506
    .local v7, businessIconIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->dependPackage:Ljava/lang/String;

    .line 1507
    invoke-direct {p0, v6, v7}, Lcom/baidu/launcher/data/HomeDataManager;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1508
    const-string v1, "apk_url"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->businessURL:Ljava/lang/String;

    .line 1510
    const-string v1, "description"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->businessDescription:Ljava/lang/String;

    .line 1512
    const-string v1, "strategy_key"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->businessStrategyKey:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    .end local v7           #businessIconIndex:I
    .end local v8           #businessPackageIndex:I
    :cond_0
    if-eqz v6, :cond_1

    .line 1519
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1522
    :cond_1
    :goto_0
    return-void

    .line 1515
    :catch_0
    move-exception v1

    .line 1518
    if-eqz v6, :cond_1

    .line 1519
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1518
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 1519
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 158
    const-class v1, Lcom/baidu/launcher/data/HomeDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->mInstance:Lcom/baidu/launcher/data/HomeDataManager;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/baidu/launcher/data/HomeDataManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/data/HomeDataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/data/HomeDataManager;->mInstance:Lcom/baidu/launcher/data/HomeDataManager;

    .line 161
    :cond_0
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->mInstance:Lcom/baidu/launcher/data/HomeDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;IIIIII)Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .locals 18
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"
    .parameter "isShortcutIndex"

    .prologue
    .line 693
    const/4 v3, 0x0

    .line 694
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v6}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>()V

    .line 695
    .local v6, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 696
    .local v9, r:Landroid/content/res/Resources;
    const/4 v14, 0x0

    .line 697
    .local v14, titleResId:I
    const/4 v15, 0x1

    iput v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->itemType:I

    .line 698
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x1

    :goto_0
    iput-boolean v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->needCheckIntent:Z

    .line 701
    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 702
    iget-object v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v15, :cond_0

    .line 703
    const-string v15, ""

    iput-object v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 706
    :cond_0
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 707
    .local v4, iconType:I
    packed-switch v4, :pswitch_data_0

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/data/HomeDataManager;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 788
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->usingFallbackIcon:Z

    .line 789
    const/4 v15, 0x0

    iput-boolean v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    .line 792
    :cond_1
    :goto_1
    invoke-virtual {v6, v3}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 793
    return-object v6

    .line 698
    .end local v4           #iconType:I
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 709
    .restart local v4       #iconType:I
    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 710
    .local v8, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 712
    .local v10, resourceName:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 714
    const-string v15, "conversationlist"

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 715
    const-string v15, "shortcut_mms"

    const-string v16, "string"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 717
    if-ltz v14, :cond_3

    .line 718
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 739
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 740
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    iput-boolean v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    .line 743
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 744
    .local v11, resources:Landroid/content/res/Resources;
    if-eqz v11, :cond_4

    .line 745
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v10, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 754
    .local v5, id:I
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 757
    iget-object v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 758
    .local v13, titleID:I
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 759
    .local v12, rsTitle:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 760
    iput-object v12, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v5           #id:I
    .end local v11           #resources:Landroid/content/res/Resources;
    .end local v12           #rsTitle:Ljava/lang/String;
    .end local v13           #titleID:I
    :cond_4
    :goto_3
    if-nez v3, :cond_5

    .line 768
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 771
    :cond_5
    if-nez v3, :cond_1

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/data/HomeDataManager;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 773
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->usingFallbackIcon:Z

    goto/16 :goto_1

    .line 720
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :cond_6
    const-string v15, "dialtactsactivity"

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 721
    const-string v15, "shortcut_phone"

    const-string v16, "string"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 723
    if-ltz v14, :cond_3

    .line 724
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    goto :goto_2

    .line 725
    :cond_7
    const-string v15, "dialtactscontactsentryactivity"

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 727
    const-string v15, "shortcut_contacts"

    const-string v16, "string"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 729
    if-ltz v14, :cond_3

    .line 730
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 731
    :cond_8
    const-string v15, "browseractivity"

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 732
    const-string v15, "shortcut_browser"

    const-string v16, "string"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 734
    if-ltz v14, :cond_3

    .line 735
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 777
    .end local v8           #packageName:Ljava/lang/String;
    .end local v10           #resourceName:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 778
    if-nez v3, :cond_9

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/data/HomeDataManager;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 780
    const/4 v15, 0x0

    iput-boolean v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    .line 781
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->usingFallbackIcon:Z

    goto/16 :goto_1

    .line 783
    :cond_9
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    goto/16 :goto_1

    .line 763
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v10       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v15

    goto/16 :goto_3

    .line 707
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private infoFromShortcutIntent(Landroid/content/Intent;)Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .locals 16
    .parameter "data"

    .prologue
    .line 832
    const-string v13, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 833
    .local v9, intent:Landroid/content/Intent;
    const-string v13, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 834
    .local v10, name:Ljava/lang/String;
    const-string v13, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 836
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 838
    .local v5, icon:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 839
    .local v2, customIcon:Z
    const/4 v6, 0x0

    .line 841
    .local v6, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_3

    instance-of v13, v1, Landroid/graphics/Bitmap;

    if-eqz v13, :cond_3

    .line 842
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmap:Landroid/os/Parcelable;
    invoke-direct {v13, v14, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 844
    const/4 v2, 0x1

    .line 862
    :cond_0
    :goto_0
    new-instance v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v8}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>()V

    .line 864
    .local v8, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    if-nez v5, :cond_1

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/data/HomeDataManager;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 866
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->usingFallbackIcon:Z

    .line 868
    :cond_1
    invoke-virtual {v8, v5}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 870
    iput-object v10, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 871
    iget-object v13, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v13, :cond_2

    .line 872
    const-string v13, ""

    iput-object v13, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 874
    :cond_2
    iput-object v9, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 875
    iput-boolean v2, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    .line 876
    iput-object v6, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 878
    return-object v8

    .line 846
    .end local v8           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .restart local v1       #bitmap:Landroid/os/Parcelable;
    :cond_3
    const-string v13, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 847
    .local v4, extra:Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    instance-of v13, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v13, :cond_0

    .line 849
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v6, v0

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 851
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 853
    .local v12, resources:Landroid/content/res/Resources;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 854
    .local v7, id:I
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 855
    .end local v7           #id:I
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .end local v12           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 856
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "HomeDataManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not load shortcut icon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadExtraItemsForPresetFolder(Lcom/baidu/launcher/data/item/HomeFolderInfo;J)V
    .locals 34
    .parameter "presetFolder"
    .parameter "folderId"

    .prologue
    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "container="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isPreset"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<1 or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isPreset"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is null)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1527
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1529
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 1530
    .local v25, idIndex:I
    const-string v2, "intent"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 1531
    .local v28, intentIndex:I
    const-string v2, "title"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1532
    .local v7, titleIndex:I
    const-string v2, "iconType"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1533
    .local v10, iconTypeIndex:I
    const-string v2, "icon"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1534
    .local v6, iconIndex:I
    const-string v2, "iconPackage"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1535
    .local v11, iconPackageIndex:I
    const-string v2, "iconResource"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1536
    .local v12, iconResourceIndex:I
    const-string v2, "container"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 1537
    .local v21, containerIndex:I
    const-string v2, "itemType"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 1538
    .local v30, itemTypeIndex:I
    const-string v2, "screen"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 1539
    .local v33, screenIndex:I
    const-string v2, "cellX"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1540
    .local v16, cellXIndex:I
    const-string v2, "cellY"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1541
    .local v17, cellYIndex:I
    const-string v2, "isShortcut"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1542
    .local v15, isShortcutIndex:I
    const-string v2, "clickCount"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1543
    .local v19, clickCountIndex:I
    const-string v2, "presetID"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 1551
    .local v32, presetIDIndex:I
    :cond_0
    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1552
    .local v29, itemType:I
    packed-switch v29, :pswitch_data_0

    .line 1602
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1614
    .end local v6           #iconIndex:I
    .end local v7           #titleIndex:I
    .end local v10           #iconTypeIndex:I
    .end local v11           #iconPackageIndex:I
    .end local v12           #iconResourceIndex:I
    .end local v15           #isShortcutIndex:I
    .end local v16           #cellXIndex:I
    .end local v17           #cellYIndex:I
    .end local v19           #clickCountIndex:I
    .end local v21           #containerIndex:I
    .end local v25           #idIndex:I
    .end local v28           #intentIndex:I
    .end local v29           #itemType:I
    .end local v30           #itemTypeIndex:I
    .end local v32           #presetIDIndex:I
    .end local v33           #screenIndex:I
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 1615
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1617
    :cond_2
    return-void

    .line 1555
    .restart local v6       #iconIndex:I
    .restart local v7       #titleIndex:I
    .restart local v10       #iconTypeIndex:I
    .restart local v11       #iconPackageIndex:I
    .restart local v12       #iconResourceIndex:I
    .restart local v15       #isShortcutIndex:I
    .restart local v16       #cellXIndex:I
    .restart local v17       #cellYIndex:I
    .restart local v19       #clickCountIndex:I
    .restart local v21       #containerIndex:I
    .restart local v25       #idIndex:I
    .restart local v28       #intentIndex:I
    .restart local v29       #itemType:I
    .restart local v30       #itemTypeIndex:I
    .restart local v32       #presetIDIndex:I
    .restart local v33       #screenIndex:I
    :pswitch_0
    :try_start_1
    move/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v27

    .line 1557
    .local v27, intentDescription:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v27

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 1562
    .local v4, intent:Landroid/content/Intent;
    if-nez v29, :cond_4

    .line 1563
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;II)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-result-object v26

    .line 1571
    .local v26, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :goto_2
    if-eqz v26, :cond_5

    .line 1572
    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 1573
    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v26

    iput-wide v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->id:J

    .line 1574
    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1575
    .local v20, container:I
    move/from16 v0, v20

    int-to-long v2, v0

    move-object/from16 v0, v26

    iput-wide v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->container:J

    .line 1576
    move/from16 v0, v33

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    .line 1577
    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    .line 1578
    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    .line 1579
    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1580
    .local v18, clickCount:I
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1581
    .local v31, presetID:I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    const/4 v2, -0x1

    move/from16 v0, v31

    if-le v0, v2, :cond_3

    .line 1582
    const/4 v2, 0x3

    move-object/from16 v0, v26

    iput v2, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 1584
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1604
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #iconIndex:I
    .end local v7           #titleIndex:I
    .end local v10           #iconTypeIndex:I
    .end local v11           #iconPackageIndex:I
    .end local v12           #iconResourceIndex:I
    .end local v15           #isShortcutIndex:I
    .end local v16           #cellXIndex:I
    .end local v17           #cellYIndex:I
    .end local v18           #clickCount:I
    .end local v19           #clickCountIndex:I
    .end local v20           #container:I
    .end local v21           #containerIndex:I
    .end local v25           #idIndex:I
    .end local v26           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v27           #intentDescription:Ljava/lang/String;
    .end local v28           #intentIndex:I
    .end local v29           #itemType:I
    .end local v30           #itemTypeIndex:I
    .end local v31           #presetID:I
    .end local v32           #presetIDIndex:I
    .end local v33           #screenIndex:I
    :catchall_0
    move-exception v2

    throw v2

    .line 1558
    .restart local v6       #iconIndex:I
    .restart local v7       #titleIndex:I
    .restart local v10       #iconTypeIndex:I
    .restart local v11       #iconPackageIndex:I
    .restart local v12       #iconResourceIndex:I
    .restart local v15       #isShortcutIndex:I
    .restart local v16       #cellXIndex:I
    .restart local v17       #cellYIndex:I
    .restart local v19       #clickCountIndex:I
    .restart local v21       #containerIndex:I
    .restart local v25       #idIndex:I
    .restart local v27       #intentDescription:Ljava/lang/String;
    .restart local v28       #intentIndex:I
    .restart local v29       #itemType:I
    .restart local v30       #itemTypeIndex:I
    .restart local v32       #presetIDIndex:I
    .restart local v33       #screenIndex:I
    :catch_0
    move-exception v22

    .line 1559
    .local v22, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .end local v22           #e:Ljava/lang/Exception;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_4
    move-object/from16 v8, p0

    move-object v9, v5

    move v13, v6

    move v14, v7

    .line 1566
    :try_start_4
    invoke-direct/range {v8 .. v15}, Lcom/baidu/launcher/data/HomeDataManager;->getShortcutInfo(Landroid/database/Cursor;IIIIII)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-result-object v26

    .restart local v26       #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    goto :goto_2

    .line 1592
    :cond_5
    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1593
    .local v23, id:J
    const-string v2, "HomeDataManager"

    invoke-static {v2}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-wide/from16 v0, v23

    invoke-static {v0, v1, v3}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1608
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #iconIndex:I
    .end local v7           #titleIndex:I
    .end local v10           #iconTypeIndex:I
    .end local v11           #iconPackageIndex:I
    .end local v12           #iconResourceIndex:I
    .end local v15           #isShortcutIndex:I
    .end local v16           #cellXIndex:I
    .end local v17           #cellYIndex:I
    .end local v19           #clickCountIndex:I
    .end local v21           #containerIndex:I
    .end local v23           #id:J
    .end local v25           #idIndex:I
    .end local v26           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v27           #intentDescription:Ljava/lang/String;
    .end local v28           #intentIndex:I
    .end local v29           #itemType:I
    .end local v30           #itemTypeIndex:I
    .end local v32           #presetIDIndex:I
    .end local v33           #screenIndex:I
    :cond_6
    const-string v2, "HomeDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor is NULL or can NOT move to first "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    if-eqz v5, :cond_1

    .line 1610
    const-string v2, "HomeDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "c.count "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private moveContentToScreen(II)V
    .locals 5
    .parameter "fromScrenn"
    .parameter "toScreen"

    .prologue
    .line 1292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1293
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "screen"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    const-string v1, "HomeDataManager"

    invoke-static {v1}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1295
    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "container"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, -0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1298
    return-void
.end method

.method private notifyDataChange(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;

    .line 187
    .local v1, listener:Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;
    invoke-interface {v1, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;->onHomeDateChanged(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 189
    .end local v1           #listener:Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFolderInDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;JIII)V
    .locals 3
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1125
    iput-wide p2, p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->container:J

    .line 1126
    iput p4, p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->screen:I

    .line 1127
    iput p5, p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellX:I

    .line 1128
    iput p6, p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellY:I

    .line 1130
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1132
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 1133
    const-string v1, "HomeDataManager"

    invoke-static {v1}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1134
    sget-object v1, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/HomeDataManager$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/data/HomeDataManager$6;-><init>(Lcom/baidu/launcher/data/HomeDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeFolderInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1144
    return-void
.end method

.method public addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V
    .locals 3
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 1034
    iput-wide p2, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    .line 1035
    iput p4, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    .line 1036
    iput p5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 1037
    iput p6, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 1039
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/launcher/data/item/HomeItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 1044
    instance-of v1, p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v1, :cond_0

    .line 1045
    const-string v1, "HomeDataManager"

    invoke-static {v1}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1046
    invoke-direct {p0, v0, p1}, Lcom/baidu/launcher/data/HomeDataManager;->doAddItemToDataBase(Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 1055
    :goto_0
    return-void

    .line 1048
    :cond_0
    const-string v1, "HomeDataManager"

    invoke-static {v1}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1049
    sget-object v1, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/HomeDataManager$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/data/HomeDataManager$2;-><init>(Lcom/baidu/launcher/data/HomeDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V
    .locals 8
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 930
    iget-wide v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 932
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    .line 937
    :goto_0
    return-void

    .line 935
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/baidu/launcher/data/HomeDataManager;->moveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    goto :goto_0
.end method

.method public addShortcut(Landroid/content/Intent;IIIZ)Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .locals 11
    .parameter "data"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lcom/baidu/launcher/data/HomeDataManager;->infoFromShortcutIntent(Landroid/content/Intent;)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-result-object v1

    .line 813
    .local v1, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 814
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 815
    .local v10, key:Ljava/lang/String;
    if-eqz v10, :cond_0

    iget-object v0, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 820
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    :cond_1
    const-wide/16 v2, -0x64

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    .line 822
    if-eqz p5, :cond_2

    .line 823
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v8, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lcom/baidu/launcher/data/HomeDataManager;->notifyDataChange(Ljava/util/ArrayList;I)V

    .line 828
    .end local v8           #changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    :cond_2
    return-object v1
.end method

.method public clearAllListeners()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    return-void
.end method

.method public declared-synchronized clearHomeDataCache()V
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->load_items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->load_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->load_items:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteFolderContentsFromDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;Z)V
    .locals 2
    .parameter "info"
    .parameter "deleteFolder"

    .prologue
    .line 1156
    const-string v0, "HomeDataManager"

    invoke-static {v0}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1157
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/HomeDataManager$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/launcher/data/HomeDataManager$7;-><init>(Lcom/baidu/launcher/data/HomeDataManager;ZLcom/baidu/launcher/data/item/HomeFolderInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1167
    return-void
.end method

.method public deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 1114
    iget-wide v1, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    .line 1115
    .local v0, uriToDelete:Landroid/net/Uri;
    const-string v1, "HomeDataManager"

    invoke-static {v1}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1116
    sget-object v1, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/HomeDataManager$5;

    invoke-direct {v2, p0, v0}, Lcom/baidu/launcher/data/HomeDataManager$5;-><init>(Lcom/baidu/launcher/data/HomeDataManager;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1121
    return-void
.end method

.method public deleteScreenContentsFromDatabase(ILjava/util/ArrayList;)V
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeFolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1186
    .local p2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    const-string v0, "HomeDataManager"

    invoke-static {v0}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1187
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/HomeDataManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager$9;-><init>(Lcom/baidu/launcher/data/HomeDataManager;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1227
    return-void
.end method

.method public deleteScreenContentsFromDatabase(ILjava/util/ArrayList;Z)V
    .locals 2
    .parameter "index"
    .parameter
    .parameter "sync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeFolderInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1230
    .local p2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    const-string v0, "HomeDataManager"

    invoke-static {v0}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1231
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/HomeDataManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager$10;-><init>(Lcom/baidu/launcher/data/HomeDataManager;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1270
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderById(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .locals 17
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/launcher/data/item/HomeFolderInfo;",
            ">;J)",
            "Lcom/baidu/launcher/data/item/HomeFolderInfo;"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and (itemType=? or itemType=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 993
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 994
    const-string v2, "itemType"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 995
    .local v13, itemTypeIndex:I
    const-string v2, "title"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 996
    .local v15, titleIndex:I
    const-string v2, "container"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 997
    .local v11, containerIndex:I
    const-string v2, "screen"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 998
    .local v14, screenIndex:I
    const-string v2, "cellX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 999
    .local v9, cellXIndex:I
    const-string v2, "cellY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1001
    .local v10, cellYIndex:I
    const/4 v12, 0x0

    .line 1002
    .local v12, folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1008
    :goto_0
    if-eqz v12, :cond_0

    .line 1009
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->setTitle(Ljava/lang/String;)V

    .line 1010
    move-wide/from16 v0, p2

    iput-wide v0, v12, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    .line 1011
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v12, Lcom/baidu/launcher/data/item/HomeFolderInfo;->container:J

    .line 1012
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/baidu/launcher/data/item/HomeFolderInfo;->screen:I

    .line 1013
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellX:I

    .line 1014
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    :cond_0
    if-eqz v8, :cond_1

    .line 1021
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1025
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :cond_1
    :goto_1
    return-object v12

    .line 1004
    .restart local v9       #cellXIndex:I
    .restart local v10       #cellYIndex:I
    .restart local v11       #containerIndex:I
    .restart local v12       #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .restart local v13       #itemTypeIndex:I
    .restart local v14       #screenIndex:I
    .restart local v15       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p3}, Lcom/baidu/launcher/data/HomeDataManager;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 1020
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :cond_2
    if-eqz v8, :cond_3

    .line 1021
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1025
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1020
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 1021
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 1002
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getHomeData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 59
    .parameter "selection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v50

    .line 221
    .local v50, presetWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListWidgetInfo;>;"
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v44, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 228
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_12

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 230
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 231
    .local v33, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v45, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 233
    .local v5, manager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v58

    .line 234
    .local v58, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v41

    .line 236
    .local v41, isSafeMode:Z
    sget v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    const/4 v10, 0x3

    if-le v4, v10, :cond_2

    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    move v10, v4

    :goto_0
    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    const/4 v15, 0x3

    if-le v4, v15, :cond_3

    sget v4, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    :goto_1
    filled-new-array {v11, v10, v4}, [I

    move-result-object v4

    const-class v10, Lcom/baidu/launcher/data/item/HomeItemInfo;

    invoke-static {v10, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, [[[Lcom/baidu/launcher/data/item/HomeItemInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .local v47, occupied:[[[Lcom/baidu/launcher/data/item/HomeItemInfo;
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 240
    .local v37, idIndex:I
    const-string v4, "intent"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 242
    .local v40, intentIndex:I
    const-string v4, "title"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 244
    .local v9, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 246
    .local v12, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 247
    .local v8, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 249
    .local v13, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 251
    .local v14, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 253
    .local v28, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 255
    .local v43, itemTypeIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 257
    .local v19, appWidgetIdIndex:I
    const-string v4, "screen"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 259
    .local v52, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 261
    .local v23, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 263
    .local v24, cellYIndex:I
    const-string v4, "spanX"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 265
    .local v54, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 267
    .local v56, spanYIndex:I
    const-string v4, "isShortcut"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 269
    .local v17, isShortcutIndex:I
    const-string v4, "clickCount"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 271
    .local v26, clickCountIndex:I
    const-string v4, "presetID"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 282
    .local v49, presetIDIndex:I
    :cond_0
    move/from16 v0, v43

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 283
    .local v42, itemType:I
    sparse-switch v42, :sswitch_data_0

    .line 531
    :cond_1
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_0

    .line 537
    :try_start_2
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 539
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v35

    .line 541
    .local v35, id:J
    :try_start_3
    const-string v4, "HomeDataManager"

    invoke-static {v4}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v10, 0x0

    move-wide/from16 v0, v35

    invoke-static {v0, v1, v10}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v11, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 545
    :catch_0
    move-exception v30

    .line 546
    .local v30, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "HomeDataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not remove id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v35

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-static {v4, v10, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 219
    .end local v5           #manager:Landroid/content/pm/PackageManager;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #iconIndex:I
    .end local v9           #titleIndex:I
    .end local v12           #iconTypeIndex:I
    .end local v13           #iconPackageIndex:I
    .end local v14           #iconResourceIndex:I
    .end local v17           #isShortcutIndex:I
    .end local v19           #appWidgetIdIndex:I
    .end local v23           #cellXIndex:I
    .end local v24           #cellYIndex:I
    .end local v26           #clickCountIndex:I
    .end local v28           #containerIndex:I
    .end local v30           #e:Ljava/lang/Exception;
    .end local v33           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v35           #id:J
    .end local v37           #idIndex:I
    .end local v40           #intentIndex:I
    .end local v41           #isSafeMode:Z
    .end local v42           #itemType:I
    .end local v43           #itemTypeIndex:I
    .end local v44           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .end local v45           #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v47           #occupied:[[[Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v49           #presetIDIndex:I
    .end local v50           #presetWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListWidgetInfo;>;"
    .end local v52           #screenIndex:I
    .end local v54           #spanXIndex:I
    .end local v56           #spanYIndex:I
    .end local v58           #widgets:Landroid/appwidget/AppWidgetManager;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 236
    .restart local v5       #manager:Landroid/content/pm/PackageManager;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v33       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    .restart local v41       #isSafeMode:Z
    .restart local v44       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .restart local v45       #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v50       #presetWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListWidgetInfo;>;"
    .restart local v58       #widgets:Landroid/appwidget/AppWidgetManager;
    :cond_2
    :try_start_5
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    move v10, v4

    goto/16 :goto_0

    :cond_3
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 287
    .restart local v8       #iconIndex:I
    .restart local v9       #titleIndex:I
    .restart local v12       #iconTypeIndex:I
    .restart local v13       #iconPackageIndex:I
    .restart local v14       #iconResourceIndex:I
    .restart local v17       #isShortcutIndex:I
    .restart local v19       #appWidgetIdIndex:I
    .restart local v23       #cellXIndex:I
    .restart local v24       #cellYIndex:I
    .restart local v26       #clickCountIndex:I
    .restart local v28       #containerIndex:I
    .restart local v37       #idIndex:I
    .restart local v40       #intentIndex:I
    .restart local v42       #itemType:I
    .restart local v43       #itemTypeIndex:I
    .restart local v47       #occupied:[[[Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v49       #presetIDIndex:I
    .restart local v52       #screenIndex:I
    .restart local v54       #spanXIndex:I
    .restart local v56       #spanYIndex:I
    :sswitch_0
    :try_start_6
    move/from16 v0, v40

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v39

    .line 289
    .local v39, intentDescription:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, v39

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v6

    .line 294
    .local v6, intent:Landroid/content/Intent;
    :try_start_8
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "com.duoku.coolreader"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 295
    new-instance v4, Landroid/content/ComponentName;

    const-string v10, "com.chaozh.iReaderFree"

    const-string v11, "com.chaozh.iReader.ui.activity.WelcomeActivity"

    invoke-direct {v4, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4

    .line 302
    :cond_4
    :goto_4
    if-nez v42, :cond_7

    move-object/from16 v4, p0

    .line 303
    :try_start_9
    invoke-virtual/range {v4 .. v9}, Lcom/baidu/launcher/data/HomeDataManager;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;II)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-result-object v38

    .line 311
    .local v38, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :goto_5
    if-eqz v38, :cond_8

    .line 312
    move-object/from16 v0, v38

    iput-object v6, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 313
    move/from16 v0, v37

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v38

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->id:J

    .line 314
    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 315
    .local v27, container:I
    move/from16 v0, v27

    int-to-long v10, v0

    move-object/from16 v0, v38

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->container:J

    .line 316
    move/from16 v0, v52

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    .line 317
    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    .line 318
    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    .line 319
    move/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 320
    .local v25, clickCount:I
    move/from16 v0, v49

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 321
    .local v48, presetID:I
    move/from16 v0, v48

    int-to-long v10, v0

    move-object/from16 v0, v38

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->businessTableID:J

    .line 322
    move/from16 v0, v25

    int-to-long v10, v0

    move-object/from16 v0, v38

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->clickCount:J

    .line 323
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    const/4 v4, -0x1

    move/from16 v0, v48

    if-le v0, v4, :cond_5

    .line 324
    const/4 v4, 0x3

    move-object/from16 v0, v38

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 327
    :cond_5
    const/16 v4, 0x14

    move/from16 v0, v42

    if-ne v0, v4, :cond_6

    .line 328
    const/4 v4, 0x5

    move-object/from16 v0, v38

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 331
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->checkItemPlacement([[[Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/data/item/HomeItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 335
    sparse-switch v27, :sswitch_data_1

    .line 342
    move/from16 v0, v27

    int-to-long v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v10, v11}, Lcom/baidu/launcher/data/HomeDataManager;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move-result-object v32

    .line 344
    .local v32, folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 533
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #iconIndex:I
    .end local v9           #titleIndex:I
    .end local v12           #iconTypeIndex:I
    .end local v13           #iconPackageIndex:I
    .end local v14           #iconResourceIndex:I
    .end local v17           #isShortcutIndex:I
    .end local v19           #appWidgetIdIndex:I
    .end local v23           #cellXIndex:I
    .end local v24           #cellYIndex:I
    .end local v25           #clickCount:I
    .end local v26           #clickCountIndex:I
    .end local v27           #container:I
    .end local v28           #containerIndex:I
    .end local v32           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v37           #idIndex:I
    .end local v38           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v39           #intentDescription:Ljava/lang/String;
    .end local v40           #intentIndex:I
    .end local v42           #itemType:I
    .end local v43           #itemTypeIndex:I
    .end local v48           #presetID:I
    .end local v49           #presetIDIndex:I
    .end local v52           #screenIndex:I
    .end local v54           #spanXIndex:I
    .end local v56           #spanYIndex:I
    :catchall_1
    move-exception v4

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 290
    .restart local v8       #iconIndex:I
    .restart local v9       #titleIndex:I
    .restart local v12       #iconTypeIndex:I
    .restart local v13       #iconPackageIndex:I
    .restart local v14       #iconResourceIndex:I
    .restart local v17       #isShortcutIndex:I
    .restart local v19       #appWidgetIdIndex:I
    .restart local v23       #cellXIndex:I
    .restart local v24       #cellYIndex:I
    .restart local v26       #clickCountIndex:I
    .restart local v28       #containerIndex:I
    .restart local v37       #idIndex:I
    .restart local v39       #intentDescription:Ljava/lang/String;
    .restart local v40       #intentIndex:I
    .restart local v42       #itemType:I
    .restart local v43       #itemTypeIndex:I
    .restart local v49       #presetIDIndex:I
    .restart local v52       #screenIndex:I
    .restart local v54       #spanXIndex:I
    .restart local v56       #spanYIndex:I
    :catch_1
    move-exception v30

    .line 291
    .restart local v30       #e:Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v30           #e:Ljava/lang/Exception;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_7
    move-object/from16 v10, p0

    move-object v11, v7

    move v15, v8

    move/from16 v16, v9

    .line 306
    :try_start_b
    invoke-direct/range {v10 .. v17}, Lcom/baidu/launcher/data/HomeDataManager;->getShortcutInfo(Landroid/database/Cursor;IIIIII)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-result-object v38

    .restart local v38       #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    goto/16 :goto_5

    .line 338
    .restart local v25       #clickCount:I
    .restart local v27       #container:I
    .restart local v48       #presetID:I
    :sswitch_1
    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 357
    .end local v25           #clickCount:I
    .end local v27           #container:I
    .end local v48           #presetID:I
    :cond_8
    const-string v4, "HomeDataManager"

    invoke-static {v4}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 358
    move/from16 v0, v37

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 359
    .restart local v35       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v10, 0x0

    move-wide/from16 v0, v35

    invoke-static {v0, v1, v10}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v11, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 366
    .end local v6           #intent:Landroid/content/Intent;
    .end local v35           #id:J
    .end local v38           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v39           #intentDescription:Ljava/lang/String;
    :sswitch_2
    move/from16 v0, v37

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 367
    .restart local v35       #id:J
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/launcher/data/HomeDataManager;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move-result-object v32

    .line 370
    .restart local v32       #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->setTitle(Ljava/lang/String;)V

    .line 372
    move-wide/from16 v0, v35

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    .line 373
    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 374
    .restart local v27       #container:I
    move/from16 v0, v27

    int-to-long v10, v0

    move-object/from16 v0, v32

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->container:J

    .line 375
    move/from16 v0, v52

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->screen:I

    .line 376
    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellX:I

    .line 377
    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellY:I

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->checkItemPlacement([[[Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/data/item/HomeItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    sparse-switch v27, :sswitch_data_2

    .line 391
    :goto_6
    move-object/from16 v0, v32

    iget-wide v10, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 387
    :sswitch_3
    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 396
    .end local v27           #container:I
    .end local v32           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v35           #id:J
    :sswitch_4
    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 397
    .local v21, baiduWidgetId:I
    const/16 v4, 0xa

    move/from16 v0, v21

    if-ne v0, v4, :cond_9

    .line 398
    const/16 v21, 0x6

    .line 400
    :cond_9
    move/from16 v0, v37

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 401
    .restart local v35       #id:J
    move/from16 v0, v54

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 402
    .local v53, spanX:I
    move/from16 v0, v56

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    .line 403
    .local v55, spanY:I
    move/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 404
    .restart local v25       #clickCount:I
    move/from16 v0, v49

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 405
    .restart local v48       #presetID:I
    const/16 v46, 0x0

    .line 406
    .local v46, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .restart local v34       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 407
    .local v57, wi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    move-object/from16 v0, v57

    iget v4, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    move/from16 v0, v21

    if-ne v4, v0, :cond_a

    .line 408
    move-object/from16 v46, v57

    .line 412
    .end local v57           #wi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_b
    if-nez v46, :cond_f

    .line 413
    if-ltz v48, :cond_1

    .line 414
    new-instance v22, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;-><init>(I)V

    .line 415
    .local v22, baiduWidgetInfo:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v4

    move/from16 v0, v48

    int-to-long v10, v0

    move/from16 v0, v53

    move/from16 v1, v55

    invoke-virtual {v4, v10, v11, v0, v1}, Lcom/baidu/launcher/data/AppsDataManager;->newWidget(JII)Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move-result-object v46

    .line 417
    move/from16 v0, v48

    int-to-long v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10, v11}, Lcom/baidu/launcher/data/HomeDataManager;->getInfoFromBusiness(Lcom/baidu/launcher/data/item/HomeItemInfo;J)V

    .line 418
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 420
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->title:Ljava/lang/CharSequence;

    .line 421
    move/from16 v0, v48

    int-to-long v10, v0

    move-object/from16 v0, v22

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->businessTableID:J

    .line 422
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->dependPackage:Ljava/lang/String;

    move-object/from16 v29, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 424
    .local v29, dependent:Ljava/lang/String;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->replacedIntent:Landroid/content/Intent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 434
    .end local v29           #dependent:Ljava/lang/String;
    :goto_7
    :try_start_d
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->dependentOn:Landroid/content/ComponentName;

    move-object/from16 v29, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 435
    .local v29, dependent:Landroid/content/ComponentName;
    const/16 v31, 0x0

    .line 436
    .local v31, empty:Z
    if-eqz v29, :cond_c

    .line 438
    const/4 v4, 0x0

    :try_start_e
    move-object/from16 v0, v29

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_2

    .line 443
    :cond_c
    :goto_8
    :try_start_f
    move-wide/from16 v0, v35

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->id:J

    .line 444
    move/from16 v0, v31

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    .line 445
    move/from16 v0, v52

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->screen:I

    .line 446
    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->cellX:I

    .line 447
    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->cellY:I

    .line 448
    move/from16 v0, v53

    move-object/from16 v1, v22

    iput v0, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->spanX:I

    .line 449
    move/from16 v0, v55

    move-object/from16 v1, v22

    iput v0, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->spanY:I

    .line 450
    move/from16 v0, v25

    int-to-long v10, v0

    move-object/from16 v0, v22

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->clickCount:J

    .line 451
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ge v0, v4, :cond_d

    const/4 v4, -0x1

    move/from16 v0, v48

    if-le v0, v4, :cond_d

    .line 452
    const/4 v4, 0x3

    move-object/from16 v0, v22

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->status:I

    .line 458
    :cond_d
    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 459
    .restart local v27       #container:I
    const/16 v4, -0x64

    move/from16 v0, v27

    if-ne v0, v4, :cond_1

    .line 465
    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v10, v4

    move-object/from16 v0, v22

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->container:J

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->checkItemPlacement([[[Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/data/item/HomeItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    move-object/from16 v0, v22

    iget v4, v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->baiduWidgetId:I

    const/4 v10, 0x6

    if-ne v4, v10, :cond_e

    .line 472
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 474
    :cond_e
    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 432
    .end local v22           #baiduWidgetInfo:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    .end local v27           #container:I
    .end local v29           #dependent:Landroid/content/ComponentName;
    .end local v31           #empty:Z
    :cond_f
    new-instance v22, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;-><init>(I)V

    .restart local v22       #baiduWidgetInfo:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    goto/16 :goto_7

    .line 439
    .restart local v29       #dependent:Landroid/content/ComponentName;
    .restart local v31       #empty:Z
    :catch_2
    move-exception v30

    .line 440
    .local v30, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v31, 0x1

    goto/16 :goto_8

    .line 479
    .end local v21           #baiduWidgetId:I
    .end local v22           #baiduWidgetInfo:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    .end local v25           #clickCount:I
    .end local v29           #dependent:Landroid/content/ComponentName;
    .end local v30           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v31           #empty:Z
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v35           #id:J
    .end local v46           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .end local v48           #presetID:I
    .end local v53           #spanX:I
    .end local v55           #spanY:I
    :sswitch_5
    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 480
    .local v18, appWidgetId:I
    move/from16 v0, v37

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 482
    .restart local v35       #id:J
    move-object/from16 v0, v58

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v51

    .line 485
    .local v51, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v41, :cond_11

    if-eqz v51, :cond_10

    move-object/from16 v0, v51

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_10

    move-object/from16 v0, v51

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    .line 491
    :cond_10
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 493
    :cond_11
    new-instance v20, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;-><init>(I)V

    .line 494
    .local v20, appWidgetInfo:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    move-wide/from16 v0, v35

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->id:J

    .line 495
    move/from16 v0, v52

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->screen:I

    .line 496
    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->cellX:I

    .line 497
    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->cellY:I

    .line 498
    move/from16 v0, v54

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanX:I

    .line 499
    move/from16 v0, v56

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->spanY:I

    .line 512
    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 513
    .restart local v27       #container:I
    const/16 v4, -0x64

    move/from16 v0, v27

    if-ne v0, v4, :cond_1

    .line 520
    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v10, v4

    move-object/from16 v0, v20

    iput-wide v10, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->container:J

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->checkItemPlacement([[[Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/data/item/HomeItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_2

    .line 551
    .end local v5           #manager:Landroid/content/pm/PackageManager;
    .end local v8           #iconIndex:I
    .end local v9           #titleIndex:I
    .end local v12           #iconTypeIndex:I
    .end local v13           #iconPackageIndex:I
    .end local v14           #iconResourceIndex:I
    .end local v17           #isShortcutIndex:I
    .end local v18           #appWidgetId:I
    .end local v19           #appWidgetIdIndex:I
    .end local v20           #appWidgetInfo:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    .end local v23           #cellXIndex:I
    .end local v24           #cellYIndex:I
    .end local v26           #clickCountIndex:I
    .end local v27           #container:I
    .end local v28           #containerIndex:I
    .end local v33           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    .end local v35           #id:J
    .end local v37           #idIndex:I
    .end local v40           #intentIndex:I
    .end local v41           #isSafeMode:Z
    .end local v42           #itemType:I
    .end local v43           #itemTypeIndex:I
    .end local v45           #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v47           #occupied:[[[Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v49           #presetIDIndex:I
    .end local v51           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v52           #screenIndex:I
    .end local v54           #spanXIndex:I
    .end local v56           #spanYIndex:I
    .end local v58           #widgets:Landroid/appwidget/AppWidgetManager;
    :cond_12
    :try_start_10
    const-string v4, "HomeDataManager"

    const-string v10, "cursor is NULL or can NOT move to first"

    invoke-static {v4, v10}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_13
    if-eqz v7, :cond_14

    .line 555
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 558
    :cond_14
    monitor-exit p0

    return-object v44

    .line 426
    .restart local v5       #manager:Landroid/content/pm/PackageManager;
    .restart local v8       #iconIndex:I
    .restart local v9       #titleIndex:I
    .restart local v12       #iconTypeIndex:I
    .restart local v13       #iconPackageIndex:I
    .restart local v14       #iconResourceIndex:I
    .restart local v17       #isShortcutIndex:I
    .restart local v19       #appWidgetIdIndex:I
    .restart local v21       #baiduWidgetId:I
    .restart local v22       #baiduWidgetInfo:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    .restart local v23       #cellXIndex:I
    .restart local v24       #cellYIndex:I
    .restart local v25       #clickCount:I
    .restart local v26       #clickCountIndex:I
    .restart local v28       #containerIndex:I
    .local v29, dependent:Ljava/lang/String;
    .restart local v33       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    .restart local v34       #i$:Ljava/util/Iterator;
    .restart local v35       #id:J
    .restart local v37       #idIndex:I
    .restart local v40       #intentIndex:I
    .restart local v41       #isSafeMode:Z
    .restart local v42       #itemType:I
    .restart local v43       #itemTypeIndex:I
    .restart local v45       #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v46       #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .restart local v47       #occupied:[[[Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v48       #presetID:I
    .restart local v49       #presetIDIndex:I
    .restart local v52       #screenIndex:I
    .restart local v53       #spanX:I
    .restart local v54       #spanXIndex:I
    .restart local v55       #spanY:I
    .restart local v56       #spanYIndex:I
    .restart local v58       #widgets:Landroid/appwidget/AppWidgetManager;
    :catch_3
    move-exception v4

    goto/16 :goto_7

    .line 297
    .end local v21           #baiduWidgetId:I
    .end local v22           #baiduWidgetInfo:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    .end local v25           #clickCount:I
    .end local v29           #dependent:Ljava/lang/String;
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v35           #id:J
    .end local v46           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .end local v48           #presetID:I
    .end local v53           #spanX:I
    .end local v55           #spanY:I
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v39       #intentDescription:Ljava/lang/String;
    :catch_4
    move-exception v4

    goto/16 :goto_4

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x14 -> :sswitch_0
    .end sparse-switch

    .line 335
    :sswitch_data_1
    .sparse-switch
        -0xc8 -> :sswitch_1
        -0x64 -> :sswitch_1
    .end sparse-switch

    .line 384
    :sswitch_data_2
    .sparse-switch
        -0xc8 -> :sswitch_3
        -0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public declared-synchronized getHomeDataCache()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->load_items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->load_items:Ljava/util/ArrayList;

    .line 196
    const-string v0, "isPreset<1 or isPreset is null"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/data/HomeDataManager;->getHomeData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->load_items:Ljava/util/ArrayList;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->load_items:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 601
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/data/HomeDataManager;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;II)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;II)Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .locals 12
    .parameter "manager"
    .parameter "intent"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 611
    const/4 v4, 0x0

    .line 612
    .local v4, icon:Landroid/graphics/Bitmap;
    new-instance v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v5}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>()V

    .line 614
    .local v5, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 615
    .local v1, componentName:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 616
    const/4 v5, 0x0

    .line 683
    .end local v5           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :goto_0
    return-object v5

    .line 619
    .restart local v5       #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p1, p2, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 620
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v9, "HomeDataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getShortcutInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    if-nez v8, :cond_3

    .line 622
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 623
    .local v7, pName:Ljava/lang/String;
    const-string v9, "HomeDataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getShortcutInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is null "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v9, Lcom/baidu/launcher/data/HomeDataManager;->deleteComponent:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 626
    sget-object v9, Lcom/baidu/launcher/data/HomeDataManager;->deleteComponent:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 627
    const/4 v5, 0x0

    goto :goto_0

    .line 625
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 632
    :cond_2
    const/4 v2, 0x0

    :goto_2
    sget-object v9, Lcom/baidu/launcher/data/HomeDataManager;->updateComponent:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x4

    if-gt v2, v9, :cond_3

    .line 633
    sget-object v9, Lcom/baidu/launcher/data/HomeDataManager;->updateComponent:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Lcom/baidu/launcher/data/HomeDataManager;->updateComponent:[Ljava/lang/String;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 634
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #componentName:Landroid/content/ComponentName;
    sget-object v9, Lcom/baidu/launcher/data/HomeDataManager;->updateComponent:[Ljava/lang/String;

    add-int/lit8 v10, v2, 0x2

    aget-object v9, v9, v10

    sget-object v10, Lcom/baidu/launcher/data/HomeDataManager;->updateComponent:[Ljava/lang/String;

    add-int/lit8 v11, v2, 0x3

    aget-object v10, v10, v11

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .restart local v1       #componentName:Landroid/content/ComponentName;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 639
    const/4 v9, 0x0

    invoke-virtual {p1, p2, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 645
    .end local v2           #i:I
    .end local v7           #pName:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 646
    iget-object v9, p0, Lcom/baidu/launcher/data/HomeDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-virtual {v9, v1, v8}, Lcom/baidu/launcher/data/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 649
    :cond_4
    if-nez v4, :cond_5

    .line 650
    if-eqz p3, :cond_5

    .line 651
    move/from16 v0, p4

    invoke-direct {p0, p3, v0}, Lcom/baidu/launcher/data/HomeDataManager;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 655
    :cond_5
    if-nez v4, :cond_6

    .line 656
    invoke-virtual {p0}, Lcom/baidu/launcher/data/HomeDataManager;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 657
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->usingFallbackIcon:Z

    .line 659
    :cond_6
    invoke-virtual {v5, v4}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 662
    if-eqz v8, :cond_7

    .line 663
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 666
    :cond_7
    iget-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v9, :cond_8

    .line 667
    if-eqz p3, :cond_8

    .line 668
    move/from16 v0, p5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 672
    :cond_8
    iget-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v9, :cond_9

    .line 673
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 675
    :cond_9
    iget-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v9, :cond_b

    .line 676
    sget-object v9, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 677
    .local v6, key:Ljava/lang/String;
    if-eqz v6, :cond_a

    iget-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 678
    sget-object v9, Lcom/baidu/launcher/data/IconCache;->sReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    iput-object v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 682
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    :cond_b
    const/4 v9, 0x0

    iput v9, v5, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->itemType:I

    goto/16 :goto_0

    .line 632
    .restart local v2       #i:I
    .restart local v7       #pName:Ljava/lang/String;
    :cond_c
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_2
.end method

.method public modifyItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIII)V
    .locals 7
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1069
    iput-wide p2, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    .line 1070
    iput p5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 1071
    iput p6, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 1072
    iput p7, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 1073
    iput p8, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 1075
    iput p4, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    .line 1077
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "container"

    iget-wide v5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1079
    const-string v4, "cellX"

    iget v5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    const-string v4, "cellY"

    iget v5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1081
    const-string v4, "spanX"

    iget v5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const-string v4, "spanY"

    iget v5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    const-string v4, "screen"

    iget v5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    iget-wide v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    .line 1085
    .local v0, itemId:J
    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 1086
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "HomeDataManager"

    invoke-static {v4}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1087
    sget-object v4, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v5, Lcom/baidu/launcher/data/HomeDataManager$3;

    invoke-direct {v5, p0, v2, v3}, Lcom/baidu/launcher/data/HomeDataManager$3;-><init>(Lcom/baidu/launcher/data/HomeDataManager;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1092
    return-void
.end method

.method public moveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V
    .locals 5
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 944
    iput-wide p2, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    .line 945
    iput p4, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    .line 946
    iput p5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 947
    iput p6, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 949
    iget-wide v2, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v0

    .line 950
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 952
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "container"

    iget-wide v3, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 953
    const-string v2, "cellX"

    iget v3, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    const-string v2, "cellY"

    iget v3, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    const-string v2, "screen"

    iget v3, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string v2, "HomeDataManager"

    invoke-static {v2}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 958
    sget-object v2, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/data/HomeDataManager$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/baidu/launcher/data/HomeDataManager$1;-><init>(Lcom/baidu/launcher/data/HomeDataManager;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 963
    return-void
.end method

.method public onBusinessAppStateChange(Lcom/baidu/launcher/data/item/HomeItemInfo;I)V
    .locals 2
    .parameter "item"
    .parameter "state"

    .prologue
    .line 1633
    iput p2, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->status:I

    .line 1634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    .local v0, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/baidu/launcher/data/HomeDataManager;->notifyDataChange(Ljava/util/ArrayList;I)V

    .line 1637
    return-void
.end method

.method public onBusinessAppStateUpdate(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "state"

    .prologue
    .line 1640
    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;

    .line 1641
    .local v1, listener:Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;
    invoke-interface {v1, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;->onHomeDataAppUpdate(Ljava/lang/String;I)V

    goto :goto_0

    .line 1643
    .end local v1           #listener:Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;
    :cond_0
    return-void
.end method

.method public declared-synchronized onBusinessChanged()V
    .locals 2

    .prologue
    .line 1319
    monitor-enter p0

    :try_start_0
    const-string v0, "HomeDataManager"

    const-string v1, "onBusinessChanged"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/HomeDataManager$12;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/data/HomeDataManager$12;-><init>(Lcom/baidu/launcher/data/HomeDataManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    monitor-exit p0

    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerHomeDataChangeListener(Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resizeItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;IIII)V
    .locals 0
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1306
    iput p4, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 1307
    iput p5, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 1308
    iput p2, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 1309
    iput p3, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 1311
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 1312
    return-void
.end method

.method public shortcutExists(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 970
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual {p2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 973
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 980
    :goto_0
    return v7

    .line 974
    :cond_0
    const/4 v7, 0x0

    .line 976
    .local v7, result:Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public unregisterHomeDataChangeListener(Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public updateContentScreenFromDatabase(II)V
    .locals 2
    .parameter "fromScrenn"
    .parameter "toScrenn"

    .prologue
    .line 1273
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/HomeDataManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/launcher/data/HomeDataManager$11;-><init>(Lcom/baidu/launcher/data/HomeDataManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1289
    return-void
.end method

.method public updateFolderContentsInDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 1173
    sget-object v0, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/HomeDataManager$8;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/HomeDataManager$8;-><init>(Lcom/baidu/launcher/data/HomeDataManager;Lcom/baidu/launcher/data/item/HomeFolderInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1183
    return-void
.end method

.method public updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 1098
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1100
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/launcher/data/item/HomeItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 1101
    const-string v1, "HomeDataManager"

    invoke-static {v1}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1102
    sget-object v1, Lcom/baidu/launcher/data/HomeDataManager;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/HomeDataManager$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/baidu/launcher/data/HomeDataManager$4;-><init>(Lcom/baidu/launcher/data/HomeDataManager;Lcom/baidu/launcher/data/item/HomeItemInfo;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1107
    return-void
.end method

.method updateSavedIcon(Lcom/baidu/launcher/data/item/HomeShortcutInfo;Landroid/database/Cursor;I)V
    .locals 7
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    const/4 v3, 0x0

    .line 888
    iget-boolean v5, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    if-nez v5, :cond_1

    iget-boolean v5, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->usingFallbackIcon:Z

    if-nez v5, :cond_1

    .line 890
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 892
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 893
    const/4 v5, 0x0

    :try_start_0
    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 894
    .local v4, saved:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 895
    .local v2, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 902
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    .local v3, needSave:Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 906
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 909
    .end local v0           #data:[B
    .end local v3           #needSave:Z
    :cond_1
    return-void

    .line 897
    .restart local v0       #data:[B
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0

    .line 899
    .end local v3           #needSave:Z
    :catch_0
    move-exception v1

    .line 900
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0
.end method
