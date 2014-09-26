.class public Lcom/baidu/launcher/data/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# static fields
.field public static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/baidu/launcher/data/IconCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/data/IconCache;)V
    .locals 2
    .parameter "iconCache"

    .prologue
    const/16 v1, 0x2a

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->added:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    .line 60
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 198
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    .restart local v0       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const/4 v3, 0x0

    .line 224
    if-nez p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v3

    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 226
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 227
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 228
    .local v2, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v4, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    const/4 v3, 0x1

    goto :goto_0

    .line 226
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 212
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    const/4 v4, 0x1

    .line 217
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/launcher/data/item/ListAppInfo;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 239
    iget-object v3, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 240
    .local v2, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v3, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 241
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/baidu/launcher/data/item/ListAppInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/baidu/launcher/data/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addAppAndInit(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 15
    .parameter "context"
    .parameter "packages"

    .prologue
    .line 250
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v10, savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/baidu/launcher/data/AppsDataManager;->loadSavedApp(Ljava/util/ArrayList;)V

    .line 252
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/baidu/launcher/data/AppsDataManager;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v2

    .line 254
    .local v2, allFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListFolderInfo;>;"
    move-object/from16 v0, p2

    array-length v1, v0

    .line 256
    .local v1, N:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 257
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 258
    aget-object v11, p2, v5

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/baidu/launcher/data/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 259
    .local v8, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 260
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 261
    .local v7, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v11, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-direct {v3, v7, v11}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/baidu/launcher/data/IconCache;)V

    .line 262
    .local v3, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v11

    iget-object v12, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11, v10, v12}, Lcom/baidu/launcher/data/AppsDataManager;->findSavedApp(Ljava/util/ArrayList;Landroid/content/ComponentName;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v9

    .line 264
    .local v9, saved:Lcom/baidu/launcher/data/item/ListAppInfo;
    if-eqz v9, :cond_1

    .line 265
    iget-wide v11, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    iput-wide v11, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    .line 266
    iget v11, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    iput v11, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 267
    iget-wide v11, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    iput-wide v11, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 268
    iget-boolean v11, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    iput-boolean v11, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    .line 269
    iget-boolean v11, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    iput-boolean v11, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    .line 270
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/data/AllAppsList;->add(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 271
    iget-wide v11, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    const-wide/16 v13, -0x3e8

    cmp-long v11, v11, v13

    if-eqz v11, :cond_0

    .line 272
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v11

    iget-wide v12, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    invoke-virtual {v11, v2, v12, v13}, Lcom/baidu/launcher/data/AppsDataManager;->findSavedFolder(Ljava/util/ArrayList;J)Lcom/baidu/launcher/data/item/ListFolderInfo;

    move-result-object v4

    .line 274
    .local v4, folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {v4, v3}, Lcom/baidu/launcher/data/item/ListFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 279
    .end local v4           #folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/data/AllAppsList;->add(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    goto :goto_1

    .line 257
    .end local v3           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v9           #saved:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 288
    .end local v5           #i:I
    .end local v8           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    return-void
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 96
    invoke-static {p1, p2}, Lcom/baidu/launcher/data/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 99
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v4, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-direct {v3, v1, v4}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/baidu/launcher/data/IconCache;)V

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/data/AllAppsList;->add(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    goto :goto_0

    .line 103
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    return-void
.end method

.method public get(I)Lcom/baidu/launcher/data/item/ListAppInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    .line 110
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const/4 v2, 0x0

    .line 111
    .local v2, find:Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 112
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 113
    .local v4, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v5, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    iget-object v5, p0, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 117
    const/4 v2, 0x1

    .line 111
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 120
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v4           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 122
    new-instance v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct {v4}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>()V

    .line 123
    .restart local v4       #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iput-object v5, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    .line 124
    iget-object v5, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    new-instance v5, Landroid/content/ComponentName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 126
    iget-object v5, p0, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v4           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-virtual {v5}, Lcom/baidu/launcher/data/IconCache;->flush()V

    .line 130
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-static {p1, p2}, Lcom/baidu/launcher/data/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 137
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 140
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 141
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 142
    .local v1, applicationInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v8, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 143
    .local v2, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    invoke-static {v6, v2}, Lcom/baidu/launcher/data/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 145
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-virtual {v8, v2}, Lcom/baidu/launcher/data/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 147
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 140
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 154
    .end local v1           #applicationInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v2           #component:Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 155
    .local v3, count:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    .line 156
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 157
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/baidu/launcher/data/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v1

    .line 160
    .restart local v1       #applicationInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    if-nez v1, :cond_3

    .line 161
    new-instance v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-direct {v0, v5, v8}, Lcom/baidu/launcher/data/item/ListAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/baidu/launcher/data/IconCache;)V

    .line 162
    .local v0, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-static {p1}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    iget-object v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, p3, v9}, Lcom/baidu/launcher/data/AppsDataManager;->findSavedApp(Ljava/util/ArrayList;Landroid/content/ComponentName;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v7

    .line 164
    .local v7, saved:Lcom/baidu/launcher/data/item/ListAppInfo;
    if-eqz v7, :cond_2

    .line 165
    iget-wide v8, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    iput-wide v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->id:J

    .line 166
    iget v8, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    iput v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 167
    iget-wide v8, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    iput-wide v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 168
    iget-boolean v8, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    iput-boolean v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    .line 169
    iget-boolean v8, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    iput-boolean v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    .line 171
    :cond_2
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/data/AllAppsList;->add(Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    .line 155
    .end local v0           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v7           #saved:Lcom/baidu/launcher/data/item/ListAppInfo;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    :cond_3
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    iget-object v9, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/data/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 174
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-virtual {v8, v1, v5}, Lcom/baidu/launcher/data/IconCache;->getTitleAndIcon(Lcom/baidu/launcher/data/item/ListAppInfo;Landroid/content/pm/ResolveInfo;)V

    .line 175
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 180
    .end local v1           #applicationInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .restart local v4       #i:I
    :goto_3
    if-ltz v4, :cond_6

    .line 181
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 182
    .restart local v1       #applicationInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v8, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 183
    .restart local v2       #component:Landroid/content/ComponentName;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 184
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->mIconCache:Lcom/baidu/launcher/data/IconCache;

    invoke-virtual {v8, v2}, Lcom/baidu/launcher/data/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 186
    iget-object v8, p0, Lcom/baidu/launcher/data/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 190
    .end local v1           #applicationInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v2           #component:Landroid/content/ComponentName;
    :cond_6
    return-void
.end method
