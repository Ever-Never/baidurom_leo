.class public Lcom/baidu/launcher/app/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;
    }
.end annotation


# static fields
.field public static ISBAIDUTHEMEEXIST:Z = false

.field public static IS_BAIDU_SYSTEM:Z = false

.field public static MAX_OUTER_BLUR_RADIUS:I = 0x0

.field public static SCREEN_HEIGHT:I = 0x0

.field public static SCREEN_WIDTH:I = 0x0

.field public static SDK_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field public static appRebooting:Z

.field public static bLoadNewTheme:Z

.field public static configString:Ljava/lang/String;

.field public static density:F

.field public static densityDpi:I

.field public static densityString:Ljava/lang/String;

.field private static mAppContext:Landroid/content/Context;

.field public static final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public static onlyPortait:Z

.field public static startTime:J


# instance fields
.field public handler:Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

.field private mAppsManager:Lcom/baidu/launcher/data/AppsDataManager;

.field private mThemeChangeReceiver:Lcom/baidu/launcher/app/ThemeChangeReceiver;

.field public mUpdateManager:Lcom/baidu/launcher/update/UpdateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    sput-boolean v2, Lcom/baidu/launcher/app/LauncherApplication;->IS_BAIDU_SYSTEM:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    .line 54
    const-string v0, "hdpi"

    sput-object v0, Lcom/baidu/launcher/app/LauncherApplication;->densityString:Ljava/lang/String;

    .line 58
    const/16 v0, 0xe

    sput v0, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    .line 63
    sput-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->ISBAIDUTHEMEEXIST:Z

    .line 65
    sput-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->bLoadNewTheme:Z

    .line 66
    sput-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    .line 72
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/app/LauncherApplication;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    sput-boolean v2, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 73
    new-instance v0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;-><init>(Lcom/baidu/launcher/app/LauncherApplication;)V

    iput-object v0, p0, Lcom/baidu/launcher/app/LauncherApplication;->handler:Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

    .line 306
    return-void
.end method

