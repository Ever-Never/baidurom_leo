.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;
.super Ljava/lang/Object;
.source "AppProcessManager.java"


# static fields
.field public static final FETCH_TYPE_ALL:I = 0x0

.field public static final FETCH_TYPE_CLEANABLE:I = 0x1

.field static final MAX_SERVICES:I = 0x96

.field public static final PROTECT_TYPE_NO_PROTECTION:I = 0x0

.field public static final PROTECT_TYPE_SYSTEM_DEPENDENCE:I = 0x1

.field public static final PROTECT_TYPE_USER_KEEP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "YiProcessManager"

.field private static sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;


# instance fields
.field private final mAm:Landroid/app/ActivityManager;

.field private final mAppRunningState:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;

.field private final mApplicationContext:Landroid/content/Context;

.field public mLockedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSecondaryServerMem:J

.field private mSharedPre:Landroid/content/SharedPreferences;

.field private mSharedPreEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mApplicationContext:Landroid/content/Context;

    .line 62
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mApplicationContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    .line 63
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mPm:Landroid/content/pm/PackageManager;

    .line 64
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v5, v6, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;-><init>(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;)V

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAppRunningState:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;

    .line 66
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mProtectedApps:Ljava/util/HashSet;

    .line 67
    sget-object v5, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 68
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 69
    .local v4, pkg:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #pkg:Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 74
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 75
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 76
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 77
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    iget-wide v5, v3, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mSecondaryServerMem:J

    .line 85
    :goto_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mApplicationContext:Landroid/content/Context;

    const-string v6, "lockedApps"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mSharedPre:Landroid/content/SharedPreferences;

    .line 86
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mSharedPre:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mSharedPreEditor:Landroid/content/SharedPreferences$Editor;

    .line 87
    return-void

    .line 81
    :cond_1
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mSecondaryServerMem:J

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    .line 101
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    return-object v0
.end method

