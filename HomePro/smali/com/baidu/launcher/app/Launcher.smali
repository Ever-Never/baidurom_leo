.class public final Lcom/baidu/launcher/app/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;,
        Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;,
        Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;,
        Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;,
        Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;,
        Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;
    }
.end annotation


# static fields
.field private static final ACTION_CALENDAR_UPDATE:Ljava/lang/String; = "com.android.calendar.APPWIDGET_SCHEDULED_UPDATE"

.field public static final APPWIDGET_HOST_ID:I = 0x400

.field public static final MEMORY_THRESHOLD:I = 0x80000

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field public static final REQUEST_BULLETIN_OPEN:I = 0xa

.field public static final REQUEST_CREATE_APPWIDGET:I = 0x2

.field public static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field public static final REQUEST_FILL_FOLDER:I = 0x4

.field public static final REQUEST_PICK_APPWIDGET:I = 0x3

.field public static final REQUEST_PICK_WALLPAPER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Launcher"

.field private static mBulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

.field public static final mBulletinScreen:I

.field private static sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;


# instance fields
.field private aListTrimMemoryListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private isAppListViewAnim:Z

.field private isSelfRecreate:Z

.field private lastDateChangeNumber:I

.field private launcherSettingChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

.field private final mBaiduWidgetUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mBulletinMonitorReceiver:Landroid/content/BroadcastReceiver;

.field public mBulletinSettingsMenu:Landroid/view/Menu;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

.field private mGuidePager:Lcom/baidu/launcher/ui/common/GuidePagerView;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

.field private mPopupMenu:Landroid/widget/PopupWindow;

.field private mQuickLauncherMananger:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

.field private mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

.field private mStatusBarTransparent:Z

.field private mStopped:Z

.field private mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

.field private final mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mWaitingForResume:Lcom/baidu/launcher/ui/common/PressedView;

.field private mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

.field private mconfig:Landroid/content/res/Configuration;

.field private versionDisplay:Ljava/lang/String;

