.class public Lcom/baidu/launcher/data/DisableDataManager;
.super Ljava/lang/Object;
.source "DisableDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/data/DisableDataManager$DisableDataSelection;
    }
.end annotation


# static fields
.field private static final disableWorker:Landroid/os/Handler;

.field private static mInstance:Lcom/baidu/launcher/data/DisableDataManager;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAppConext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "home-data-manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/launcher/data/DisableDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    .line 37
    sget-object v0, Lcom/baidu/launcher/data/DisableDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/launcher/data/DisableDataManager;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/data/DisableDataManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteDisableFromDB(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 157
    sget-object v0, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/data/DisableDataManager$6;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/data/DisableDataManager$6;-><init>(Lcom/baidu/launcher/data/DisableDataManager;Lcom/baidu/launcher/data/item/ListAppInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 42
    const-class v1, Lcom/baidu/launcher/data/DisableDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/data/DisableDataManager;->mInstance:Lcom/baidu/launcher/data/DisableDataManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/baidu/launcher/data/DisableDataManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/data/DisableDataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/data/DisableDataManager;->mInstance:Lcom/baidu/launcher/data/DisableDataManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/baidu/launcher/data/DisableDataManager;->mInstance:Lcom/baidu/launcher/data/DisableDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDouble(Lcom/baidu/launcher/data/item/ListAppInfo;)Z
    .locals 9
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 227
    if-nez p1, :cond_0

    move v0, v7

    .line 234
    :goto_0
    return v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$Disable;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "intent = ?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v8

    .line 232
    goto :goto_0

    :cond_1
    move v0, v7

    .line 234
    goto :goto_0
.end method

.method private updateAppListData(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 81
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "itemType"

    iget v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    sget-object v1, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/DisableDataManager$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/data/DisableDataManager$1;-><init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListAppInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method private updateDisableFromDB(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 144
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "itemType"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v1, "isDisable"

    iget-boolean v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 147
    sget-object v1, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/DisableDataManager$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/data/DisableDataManager$5;-><init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListAppInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method private updateHomeData(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "itemType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    sget-object v1, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/DisableDataManager$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/data/DisableDataManager$2;-><init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListAppInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method private updateHomeDataToDisable(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 5
    .parameter "listAppInfo"

    .prologue
    .line 127
    iget-object v3, p0, Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 128
    .local v1, mPm:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v1, v4}, Lcom/baidu/launcher/data/HomeDataManager;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-result-object v0

    .line 129
    .local v0, homeItemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;
    if-eqz v0, :cond_0

    .line 130
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "itemType"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    sget-object v3, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/launcher/data/DisableDataManager$4;

    invoke-direct {v4, p0, p1, v2}, Lcom/baidu/launcher/data/DisableDataManager$4;-><init>(Lcom/baidu/launcher/data/DisableDataManager;Lcom/baidu/launcher/data/item/ListAppInfo;Landroid/content/ContentValues;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public addItemToDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 54
    .local v0, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-direct {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->isDouble(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->updateDisableFromDBS(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 71
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    .local v1, mPm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "itemType"

    iget v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v3, "intent"

    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "package"

    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "activity"

    iget-object v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "isDisable"

    iget-boolean v4, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 66
    const-string v3, "visible"

    iget-boolean v4, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 67
    iget-object v3, p0, Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/baidu/launcher/data/LauncherSettings$Disable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 70
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->updateDisableFromDBS(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_0
.end method

.method public deleteAndUpdateDisableFromDB(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 73
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 74
    .local v0, listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    const/16 v1, 0xa

    iput v1, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    .line 76
    invoke-direct {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->updateAppListData(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 77
    invoke-direct {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->deleteDisableFromDB(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 78
    invoke-direct {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->updateHomeData(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 79
    return-void
.end method

.method public getDisableApp(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "selection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v9, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Disable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 179
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :try_start_0
    const-string v1, "intent"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 183
    .local v15, intentIndex:I
    const-string v1, "title"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 185
    .local v19, titleIndex:I
    const-string v1, "package"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 187
    .local v18, packageIndex:I
    const-string v1, "itemType"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 189
    .local v17, itemtypeIndex:I
    const-string v1, "activity"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 191
    .local v7, activityIndex:I
    const-string v1, "isDisable"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 193
    .local v16, isDisableIndex:I
    const-string v1, "visible"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 200
    .local v20, visibleIndex:I
    :cond_0
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 202
    .local v14, intentDescription:Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v14, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 206
    .local v13, intent:Landroid/content/Intent;
    :try_start_2
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 207
    .local v11, componentName:Landroid/content/ComponentName;
    if-nez v11, :cond_2

    .line 217
    .end local v11           #componentName:Landroid/content/ComponentName;
    .end local v13           #intent:Landroid/content/Intent;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    .end local v7           #activityIndex:I
    .end local v14           #intentDescription:Ljava/lang/String;
    .end local v15           #intentIndex:I
    .end local v16           #isDisableIndex:I
    .end local v17           #itemtypeIndex:I
    .end local v18           #packageIndex:I
    .end local v19           #titleIndex:I
    .end local v20           #visibleIndex:I
    :cond_1
    :goto_1
    return-object v9

    .line 203
    .restart local v7       #activityIndex:I
    .restart local v14       #intentDescription:Ljava/lang/String;
    .restart local v15       #intentIndex:I
    .restart local v16       #isDisableIndex:I
    .restart local v17       #itemtypeIndex:I
    .restart local v18       #packageIndex:I
    .restart local v19       #titleIndex:I
    .restart local v20       #visibleIndex:I
    :catch_0
    move-exception v12

    .line 204
    .local v12, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 208
    .end local v12           #e:Ljava/net/URISyntaxException;
    .restart local v11       #componentName:Landroid/content/ComponentName;
    .restart local v13       #intent:Landroid/content/Intent;
    :cond_2
    new-instance v8, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct {v8}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>()V

    .line 209
    .local v8, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    .line 210
    iput-object v11, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 211
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    .line 212
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    .line 213
    const/4 v1, 0x5

    iput v1, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 214
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    .line 215
    iput-object v13, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    .line 216
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 218
    .end local v7           #activityIndex:I
    .end local v8           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v11           #componentName:Landroid/content/ComponentName;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #intentDescription:Ljava/lang/String;
    .end local v15           #intentIndex:I
    .end local v16           #isDisableIndex:I
    .end local v17           #itemtypeIndex:I
    .end local v18           #packageIndex:I
    .end local v19           #titleIndex:I
    .end local v20           #visibleIndex:I
    :catch_1
    move-exception v12

    .line 220
    .local v12, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 211
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #activityIndex:I
    .restart local v8       #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .restart local v11       #componentName:Landroid/content/ComponentName;
    .restart local v13       #intent:Landroid/content/Intent;
    .restart local v14       #intentDescription:Ljava/lang/String;
    .restart local v15       #intentIndex:I
    .restart local v16       #isDisableIndex:I
    .restart local v17       #itemtypeIndex:I
    .restart local v18       #packageIndex:I
    .restart local v19       #titleIndex:I
    .restart local v20       #visibleIndex:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 212
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public updateDisableFromDBS(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 117
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 119
    .local v0, listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    const/16 v1, 0x14

    iput v1, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    .line 121
    invoke-direct {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->updateAppListData(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 122
    invoke-direct {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->updateDisableFromDB(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/baidu/launcher/data/DisableDataManager;->updateHomeDataToDisable(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 124
    return-void
.end method

.method public updateHomeDataFormSamePackageName(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v0, values:Landroid/content/ContentValues;
    iget-boolean v1, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isDisable:Z

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "itemType"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    :goto_0
    sget-object v1, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/data/DisableDataManager$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/launcher/data/DisableDataManager$3;-><init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void

    .line 107
    :cond_0
    const-string v1, "itemType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public updateItemToStart(Landroid/content/Intent;Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    .locals 7
    .parameter "intent"
    .parameter "info"

    .prologue
    const/16 v6, 0x14

    const/4 v3, 0x0

    .line 237
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v2, values:Landroid/content/ContentValues;
    const-string v0, "isDisable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    const-string v0, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v4, values2:Landroid/content/ContentValues;
    const-string v0, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v5, values3:Landroid/content/ContentValues;
    const-string v0, "itemType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    sget-object v6, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/data/DisableDataManager$7;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/data/DisableDataManager$7;-><init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Landroid/content/Intent;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public updateItemVisableInDB(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 256
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 257
    .local v0, listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "visible"

    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 259
    sget-object v2, Lcom/baidu/launcher/data/DisableDataManager;->disableWorker:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/data/DisableDataManager$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/launcher/data/DisableDataManager$8;-><init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListAppInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method