.method private procsToApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, appProcItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 256
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 270
    :goto_0
    return-object v4

    .line 259
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 260
    .local v3, mergedApps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .line 261
    .local v2, item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    iget-object v4, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 262
    .local v0, appInfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    if-nez v0, :cond_2

    .line 263
    iget-object v4, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    invoke-direct {v5, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 266
    :cond_2
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->addItem(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;)V

    goto :goto_1

    .line 270
    .end local v0           #appInfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .end local v2           #item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public appIsLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public cleanApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 280
    if-nez p1, :cond_1

    .line 286
    :cond_0
    return-void

    .line 283
    :cond_1
    iget-object v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .line 284
    .local v1, item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->cleanMergedItem(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;)V

    goto :goto_0
.end method

.method public cleanMergedItem(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 295
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 177
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, ptype:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCleanableApps()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAppRunningState:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->reset()V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAppRunningState:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAppRunningState:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->getCurrentFilteredMergedItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 199
    .local v13, procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAppRunningState:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->getCurrentFilteredBackgroundItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 200
    .local v5, backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    if-nez v13, :cond_0

    const/4 v14, 0x0

    .line 201
    .local v14, pwsLen:I
    :goto_0
    if-nez v5, :cond_1

    const/4 v6, 0x0

    .line 204
    .local v6, bgpLen:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getLockedApps()[Ljava/lang/String;

    move-result-object v12

    .line 205
    .local v12, lockedAppsArray:[Ljava/lang/String;
    new-instance v11, Ljava/util/HashSet;

    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 206
    .local v11, lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v4, v12

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v10, :cond_2

    aget-object v2, v4, v7

    .line 207
    .local v2, app:Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 200
    .end local v2           #app:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #bgpLen:I
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v11           #lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12           #lockedAppsArray:[Ljava/lang/String;
    .end local v14           #pwsLen:I
    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    goto :goto_0

    .line 201
    .restart local v14       #pwsLen:I
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_1

    .line 210
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #bgpLen:I
    .restart local v7       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12       #lockedAppsArray:[Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    add-int v17, v14, v6

    move/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v3, appProcItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    if-lez v14, :cond_7

    .line 214
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7           #i$:I
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .line 215
    .local v9, item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 216
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mIsLocked:Z

    .line 220
    :cond_4
    const/4 v15, 0x0

    .line 221
    .local v15, restarting:Z
    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    .line 222
    .local v16, service:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_5

    .line 223
    const/4 v15, 0x1

    .line 224
    const-string v17, "YiProcessManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "restarting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mLabel:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSize:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 227
    .end local v16           #service:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    :cond_6
    if-nez v15, :cond_3

    .line 228
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 232
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    .end local v15           #restarting:Z
    :cond_7
    if-lez v6, :cond_d

    .line 233
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .line 235
    .restart local v9       #item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_8

    .line 239
    :cond_9
    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 240
    :cond_a
    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 243
    :cond_b
    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-object v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 244
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v9, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mIsLocked:Z

    .line 247
    :cond_c
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 251
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->procsToApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    return-object v17
.end method

.method public getLockedApps()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    if-nez v2, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->initLockedAppsArray()V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 375
    .local v0, apps:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_1
    return-object v0
.end method

.method public getMemFreeSize()J
    .locals 4

    .prologue
    .line 440
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 441
    .local v2, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 442
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 443
    .local v0, freeMem:J
    return-wide v0
.end method

.method public getMemTotalSize()J
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtectionType(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 533
    if-nez p1, :cond_1

    .line 534
    const/4 v0, 0x0

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    const/4 v0, 0x0

    .line 538
    .local v0, retVal:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getRunningAppProcesses(I)Ljava/util/List;
    .locals 12
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 498
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 499
    .local v6, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v6, :cond_1

    .line 500
    const/4 v6, 0x0

    .line 521
    .end local v6           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    return-object v6

    .line 503
    .restart local v6       #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    if-ne p1, v11, :cond_0

    .line 504
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 505
    .local v2, it:Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 506
    .local v7, ptype:I
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 507
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 508
    .local v5, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 509
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v7

    .line 511
    const-string v8, "YiProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "YiProcessManager.getRunningProcesses(), getProtectionType("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    if-eq v7, v11, :cond_3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 514
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 508
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getRunningServices(I)Ljava/util/List;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 457
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 458
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_1

    .line 459
    const/4 v3, 0x0

    .line 485
    .end local v3           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    return-object v3

    .line 462
    .restart local v3       #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_1
    if-ne p1, v7, :cond_0

    .line 463
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 464
    .local v0, it:Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 465
    .local v1, ptype:I
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 467
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v1

    .line 469
    const-string v4, "YiProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YiProcessManager.getRunningServices(), getProtectionType(PROC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-nez v1, :cond_3

    .line 472
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 473
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v1

    .line 475
    const-string v4, "YiProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YiProcessManager.getRunningServices(), getProtectionType(PKG:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_3
    if-eq v1, v7, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 480
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public initLockedAppsArray()V
    .locals 9

    .prologue
    .line 395
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    .line 396
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mSharedPre:Landroid/content/SharedPreferences;

    const-string v7, "lockedApps"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, s:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 402
    :cond_0
    return-void

    .line 398
    :cond_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, apps:[Ljava/lang/String;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 400
    .local v0, app:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public lockApp(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->initLockedAppsArray()V

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    return-void
.end method

.method public lockApps([Ljava/lang/String;)V
    .locals 5
    .parameter "packageNameArray"

    .prologue
    .line 325
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    if-nez v4, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->initLockedAppsArray()V

    .line 328
    :cond_0
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 329
    .local v0, app:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->lockApp(Ljava/lang/String;)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v0           #app:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public saveLockedApps()V
    .locals 5

    .prologue
    .line 405
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 409
    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 410
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mSharedPreEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "lockedApps"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public stopAppServices(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 136
    :cond_0
    return-void
.end method

.method public stopBackgroundAppProcess(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, ptype:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopService(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "cmpName"

    .prologue
    .line 111
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, ptype:I
    const-string v1, "YiProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YiProcessManager.stopService("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public unlockApp(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->initLockedAppsArray()V

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 346
    :cond_1
    return-void
.end method

.method public unlockApps([Ljava/lang/String;)V
    .locals 5
    .parameter "packageNameArray"

    .prologue
    .line 355
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->mLockedApps:Ljava/util/List;

    if-nez v4, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->initLockedAppsArray()V

    .line 358
    :cond_0
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 359
    .local v0, app:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->unlockApps([Ljava/lang/String;)V

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v0           #app:Ljava/lang/String;
    :cond_1
    return-void
.end method