.field private versionParts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 178
    new-instance v0, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;-><init>(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/app/Launcher$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mBaiduWidgetUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;-><init>(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/app/Launcher$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;-><init>(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/app/Launcher$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mBulletinMonitorReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    iput-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;

    .line 212
    iput-boolean v2, p0, Lcom/baidu/launcher/app/Launcher;->mStatusBarTransparent:Z

    .line 216
    iput-boolean v2, p0, Lcom/baidu/launcher/app/Launcher;->mStopped:Z

    .line 220
    iput-object v1, p0, Lcom/baidu/launcher/app/Launcher;->versionDisplay:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/baidu/launcher/app/Launcher;->versionParts:[Ljava/lang/String;

    .line 222
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mconfig:Landroid/content/res/Configuration;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->aListTrimMemoryListener:Ljava/util/ArrayList;

    .line 241
    iput-boolean v2, p0, Lcom/baidu/launcher/app/Launcher;->isAppListViewAnim:Z

    .line 242
    iput-boolean v2, p0, Lcom/baidu/launcher/app/Launcher;->isSelfRecreate:Z

    .line 469
    new-instance v0, Lcom/baidu/launcher/app/Launcher$3;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/app/Launcher$3;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->launcherSettingChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1005
    iput-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mBulletinSettingsMenu:Landroid/view/Menu;

    .line 1653
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 835
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 836
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/app/Launcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/Launcher;->updateCalendarIcon(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/baidu/launcher/app/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/baidu/launcher/app/Launcher;->isAppListViewAnim:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/utils/EventNumberUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/app/Launcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/homeview/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/baidu/launcher/app/Launcher;->startSetting()V

    return-void
.end method

.method static synthetic access$1700(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/bulletin/ui/logic/UIController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/homeview/Indicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/baidu/launcher/app/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/baidu/launcher/app/Launcher;->mStopped:Z

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/launcher/app/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/baidu/launcher/app/Launcher;->isSelfRecreate:Z

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/baidu/launcher/app/Launcher;->checkReleaseWallpaper()V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-static {p0, p1}, Lcom/baidu/launcher/app/Launcher;->readConfiguration(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$802(Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    sput-object p0, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-static {p0, p1}, Lcom/baidu/launcher/app/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 566
    sget-object v9, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 567
    new-instance v9, Lcom/baidu/launcher/app/Launcher$4;

    invoke-direct {v9, p0}, Lcom/baidu/launcher/app/Launcher$4;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    new-array v10, v2, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/app/Launcher$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 589
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 590
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->mcc:I

    .line 593
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 595
    .local v4, mcc:I
    sget-object v9, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->mnc:I

    .line 596
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 598
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v4, v7, :cond_2

    if-eq v5, v8, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 601
    .local v2, localeChanged:Z
    :cond_3
    if-eqz v2, :cond_0

    .line 602
    sget-object v9, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 603
    sget-object v9, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->mcc:I

    .line 604
    sget-object v9, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->mnc:I

    .line 606
    invoke-static {p0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/launcher/data/AppsDataManager;->reloadAppsLabel()V

    .line 607
    invoke-static {p0}, Lcom/baidu/launcher/data/IconCache;->replaceTitle(Landroid/content/Context;)V

    .line 609
    sget-object v3, Lcom/baidu/launcher/app/Launcher;->sLocaleConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    .line 610
    .local v3, localeConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/baidu/launcher/app/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V

    goto :goto_0
.end method

.method private checkNewVersionUpdate()V
    .locals 2

    .prologue
    .line 458
    sget-object v0, Lcom/baidu/launcher/app/LauncherApplication;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/baidu/launcher/app/Launcher$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/app/Launcher$2;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 467
    return-void
.end method

.method private checkReleaseWallpaper()V
    .locals 1

    .prologue
    .line 546
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    if-nez v0, :cond_1

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 551
    :cond_1
    return-void
.end method

.method private initPersistent(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 394
    const/4 v0, 0x1

    .line 395
    .local v0, persistent:Z
    const-string v1, "system_persistent"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string v1, "system_persistent"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 404
    :goto_0
    sput-boolean v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    .line 405
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/Launcher;->setPersistent(Z)V

    .line 406
    return-void

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 401
    const-string v1, "system_persistent"

    invoke-static {p0, v1, v0}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private initUiController()V
    .locals 2

    .prologue
    .line 1616
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    .line 1617
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/ui/logic/UIController;->setLauncher(Lcom/baidu/launcher/app/Launcher;)V

    .line 1618
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/ui/logic/UIController;->setContext(Landroid/content/Context;)V

    .line 1619
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->setIndicator(Lcom/baidu/launcher/ui/homeview/Indicator;)V

    .line 1620
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    sget-object v1, Lcom/baidu/launcher/app/Launcher;->mBulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->addAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V

    .line 1621
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->setWorkspace(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    .line 1622
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 624
    const/4 v2, 0x0

    .line 626
    .local v2, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    const-string v4, "launcher.preferences"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    .end local v2           #in:Ljava/io/DataInputStream;
    .local v3, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 628
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p1, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->mcc:I

    .line 629
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p1, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 637
    if-eqz v3, :cond_2

    .line 639
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 645
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 640
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 642
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 630
    :catch_1
    move-exception v1

    .line 631
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 633
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 634
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    iput v4, p1, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->mcc:I

    .line 635
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    iput v4, p1, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;->mnc:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    if-eqz v2, :cond_0

    .line 639
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 640
    :catch_2
    move-exception v4

    goto :goto_0

    .line 637
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 639
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 642
    :cond_1
    :goto_3
    throw v4

    .line 640
    :catch_3
    move-exception v5

    goto :goto_3

    .line 637
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 630
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private relaunchActivity(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const v4, 0x7f0c000b

    const/4 v2, 0x0

    .line 1318
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1319
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1320
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1322
    .local v0, newIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1323
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1324
    invoke-direct {p0, v0, p1}, Lcom/baidu/launcher/app/Launcher;->updateNewIntent(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 1325
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1326
    const/4 v2, 0x1

    .line 1335
    .end local v0           #newIntent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 1328
    .restart local v0       #newIntent:Landroid/content/Intent;
    :cond_0
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1332
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_1
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static setBulletinLayout(Lcom/baidu/bulletin/ui/BulletinLayout;)V
    .locals 0
    .parameter "bulletinLayout"

    .prologue
    .line 1625
    sput-object p0, Lcom/baidu/launcher/app/Launcher;->mBulletinLayout:Lcom/baidu/bulletin/ui/BulletinLayout;

    .line 1626
    return-void
.end method

.method private shouldEnableBulletin()Z
    .locals 10

    .prologue
    .line 1704
    const-wide/16 v6, 0x0

    .line 1705
    .local v6, total_mem:J
    const-string v5, "/proc/meminfo"

    .line 1706
    .local v5, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1707
    .local v2, content:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1710
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x8

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1712
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1713
    move-object v2, v4

    .line 1718
    :cond_0
    if-eqz v1, :cond_4

    .line 1720
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 1727
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const-string v9, "k"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1729
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1731
    const-wide/32 v8, 0x80000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    .line 1732
    const/4 v8, 0x1

    .line 1734
    :goto_1
    return v8

    .line 1721
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1722
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 1723
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 1715
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #line:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1716
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1718
    if-eqz v0, :cond_1

    .line 1720
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1721
    :catch_2
    move-exception v3

    .line 1722
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1718
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v0, :cond_2

    .line 1720
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1723
    :cond_2
    :goto_4
    throw v8

    .line 1721
    :catch_3
    move-exception v3

    .line 1722
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1734
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1718
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1715
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_4
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private declared-synchronized showBulletinSettings(Z)V
    .locals 2
    .parameter "open"

    .prologue
    .line 1574
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1575
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletinExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->initSettings()V

    .line 1577
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/app/Launcher$10;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/app/Launcher$10;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1596
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1592
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->isSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->isInAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->unLockWorkspace(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startManageApps()V
    .locals 2

    .prologue
    .line 1421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1423
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1424
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1425
    return-void
.end method

.method private startSetting()V
    .locals 2

    .prologue
    .line 1428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v0, settings:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1431
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1432
    return-void
.end method

.method private switchState(IZLandroid/view/MenuItem;)V
    .locals 6
    .parameter "configId"
    .parameter "isSelected"
    .parameter "selectedItem"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1084
    if-ne p1, v3, :cond_1

    .line 1085
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v2

    .line 1087
    .local v2, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    invoke-virtual {v2, v4}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getConfigListItem(I)Z

    move-result v1

    .line 1089
    .local v1, select:Z
    if-nez v1, :cond_1

    .line 1106
    .end local v1           #select:Z
    .end local v2           #settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    if-nez p2, :cond_2

    move p2, v3

    .line 1093
    :goto_1
    invoke-interface {p3, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1094
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v5

    invoke-virtual {v5, v3, p1, p2}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    .line 1097
    if-nez p1, :cond_0

    .line 1098
    if-nez p2, :cond_0

    .line 1099
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v5

    invoke-virtual {v5, v3, v3, v4}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V

    .line 1101
    iget-object v3, p0, Lcom/baidu/launcher/app/Launcher;->mBulletinSettingsMenu:Landroid/view/Menu;

    const v5, 0x7f0802cf

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1102
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2
    move p2, v4

    .line 1092
    goto :goto_1
.end method

.method private updateBaiYiSearchWidget()V
    .locals 7

    .prologue
    .line 1782
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.baidu.BaiduSearchWidgetProider.widget_update"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1783
    .local v3, updateIntent:Landroid/content/Intent;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1784
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1785
    .local v2, extras:Landroid/os/Bundle;
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.baidu.home2"

    const-string v6, "com.baidu.launcher.searchbar.BaiduSearchWidgetProvider"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 1787
    .local v4, widgetIds:[I
    const-string v5, "appWidgetIds"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1788
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1789
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1790
    return-void
.end method

.method private updateCalendarIcon(I)V
    .locals 8
    .parameter "day"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1675
    iget v2, p0, Lcom/baidu/launcher/app/Launcher;->lastDateChangeNumber:I

    if-ne p1, v2, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    iput p1, p0, Lcom/baidu/launcher/app/Launcher;->lastDateChangeNumber:I

    .line 1679
    invoke-static {p0}, Lcom/baidu/launcher/data/IconCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/IconCache;

    move-result-object v7

    .line 1680
    .local v7, iconCache:Lcom/baidu/launcher/data/IconCache;
    invoke-virtual {v7, p1}, Lcom/baidu/launcher/data/IconCache;->reloadCalendarIcon(I)V

    .line 1681
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 1682
    sget-object v2, Lcom/baidu/launcher/data/IconCache;->calendarComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v2}, Lcom/baidu/launcher/data/IconCache;->getFastIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1683
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1685
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1686
    .local v5, mMatrix:Landroid/graphics/Matrix;
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1688
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1690
    invoke-static {p0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/data/AppsDataManager;->updateCalendarIcon(Landroid/graphics/Bitmap;)V

    .line 1691
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/editview/EditView;->updateCalendarIcon(Landroid/graphics/Bitmap;)V

    .line 1692
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateCalendarIcon(Landroid/graphics/Bitmap;)V

    .line 1693
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateCalendarIcon(Landroid/graphics/Bitmap;)V

    .line 1694
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->updateCalendarIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1696
    .end local v0           #icon:Landroid/graphics/Bitmap;
    .end local v5           #mMatrix:Landroid/graphics/Matrix;
    :cond_2
    invoke-static {p0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/data/AppsDataManager;->reloadAppsLabel()V

    .line 1697
    iput-boolean v6, p0, Lcom/baidu/launcher/app/Launcher;->isSelfRecreate:Z

    .line 1698
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->recreate()V

    goto :goto_0
.end method

.method private updateNewIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"
    .parameter "oldIntent"

    .prologue
    .line 409
    new-instance v0, Lcom/baidu/launcher/app/Launcher$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/baidu/launcher/app/Launcher$1;-><init>(Lcom/baidu/launcher/app/Launcher;Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    return-void
.end method

.method private updatePref(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 1774
    const-string v0, "key_version"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_version"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1776
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_app_icon_size"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1778
    invoke-static {p0}, Lcom/baidu/launcher/data/IconCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/data/IconCache;->flush()V

    .line 1780
    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V
    .locals 2
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 647
    new-instance v0, Lcom/baidu/launcher/app/Launcher$5;

    const-string v1, "WriteLocaleConfiguration"

    invoke-direct {v0, v1, p0, p1}, Lcom/baidu/launcher/app/Launcher$5;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher$5;->start()V

    .line 673
    return-void
.end method


# virtual methods
.method public dismissSettings()V
    .locals 2

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->isInBulletinScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setVisibility(I)V

    .line 1633
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->showDockbar()V

    .line 1636
    :cond_0
    return-void
.end method

.method public enterFullscreen()V
    .locals 5

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0x200

    .line 1396
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1397
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1399
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1404
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/app/Launcher$9;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/app/Launcher$9;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1412
    return-void
.end method

.method public exitFullscreen()V
    .locals 2

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1416
    .local v0, win:Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1417
    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1418
    return-void
.end method

.method public getBulletinScreen()I
    .locals 1

    .prologue
    .line 1570
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    .line 1649
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/baidu/launcher/utils/Utilities;->SCREEN_COUNT:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method protected hideIME()V
    .locals 4

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 939
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 940
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 941
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 943
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public isInBulletinScreen()Z
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 677
    if-ne p2, v2, :cond_1

    .line 678
    packed-switch p1, :pswitch_data_0

    .line 724
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 680
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1, p3}, Lcom/baidu/launcher/ui/logic/ViewManager;->completeAddShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 684
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->completeAddAppWidget()V

    goto :goto_0

    .line 687
    :pswitch_3
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1, p3}, Lcom/baidu/launcher/ui/logic/ViewManager;->completePickAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 690
    :pswitch_4
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1, p3}, Lcom/baidu/launcher/ui/logic/ViewManager;->completeFillFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 693
    :pswitch_5
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/bulletin/ui/logic/SettingsController;->enableBulletin(Z)V

    .line 694
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/homeview/Indicator;->setBulletinVisible(Z)V

    .line 695
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/16 v2, 0x258

    const/16 v3, 0x44c

    invoke-virtual {v1, v4, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    goto :goto_0

    .line 701
    :cond_1
    if-nez p2, :cond_0

    .line 702
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 721
    :sswitch_0
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->cancleAddShortcut()V

    goto :goto_0

    .line 704
    :sswitch_1
    if-eqz p3, :cond_0

    .line 706
    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 707
    .local v0, appWidgetId:I
    if-eq v0, v2, :cond_0

    .line 708
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 713
    .end local v0           #appWidgetId:I
    :sswitch_2
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->clearBackupFolder()V

    goto :goto_0

    .line 717
    :sswitch_3
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

    invoke-virtual {v1, v4}, Lcom/baidu/bulletin/ui/logic/SettingsController;->enableBulletin(Z)V

    .line 718
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/homeview/Indicator;->setBulletinVisible(Z)V

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 702
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1272
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->close()V

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1278
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->closeQuickLauncherLayer(Landroid/content/Context;)V

    goto :goto_0

    .line 1283
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    goto :goto_0

    .line 1287
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->onBackPressed()V

    .line 1289
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isBulletinScrollingEixt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/high16 v2, 0x3f80

    .line 1794
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1795
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1796
    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 1797
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1799
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "scale_icon"

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1802
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1803
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->recreate()V

    .line 1804
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 245
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    const-string v18, "Launcher"

    const-string v19, "onCreate"

    invoke-static/range {v18 .. v19}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-boolean v18, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    if-eqz v18, :cond_0

    .line 248
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->setRequestedOrientation(I)V

    .line 250
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/ui/screen/Screen;->getInstance()Lcom/baidu/bulletin/ui/screen/Screen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/screen/Screen;->initialize(Landroid/app/Activity;)V

    .line 251
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isKitKat()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 252
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->setTranslucentStatus(Z)V

    .line 255
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/utils/LogEx;->init(Landroid/content/Context;)V

    .line 256
    new-instance v18, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x400

    invoke-direct/range {v18 .. v20}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/app/Launcher;->mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;->startListening()V

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->checkForLocaleChange()V

    .line 260
    new-instance v18, Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-direct/range {v18 .. v18}, Lcom/baidu/launcher/ui/logic/ViewManager;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 261
    const v18, 0x7f030075

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->setContentView(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->setupViews(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v18

    sget-boolean v19, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    invoke-virtual/range {v18 .. v19}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset(Z)V

    .line 265
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/app/Launcher;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setLauncher(Landroid/content/Context;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setLauncherBinded(Z)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 284
    .local v15, pref:Landroid/content/SharedPreferences;
    const-string v18, "loop"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    .line 286
    const-string v18, "first_lunch"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    .line 287
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/baidu/launcher/app/Launcher;->initPersistent(Landroid/content/SharedPreferences;)V

    .line 289
    sget-boolean v18, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v18, :cond_2

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->shouldEnableBulletin()Z

    move-result v18

    if-nez v18, :cond_4

    .line 291
    new-instance v11, Landroid/content/Intent;

    const-class v18, Lcom/baidu/launcher/app/BulletinGuiderActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v11, intent:Landroid/content/Intent;
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lcom/baidu/launcher/app/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    .end local v11           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    const v18, 0x7f08013c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/baidu/launcher/ui/homeview/Indicator;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/app/Launcher;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 302
    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/app/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 305
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v3, baiduWidget:Landroid/content/IntentFilter;
    const-string v18, "com.baidu.launcher.action.UPDATE_WIDGET"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mBaiduWidgetUpdateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/baidu/launcher/app/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v5, bulletinMonitorFilter:Landroid/content/IntentFilter;
    const-string v18, "com.baidu.bulletin.monitor.start"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mBulletinMonitorReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/baidu/launcher/app/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->launcherSettingChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v18

    sget-boolean v19, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    invoke-virtual/range {v18 .. v19}, Lcom/baidu/launcher/ui/applistview/AppListView;->setLoopScroll(Z)V

    .line 319
    invoke-static {}, Lcom/baidu/launcher/utils/DesktopMover;->getInstance()Lcom/baidu/launcher/utils/DesktopMover;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/DesktopMover;->setLauncher(Lcom/baidu/launcher/app/Launcher;)V

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->checkNewVersionUpdate()V

    .line 328
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->setLauncher(Lcom/baidu/launcher/app/Launcher;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "content://mms-sms/"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "content://com.android.email.provider/Message"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/baidu/launcher/utils/EventNumberUtil;->refreshTitleId()V

    .line 344
    invoke-static/range {p0 .. p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v8

    .line 345
    .local v8, floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 347
    invoke-static {}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->getInstance()Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v4

    .line 348
    .local v4, bulletinCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/app/Launcher;->registerSysTrimMemoryListener(Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;)V

    .line 350
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/app/Launcher;->mQuickLauncherMananger:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mQuickLauncherMananger:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->setCurrentShowTab(I)V

    .line 352
    new-instance v17, Landroid/content/IntentFilter;

    const-string v18, "android.intent.action.SCREEN_OFF"

    invoke-direct/range {v17 .. v18}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 353
    .local v17, unLockFilter:Landroid/content/IntentFilter;
    const-string v18, "android.intent.action.USER_PRESENT"

    invoke-virtual/range {v17 .. v18}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/app/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v7, dateChange:Landroid/content/IntentFilter;
    const-string v18, "android.intent.action.DATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v18, "android.intent.action.TIME_SET"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v18, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/baidu/launcher/app/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    new-instance v16, Landroid/content/IntentFilter;

    const-string v18, "com.android.calendar.APPWIDGET_SCHEDULED_UPDATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 362
    .local v16, schedule:Landroid/content/IntentFilter;
    const-string v18, "content"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 364
    :try_start_0
    const-string v18, "vnd.android.data/update"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/app/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v18

    const-string v19, "isDisable = 0 "

    invoke-virtual/range {v18 .. v19}, Lcom/baidu/launcher/data/DisableDataManager;->getDisableApp(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 372
    .local v14, notDisableApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v6, counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 375
    .local v10, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/baidu/launcher/utils/Utilities;->isTopActivity(Landroid/content/Context;Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 376
    const/16 v18, 0x5

    move/from16 v0, v18

    iput v0, v10, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 377
    const/16 v18, 0x14

    move/from16 v0, v18

    iput v0, v10, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    .line 378
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v10, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    .line 379
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/data/DisableDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 381
    iget-object v0, v10, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 294
    .end local v3           #baiduWidget:Landroid/content/IntentFilter;
    .end local v4           #bulletinCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    .end local v5           #bulletinMonitorFilter:Landroid/content/IntentFilter;
    .end local v6           #counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v7           #dateChange:Landroid/content/IntentFilter;
    .end local v8           #floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14           #notDisableApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v16           #schedule:Landroid/content/IntentFilter;
    .end local v17           #unLockFilter:Landroid/content/IntentFilter;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/baidu/bulletin/ui/logic/SettingsController;->setBulletinVisible(Z)Z

    goto/16 :goto_0

    .line 384
    .restart local v3       #baiduWidget:Landroid/content/IntentFilter;
    .restart local v4       #bulletinCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    .restart local v5       #bulletinMonitorFilter:Landroid/content/IntentFilter;
    .restart local v6       #counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v7       #dateChange:Landroid/content/IntentFilter;
    .restart local v8       #floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v14       #notDisableApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v16       #schedule:Landroid/content/IntentFilter;
    .restart local v17       #unLockFilter:Landroid/content/IntentFilter;
    :cond_5
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_6

    .line 385
    new-instance v12, Landroid/content/Intent;

    const-string v18, "com.baidu.appdisable.action.PACKAGES_DISABLE"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v12, intent2:Landroid/content/Intent;
    const-string v18, "PACKAGES_DISABLE_MAP"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 388
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/launcher/app/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    .end local v12           #intent2:Landroid/content/Intent;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/app/Launcher;->updateBaiYiSearchWidget()V

    .line 391
    return-void

    .line 365
    .end local v6           #counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14           #notDisableApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    :catch_0
    move-exception v18

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 968
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 969
    const-string v1, "Launcher"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mAppWidgetHost:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 978
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 979
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 980
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mBaiduWidgetUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 981
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mBulletinMonitorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 982
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->unregisterSysTrimMemoryListener()V

    .line 983
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->unregisterWallpaperReceiver()V

    .line 984
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->launcherSettingChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 987
    invoke-static {p0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/data/HomeDataManager;->clearAllListeners()V

    .line 988
    invoke-static {p0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/data/AppsDataManager;->clearAllListeners()V

    .line 989
    invoke-static {p0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/app/ThemeChangeReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->clearAllListeners()V

    .line 990
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->release()V

    .line 991
    iput-object v3, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 992
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mQuickLauncherMananger:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->release()V

    .line 993
    iput-object v3, p0, Lcom/baidu/launcher/app/Launcher;->mQuickLauncherMananger:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    .line 994
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->clear()V

    .line 995
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->onDestroy()V

    .line 997
    iput-object v3, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    .line 999
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    .line 1000
    iget-boolean v1, p0, Lcom/baidu/launcher/app/Launcher;->isSelfRecreate:Z

    if-nez v1, :cond_1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 1001
    :cond_1
    iput-boolean v4, p0, Lcom/baidu/launcher/app/Launcher;->isSelfRecreate:Z

    .line 1003
    return-void

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v9, 0x52

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 844
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 845
    .local v3, uniChar:I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 846
    .local v1, handled:Z
    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 848
    .local v2, isKeyNotWhitespace:Z
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/baidu/launcher/app/Launcher;->acceptFilter()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 849
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/launcher/app/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7, v8, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 852
    .local v0, gotKey:Z
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/baidu/launcher/app/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/baidu/launcher/app/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->onSearchRequested()Z

    move-result v1

    .line 876
    .end local v0           #gotKey:Z
    .end local v1           #handled:Z
    :cond_0
    :goto_1
    return v1

    .end local v2           #isKeyNotWhitespace:Z
    .restart local v1       #handled:Z
    :cond_1
    move v2, v5

    .line 846
    goto :goto_0

    .line 864
    .restart local v2       #isKeyNotWhitespace:Z
    :cond_2
    if-ne p1, v9, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 865
    goto :goto_1

    .line 866
    :cond_3
    if-ne p1, v9, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->isInBulletinScreen()Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 868
    goto :goto_1

    .line 869
    :cond_4
    iget-object v6, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    if-nez v6, :cond_5

    .line 870
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->prepareMenu()Z

    .line 871
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    goto :goto_1

    .line 873
    :cond_5
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    goto :goto_1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 840
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 961
    const-string v0, "Launcher"

    const-string v1, "onLowMemory call back"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->onTrimMemory(I)V

    .line 963
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 964
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/high16 v7, 0x40

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 881
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 882
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->exitFullscreen()V

    .line 884
    const-string v5, "exit"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->finish()V

    .line 887
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 888
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtManager;->close()V

    .line 935
    :cond_1
    :goto_0
    return-void

    .line 891
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    .line 892
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    goto :goto_0

    .line 895
    :cond_3
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->setPopupviewHideAniamtion()V

    .line 896
    invoke-static {p0}, Lcom/baidu/launcher/update/UpdateManager;->getInastance(Landroid/content/Context;)Lcom/baidu/launcher/update/UpdateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/update/UpdateManager;->onComeBackHome()V

    .line 897
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->isSetLocationLayerOpened()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 898
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeSetLocationLayer()V

    .line 900
    :cond_4
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 901
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/applistview/AppListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/baidu/launcher/app/Launcher;->isAppListViewAnim:Z

    if-nez v5, :cond_5

    .line 902
    const-string v5, "alpha"

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 904
    .local v1, alphaOut:Landroid/animation/PropertyValuesHolder;
    const-string v5, "Y"

    new-array v6, v8, [F

    const/4 v7, 0x0

    aput v7, v6, v4

    invoke-static {p0}, Lcom/baidu/bulletin/ui/Utilities;->getHeightPixels(Landroid/content/Context;)I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    aput v7, v6, v2

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 906
    .local v0, YOut:Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v5

    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v4

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 908
    .local v3, outAnimation:Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 910
    new-instance v4, Lcom/baidu/launcher/app/Launcher$7;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/app/Launcher$7;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 928
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 933
    .end local v0           #YOut:Landroid/animation/PropertyValuesHolder;
    .end local v1           #alphaOut:Landroid/animation/PropertyValuesHolder;
    .end local v3           #outAnimation:Landroid/animation/ObjectAnimator;
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->hideIME()V

    goto/16 :goto_0

    .line 930
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_6

    iget-boolean v5, p0, Lcom/baidu/launcher/app/Launcher;->mStopped:Z

    if-nez v5, :cond_6

    .line 931
    .local v2, alreadyOnHome:Z
    :goto_2
    iget-object v4, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->onNewIntent(Z)V

    goto :goto_1

    .end local v2           #alreadyOnHome:Z
    :cond_6
    move v2, v4

    .line 930
    goto :goto_2

    .line 902
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 779
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 781
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->onPause()V

    .line 783
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->onPause()V

    .line 784
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 787
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onPause(Landroid/content/Context;)V

    .line 789
    invoke-static {p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v0

    .line 790
    .local v0, floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->releaseViewManager()V

    .line 791
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->launcherOnPause()V

    .line 794
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 732
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 734
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 738
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 739
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    .line 740
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ProcessManager;->checkThemeAndWallpaper(Landroid/content/Context;)V

    .line 741
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mWaitingForResume:Lcom/baidu/launcher/ui/common/PressedView;

    if-eqz v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mWaitingForResume:Lcom/baidu/launcher/ui/common/PressedView;

    invoke-interface {v1, v3}, Lcom/baidu/launcher/ui/common/PressedView;->setStayPressed(Z)V

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->onResume()V

    .line 745
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/utils/EventNumberUtil;->onChange(Z)V

    .line 746
    sput-boolean v2, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    .line 749
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onResume(Landroid/content/Context;)V

    .line 750
    iput-boolean v3, p0, Lcom/baidu/launcher/app/Launcher;->mStopped:Z

    .line 754
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForOpenOrCloseApp()V

    .line 756
    invoke-static {p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v0

    .line 757
    .local v0, floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 758
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->launcherOnResume()V

    .line 760
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->firstLunch:Z

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/app/Launcher$6;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/app/Launcher$6;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    const-string v1, "first_lunch"

    invoke-static {p0, v1, v3}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 774
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1266
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/baidu/launcher/app/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1267
    return v1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 797
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/app/Launcher;->mStopped:Z

    .line 800
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 947
    const-string v2, "Launcher"

    const-string v3, "onTrimMemory call back"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->aListTrimMemoryListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;

    .line 949
    .local v1, listener:Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;
    instance-of v2, v1, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->isBuleltinScree()Z

    move-result v2

    if-nez v2, :cond_0

    .line 950
    invoke-interface {v1, p1}, Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;->onSysTrimMemory(I)I

    goto :goto_0

    .line 953
    .end local v1           #listener:Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;
    :cond_1
    and-int/lit8 v2, p1, 0x14

    if-eqz v2, :cond_2

    .line 954
    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/logic/ViewManager;->releaseCache(I)V

    .line 956
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 957
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 803
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 804
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0, v1, v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeFolder(ZZ)V

    .line 807
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparentInLauncher(Z)V

    .line 808
    return-void
.end method

.method public prepareMenu()Z
    .locals 7

    .prologue
    .line 1223
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getCurrentView()Lcom/baidu/launcher/ui/logic/IBaseView;

    move-result-object v0

    .line 1224
    .local v0, current:Lcom/baidu/launcher/ui/logic/IBaseView;
    new-instance v5, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;-><init>(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/app/Launcher$1;)V

    invoke-interface {v0, v5}, Lcom/baidu/launcher/ui/logic/IBaseView;->onMenu(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    .line 1225
    .local v2, menuContent:Landroid/view/View;
    if-nez v2, :cond_0

    .line 1226
    const/4 v5, 0x0

    .line 1256
    :goto_0
    return v5

    .line 1228
    :cond_0
    invoke-interface {v0}, Lcom/baidu/launcher/ui/logic/IBaseView;->getID()I

    move-result v5

    const v6, 0x7f08013a

    if-ne v5, v6, :cond_1

    .line 1250
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1251
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1252
    .local v4, menuWidth:I
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0089

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1254
    .local v3, menuHeight:I
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v2, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    .line 1255
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    const v6, 0x7f0a0021

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1256
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public registerSysTrimMemoryListener(Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->aListTrimMemoryListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->aListTrimMemoryListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendStatusBarTransparentBroadcast(Z)V
    .locals 2
    .parameter "transparent"

    .prologue
    .line 821
    if-nez p1, :cond_0

    .line 826
    :goto_0
    return-void

    .line 822
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.statusbar.ACTION_TRANSPARENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "transparent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 824
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 825
    iput-boolean p1, p0, Lcom/baidu/launcher/app/Launcher;->mStatusBarTransparent:Z

    goto :goto_0
.end method

.method public setIconPressed(Lcom/baidu/launcher/ui/common/PressedView;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher;->mWaitingForResume:Lcom/baidu/launcher/ui/common/PressedView;

    .line 1297
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mWaitingForResume:Lcom/baidu/launcher/ui/common/PressedView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/common/PressedView;->setStayPressed(Z)V

    .line 1298
    return-void
.end method

.method public setPersistent(Z)V
    .locals 3
    .parameter "persistent"

    .prologue
    .line 1806
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/baidu/launcher/service/AlwaysRunningService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1807
    .local v0, service:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1808
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1812
    :goto_0
    return-void

    .line 1810
    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public setStatusBarTransparent(Z)V
    .locals 2
    .parameter "transparent"

    .prologue
    .line 811
    if-nez p1, :cond_0

    .line 812
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.bulletin.monitor.release"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 815
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/launcher/app/Launcher;->mStatusBarTransparent:Z

    if-ne p1, v1, :cond_1

    .line 818
    :goto_0
    return-void

    .line 817
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/app/Launcher;->sendStatusBarTransparentBroadcast(Z)V

    goto :goto_0
.end method

.method public setStatusBarTransparentInLauncher(Z)V
    .locals 2
    .parameter "transparent"

    .prologue
    .line 829
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.statusbar.ACTION_TRANSPARENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "transparent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 832
    iput-boolean p1, p0, Lcom/baidu/launcher/app/Launcher;->mStatusBarTransparent:Z

    .line 833
    return-void
.end method

.method public setTranslucentStatus(Z)V
    .locals 12
    .parameter "on"

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 1815
    .local v7, win:Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 1816
    .local v9, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 1818
    .local v1, bits:I
    :try_start_0
    const-string v10, "android.view.WindowManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1819
    .local v8, winClass:Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 1820
    .local v3, classes:[Ljava/lang/Class;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/Class;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 1821
    .local v2, c:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "LayoutParams"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1822
    const-string v10, "FLAG_TRANSLUCENT_STATUS"

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1823
    .local v4, field:Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1820
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1826
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v2           #c:Ljava/lang/Class;
    .end local v3           #classes:[Ljava/lang/Class;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #winClass:Ljava/lang/Class;
    :catch_0
    move-exception v10

    .line 1829
    :cond_1
    if-eqz p1, :cond_2

    .line 1830
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v10, v1

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1834
    :goto_1
    invoke-virtual {v7, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1835
    return-void

    .line 1832
    :cond_2
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v11, v1, -0x1

    and-int/2addr v10, v11

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method public showBulletinScreen()V
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mSettingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/Launcher;->showBulletinScreen(Z)V

    .line 1567
    return-void
.end method

.method public declared-synchronized showBulletinScreen(Z)V
    .locals 4
    .parameter "open"

    .prologue
    .line 1601
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setBulletinVisible(Z)V

    .line 1602
    if-eqz p1, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    if-nez v0, :cond_0

    .line 1604
    invoke-direct {p0}, Lcom/baidu/launcher/app/Launcher;->initUiController()V

    .line 1605
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/logic/UIController;->storeSettings(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1608
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->onDestroy()V

    .line 1610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showGuidePager(Z)V
    .locals 0
    .parameter "aShow"

    .prologue
    .line 1180
    return-void
.end method

.method public showMenu(Z)Z
    .locals 5
    .parameter "show"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1183
    if-eqz p1, :cond_5

    .line 1184
    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    if-nez v2, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return v0

    .line 1187
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mGuidePager:Lcom/baidu/launcher/ui/common/GuidePagerView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mGuidePager:Lcom/baidu/launcher/ui/common/GuidePagerView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/common/GuidePagerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 1193
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v2, v1, :cond_3

    .line 1198
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1199
    iput-object v4, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 1202
    :cond_3
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 1203
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1204
    iput-object v4, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 1207
    :cond_4
    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    move v0, v1

    .line 1210
    goto :goto_0

    .line 1214
    :cond_5
    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1216
    iput-object v4, p0, Lcom/baidu/launcher/app/Launcher;->mPopupMenu:Landroid/widget/PopupWindow;

    move v0, v1

    .line 1217
    goto :goto_0
.end method

.method public startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v2, 0x7f0c000b

    const/4 v1, 0x0

    .line 1340
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/app/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1348
    :goto_0
    return-void

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1344
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1345
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 3
    .parameter "intent"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1303
    const/high16 v2, 0x1000

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1304
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1305
    const/4 v1, 0x1

    .line 1314
    :goto_0
    return v1

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/Launcher;->relaunchActivity(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1308
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1309
    .local v0, e:Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/Launcher;->relaunchActivity(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1310
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 1311
    .local v0, e:Ljava/lang/NullPointerException;
    const v2, 0x7f0c000b

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public unregisterSysTrimMemoryListener()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->aListTrimMemoryListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->aListTrimMemoryListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 455
    :cond_0
    return-void
.end method

.method public updateEventNumber()V
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/app/Launcher$8;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/app/Launcher$8;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1364
    return-void
.end method