.method private SaveScreenSize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 189
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    .local v2, size:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 191
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 192
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;

    move-result-object v0

    .line 193
    .local v0, config:Lcom/inveno/newpiflow/tools/DeviceConfig;
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/tools/DeviceConfig;->setHeight(I)V

    .line 194
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/tools/DeviceConfig;->setWidth(I)V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u624b\u673a\u5c4f\u5e55:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/LogTools;->showLogB(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/app/LauncherApplication;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/LauncherApplication;->setWallpaperDimension(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/app/LauncherApplication;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/launcher/app/LauncherApplication;->updateView()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/baidu/launcher/app/LauncherApplication;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private static initDensity(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 238
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v2, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 240
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 241
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/baidu/launcher/app/LauncherApplication;->SCREEN_WIDTH:I

    .line 242
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/baidu/launcher/app/LauncherApplication;->SCREEN_HEIGHT:I

    .line 243
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/baidu/launcher/app/LauncherApplication;->density:F

    .line 244
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/baidu/launcher/app/LauncherApplication;->densityDpi:I

    .line 245
    sget v2, Lcom/baidu/launcher/app/LauncherApplication;->densityDpi:I

    packed-switch v2, :pswitch_data_0

    .line 250
    :goto_0
    sget v2, Lcom/baidu/launcher/app/LauncherApplication;->density:F

    const/high16 v3, 0x4140

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/baidu/launcher/app/LauncherApplication;->MAX_OUTER_BLUR_RADIUS:I

    .line 251
    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    .line 252
    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    .line 253
    return-void

    .line 247
    :pswitch_0
    const-string v2, "xhdpi"

    sput-object v2, Lcom/baidu/launcher/app/LauncherApplication;->densityString:Ljava/lang/String;

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x140
        :pswitch_0
    .end packed-switch
.end method

.method private initPreference()V
    .locals 6

    .prologue
    .line 200
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "first_launch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    .local v0, firstRun:Z
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherApplication;->handler:Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

    new-instance v3, Lcom/baidu/launcher/app/LauncherApplication$1;

    invoke-direct {v3, p0, v0}, Lcom/baidu/launcher/app/LauncherApplication$1;-><init>(Lcom/baidu/launcher/app/LauncherApplication;Z)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    invoke-direct {p0, v1}, Lcom/baidu/launcher/app/LauncherApplication;->updatePref(Landroid/content/SharedPreferences;)V

    .line 209
    invoke-static {p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->init(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public static isKitKat()Z
    .locals 2

    .prologue
    .line 280
    sget v0, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDKICE()Z
    .locals 2

    .prologue
    .line 290
    sget v0, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDKJB()Z
    .locals 2

    .prologue
    .line 272
    sget v0, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDKJBMR1()Z
    .locals 2

    .prologue
    .line 262
    sget v0, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDefaultConfiguration()V
    .locals 0

    .prologue
    .line 344
    invoke-static {p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loadDefaultConfiguration(Landroid/content/Context;)V

    .line 345
    return-void
.end method

.method private loadFilterApps()V
    .locals 0

    .prologue
    .line 352
    invoke-static {p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loadFilterApps(Landroid/content/Context;)V

    .line 353
    return-void
.end method

.method private loadTopAndFilterApps()V
    .locals 0

    .prologue
    .line 356
    invoke-static {p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loadTopAndFilterApps(Landroid/content/Context;)V

    .line 357
    return-void
.end method

.method private loadTopApps()V
    .locals 0

    .prologue
    .line 348
    invoke-static {p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loadTopApps(Landroid/content/Context;)V

    .line 349
    return-void
.end method

.method private static setAppContext(Landroid/content/Context;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 360
    sput-object p0, Lcom/baidu/launcher/app/LauncherApplication;->mAppContext:Landroid/content/Context;

    .line 361
    return-void
.end method

.method private setWallpaperDimension(Z)V
    .locals 9
    .parameter "firstRun"

    .prologue
    .line 213
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 214
    .local v6, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 216
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 217
    .local v4, maxDim:I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 222
    .local v5, minDim:I
    mul-int/lit8 v3, v5, 0x2

    .line 223
    .local v3, mWallpaperWidth:I
    move v2, v4

    .line 225
    .local v2, mWallpaperHeight:I
    if-eqz p1, :cond_0

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v7

    if-ge v7, v3, :cond_0

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v7

    if-nez v7, :cond_0

    .line 227
    :try_start_0
    invoke-virtual {v6, v3, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 228
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v7

    if-le v7, v3, :cond_1

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v7

    if-gt v7, v2, :cond_2

    .line 234
    :cond_1
    invoke-virtual {v6, v3, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 235
    :cond_2
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/io/IOException;
    const-string v7, "LauncherApplication"

    const-string v8, "Wallpaper reset failed"

    invoke-static {v7, v8, v1}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updatePref(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    .line 366
    const-string v3, "key_version"

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_version"

    const-string v5, "1.0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 369
    .local v2, metric:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 370
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 371
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 372
    .local v0, densityDpi:I
    const/16 v3, 0xf0

    if-le v0, v3, :cond_1

    .line 373
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_app_icon_size"

    const/16 v5, 0x3c

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    .end local v0           #densityDpi:I
    .end local v1           #manager:Landroid/view/WindowManager;
    .end local v2           #metric:Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    return-void

    .line 376
    .restart local v0       #densityDpi:I
    .restart local v1       #manager:Landroid/view/WindowManager;
    .restart local v2       #metric:Landroid/util/DisplayMetrics;
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_app_icon_size"

    const/16 v5, 0x38

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 382
    invoke-static {p0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/app/ThemeChangeReceiver;

    move-result-object v0

    .line 383
    .local v0, tcr:Lcom/baidu/launcher/app/ThemeChangeReceiver;
    invoke-virtual {v0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->notifyChange()V

    .line 384
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 20

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sput-wide v15, Lcom/baidu/launcher/app/LauncherApplication;->startTime:J

    .line 86
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 89
    invoke-static/range {p0 .. p0}, Lcom/baidu/bulletin/utils/BulletinUBC;->init(Landroid/content/Context;)V

    .line 90
    invoke-static/range {p0 .. p0}, Lcom/inveno/newpiflow/tools/InvenoUBC;->init(Landroid/content/Context;)V

    .line 91
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getConfigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    .line 92
    sget-object v15, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    if-nez v15, :cond_0

    const-string v15, "empty"

    sput-object v15, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    .line 93
    :cond_0
    sget-object v15, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    const-string v16, "000"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    sput-boolean v15, Lcom/baidu/launcher/app/LauncherApplication;->IS_BAIDU_SYSTEM:Z

    .line 95
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 97
    const-string v14, ""

    .line 99
    .local v14, processName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    .line 100
    .local v13, pid:I
    const-string v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/baidu/launcher/app/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    .line 101
    .local v12, mActivityManager:Landroid/app/ActivityManager;
    invoke-virtual {v12}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 103
    .local v2, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v15, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v15, v13, :cond_1

    .line 105
    iget-object v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 108
    .end local v2           #appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const-string v15, "LauncherApplication"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LauncherApplication start process "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->initDensity(Landroid/content/Context;)V

    .line 112
    sget-boolean v15, Lcom/baidu/launcher/app/LauncherApplication;->IS_BAIDU_SYSTEM:Z

    if-eqz v15, :cond_3

    .line 113
    new-instance v5, Landroid/content/ComponentName;

    const-string v15, "com.baidu.home2"

    const-string v16, "com.baidu.launcher2.thememanager.ui.BaiduThemeActivity"

    move-object/from16 v0, v16

    invoke-direct {v5, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v5, localComponentName:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 115
    new-instance v6, Landroid/content/ComponentName;

    const-string v15, "com.baidu.home2"

    const-string v16, "com.baidu.launcher.thememanager.ui.OpenThemeActivity"

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v6, localComponentName2:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v6, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 117
    new-instance v7, Landroid/content/ComponentName;

    const-string v15, "com.baidu.home2"

    const-string v16, "com.baidu.launcher.thememanager.service.ThemeReceiver"

    move-object/from16 v0, v16

    invoke-direct {v7, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v7, localComponentName3:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v7, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 119
    new-instance v8, Landroid/content/ComponentName;

    const-string v15, "com.baidu.home2"

    const-string v16, "com.baidu.launcher.thememanager.service.ThemeProvider"

    move-object/from16 v0, v16

    invoke-direct {v8, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v8, localComponentName4:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v8, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 121
    new-instance v9, Landroid/content/ComponentName;

    const-string v15, "com.baidu.home2"

    const-string v16, "com.baidu.launcher.thememanager.service.FetchThemeDataService"

    move-object/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v9, localComponentName5:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 123
    new-instance v10, Landroid/content/ComponentName;

    const-string v15, "com.baidu.home2"

    const-string v16, "com.baidu.launcher.thememanager.ui.BaiduWallpaperActivity"

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v10, localComponentName6:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v10, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 125
    const/4 v15, 0x1

    sput-boolean v15, Lcom/baidu/launcher/app/LauncherApplication;->ISBAIDUTHEMEEXIST:Z

    .line 128
    .end local v5           #localComponentName:Landroid/content/ComponentName;
    .end local v6           #localComponentName2:Landroid/content/ComponentName;
    .end local v7           #localComponentName3:Landroid/content/ComponentName;
    .end local v8           #localComponentName4:Landroid/content/ComponentName;
    .end local v9           #localComponentName5:Landroid/content/ComponentName;
    .end local v10           #localComponentName6:Landroid/content/ComponentName;
    :cond_3
    sget-object v15, Lcom/baidu/launcher/app/LauncherApplication;->configString:Ljava/lang/String;

    const-string v16, "002"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 129
    new-instance v11, Landroid/content/ComponentName;

    const-string v15, "com.baidu.home2"

    const-string v16, "com.baidu.launcher.ui.widget.baidu.weather.service.impl.UpdateService"

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v11, localComponentName7:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v11, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 133
    .end local v11           #localComponentName7:Landroid/content/ComponentName;
    :cond_4
    const-string v15, "com.baidu.home2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->initPreference()V

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loadTopAndFilterApps(Landroid/content/Context;)V

    .line 139
    invoke-static {}, Lcom/baidu/launcher/utils/DesktopMover;->getInstance()Lcom/baidu/launcher/utils/DesktopMover;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/baidu/launcher/utils/DesktopMover;->setContext(Landroid/content/Context;)V

    .line 141
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/baidu/launcher/app/LauncherApplication;->mAppsManager:Lcom/baidu/launcher/data/AppsDataManager;

    .line 143
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/app/ThemeChangeReceiver;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/baidu/launcher/app/LauncherApplication;->mThemeChangeReceiver:Lcom/baidu/launcher/app/ThemeChangeReceiver;

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/update/UpdateManager;->getInastance(Landroid/content/Context;)Lcom/baidu/launcher/update/UpdateManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/baidu/launcher/app/LauncherApplication;->mUpdateManager:Lcom/baidu/launcher/update/UpdateManager;

    .line 148
    new-instance v3, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v15, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v15, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v15, "package"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/app/LauncherApplication;->mAppsManager:Lcom/baidu/launcher/data/AppsDataManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/baidu/launcher/app/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/app/LauncherApplication;->mAppsManager:Lcom/baidu/launcher/data/AppsDataManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/baidu/launcher/app/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v15, "com.baidu.launcher.theme.changed"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v15, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/app/LauncherApplication;->mThemeChangeReceiver:Lcom/baidu/launcher/app/ThemeChangeReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/baidu/launcher/app/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v15, "com.baidu.launcher.update_confirm"

    invoke-virtual {v3, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/app/LauncherApplication;->mUpdateManager:Lcom/baidu/launcher/update/UpdateManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/baidu/launcher/app/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    sget-object v15, Lcom/baidu/launcher/app/LauncherApplication;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v16, Lcom/baidu/launcher/app/InitTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/app/InitTask;-><init>(Landroid/content/Context;)V

    const-wide/16 v17, 0x2710

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v15 .. v19}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 179
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_5
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/app/LauncherApplication;->setAppContext(Landroid/content/Context;)V

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/app/LauncherApplication;->SaveScreenSize(Landroid/content/Context;)V

    .line 182
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 183
    return-void

    .line 173
    :cond_6
    const-string v15, "com.baidu.launcher.theme"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 176
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->registerMonitor(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 300
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherApplication;->mAppsManager:Lcom/baidu/launcher/data/AppsDataManager;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherApplication;->mUpdateManager:Lcom/baidu/launcher/update/UpdateManager;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherApplication;->mThemeChangeReceiver:Lcom/baidu/launcher/app/ThemeChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/launcher/app/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->unregisterMonitor(Landroid/content/Context;)V

    .line 304
    return-void
.end method
