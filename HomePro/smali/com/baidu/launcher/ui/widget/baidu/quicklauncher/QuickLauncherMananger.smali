.class public Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;
.super Ljava/lang/Object;
.source "QuickLauncherMananger.java"


# static fields
.field public static final MAX_ITEMS:I = 0x6

.field public static final TAB_COUNTS:I = 0x3

.field public static final TAB_MOST_USED:I = 0x0

.field public static final TAB_RECENTLY_INSTALLED:I = 0x2

.field public static final TAB_RECENTLY_LAUNCHED:I = 0x1

.field public static final TAB_UESLESS:I = 0x3

.field private static mInstatnce:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

.field private static mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static replayAppClsName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentShowTab:I

.field private final mInstallTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMostUsedAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

.field private mRecntlyInstalledAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecntlyLaunchedAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mWhiteList:Ljava/util/ArrayList;

    .line 61
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.baidu.BaiduMap"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->replayAppClsName:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->replayAppClsName:Ljava/util/HashMap;

    const-string v1, "com.wandoujia.phoenix2.ui.WelcomeActivity"

    const-string v2, "com.wandoujia.phoenix2.NewWelcomeActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->replayAppClsName:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.DialtactsContactsEntryActivity"

    const-string v2, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->replayAppClsName:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox.SearchActivity"

    const-string v2, "com.baidu.searchbox.MainActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I

    .line 106
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mInstallTimeComparator:Ljava/util/Comparator;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    return-object v0
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    .line 387
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mInstatnce:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mInstatnce:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    .line 85
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mInstatnce:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initAllLists()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    .line 247
    :cond_1
    return-void
.end method

.method private preLoadOtherTabs(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 323
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 363
    return-void
.end method


# virtual methods
.method public checkQuickIconDetachFromWindow(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V
    .locals 1
    .parameter "quickLauncherIcon"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    if-ne v0, p1, :cond_0

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    .line 415
    :cond_0
    return-void
.end method

.method public closeQuickLauncherLayer(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 366
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/baidu/launcher/app/Launcher;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 367
    check-cast v1, Lcom/baidu/launcher/app/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    .line 369
    :cond_0
    check-cast p1, Lcom/baidu/launcher/app/Launcher;

    .end local p1
    const v1, 0x7f080177

    invoke-virtual {p1, v1}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    .line 370
    .local v0, quickLauncherLayer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->close()V

    .line 372
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->clear()V

    goto :goto_0
.end method

.method public exitNow(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 404
    check-cast p1, Lcom/baidu/launcher/app/Launcher;

    .end local p1
    const v1, 0x7f080177

    invoke-virtual {p1, v1}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    .line 406
    .local v0, quickLauncherLayer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->exitNow()V

    .line 407
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->clear()V

    .line 408
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->setVisibility(I)V

    .line 409
    return-void
.end method

.method public expandQuickLauncherLayer(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V
    .locals 6
    .parameter "context"
    .parameter "quickLauncherWidget"

    .prologue
    .line 251
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/baidu/launcher/app/Launcher;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 252
    check-cast v4, Lcom/baidu/launcher/app/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/app/Launcher;->setStatusBarTransparent(Z)V

    :cond_0
    move-object v4, p1

    .line 255
    check-cast v4, Lcom/baidu/launcher/app/Launcher;

    const v5, 0x7f080177

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    .line 256
    .local v3, quickLauncherLayer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    .line 259
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f00

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 260
    .local v2, dismiss:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 261
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$2;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 273
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->initAllLists()V

    .line 276
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I

    packed-switch v4, :pswitch_data_0

    .line 296
    :goto_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentAppInfos:Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 301
    check-cast v4, Lcom/baidu/launcher/app/Launcher;

    const v5, 0x7f08017c

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    .line 302
    .local v0, centerTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->setStartAngleFromTab(I)V

    .line 305
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->expand(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V

    .line 307
    const v4, 0x7f080178

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    .line 308
    .local v1, container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    const v4, 0x7f0202fc

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->setBackgroundResource(I)V

    .line 309
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getLayoutFormTab(I)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->setmCurShowLayout(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;)V

    .line 310
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentAppInfos:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->loadInitShowViews(Ljava/util/List;)V

    .line 312
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$3;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)V

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->preLoadOtherTabs(Landroid/content/Context;)V

    goto :goto_0

    .line 278
    .end local v0           #centerTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
    .end local v1           #container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyLaunchedList()Ljava/util/List;

    .line 279
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    iput-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentAppInfos:Ljava/util/List;

    goto :goto_1

    .line 283
    :pswitch_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    if-nez v4, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyInstalledList()Ljava/util/List;

    .line 286
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    iput-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentAppInfos:Ljava/util/List;

    goto :goto_1

    .line 289
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadMostUsedList()Ljava/util/List;

    .line 290
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    iput-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentAppInfos:Ljava/util/List;

    goto :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAppInfosFromTab(I)Ljava/util/List;
    .locals 1
    .parameter "tab"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    packed-switch p1, :pswitch_data_0

    .line 432
    :goto_0
    return-object v0

    .line 421
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyLaunchedList()Ljava/util/List;

    move-result-object v0

    .line 422
    goto :goto_0

    .line 424
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyInstalledList()Ljava/util/List;

    move-result-object v0

    .line 425
    goto :goto_0

    .line 427
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadMostUsedList()Ljava/util/List;

    move-result-object v0

    .line 428
    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentShowTab()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I

    return v0
.end method

.method public getmCurrentAppInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentAppInfos:Ljava/util/List;

    return-object v0
.end method

.method public loadMostUsedList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x6

    .line 159
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 160
    :try_start_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    monitor-exit v6

    .line 176
    :goto_0
    return-object v5

    .line 161
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    .local v0, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    sget-object v5, Lcom/baidu/launcher/data/AppsDataManager;->APP_FREQUENCY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    const/4 v5, 0x6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 164
    .local v1, counts:I
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, deleteList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 167
    .local v4, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-wide v7, v4, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_1

    .line 168
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    .end local v0           #allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v1           #counts:I
    .end local v2           #deleteList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 170
    .restart local v0       #allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v1       #counts:I
    .restart local v2       #deleteList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 171
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v11, :cond_3

    .line 173
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-interface {v5, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 176
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public loadRecentlyInstalledList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v9, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 132
    :try_start_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 133
    .local v7, pm:Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    monitor-exit v9

    .line 154
    :goto_0
    return-object v8

    .line 134
    :cond_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 136
    .local v0, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    :try_start_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mInstallTimeComparator:Ljava/util/Comparator;

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_1
    const/4 v8, 0x7

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 140
    .local v2, counts:I
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const-string v6, "com.baidu.launcher.app.Launcher"

    .line 143
    .local v6, launcherClassName:Ljava/lang/String;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 144
    .local v5, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v8, v5, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 145
    .local v1, cn:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/baidu/launcher/utils/Utilities;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    .end local v0           #allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #counts:I
    .end local v3           #filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v6           #launcherClassName:Ljava/lang/String;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 151
    .restart local v0       #allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v2       #counts:I
    .restart local v3       #filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #launcherClassName:Ljava/lang/String;
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    if-eqz v8, :cond_4

    .line 152
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 154
    :cond_4
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 137
    .end local v2           #counts:I
    .end local v3           #filterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #launcherClassName:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public loadRecentlyLaunchedList()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    sget-object v14, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->sLock:Ljava/lang/Object;

    monitor-enter v14

    .line 182
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    if-eqz v13, :cond_0

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    monitor-exit v14

    .line 234
    :goto_0
    return-object v13

    .line 184
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 185
    .local v1, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 188
    .local v2, am:Landroid/app/ActivityManager;
    const/16 v13, 0xc

    const/4 v15, 0x2

    invoke-virtual {v2, v13, v15}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v11

    .line 190
    .local v11, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v8, "com.baidu.launcher.app.Launcher"

    .line 191
    .local v8, launcherClassName:Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 192
    .local v10, recentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v7, Landroid/content/Intent;

    iget-object v13, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 193
    .local v7, intent:Landroid/content/Intent;
    iget-object v13, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v13, :cond_2

    .line 194
    iget-object v13, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 197
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const v15, -0x200001

    and-int/2addr v13, v15

    const/high16 v15, 0x1000

    or-int/2addr v13, v15

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    const/4 v13, 0x0

    invoke-virtual {v9, v7, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 201
    .local v12, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 202
    .local v4, cn:Landroid/content/ComponentName;
    if-eqz v12, :cond_3

    .line 203
    sget-object v13, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->replayAppClsName:Ljava/util/HashMap;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 204
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #cn:Landroid/content/ComponentName;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v13, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->replayAppClsName:Ljava/util/HashMap;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v4, v15, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .restart local v4       #cn:Landroid/content/ComponentName;
    :cond_3
    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 217
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 218
    .local v3, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x6

    if-ne v13, v15, :cond_7

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    monitor-exit v14

    goto/16 :goto_0

    .line 235
    .end local v1           #allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v3           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #launcherClassName:Ljava/lang/String;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #recentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v11           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v12           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 207
    .restart local v1       #allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .restart local v2       #am:Landroid/app/ActivityManager;
    .restart local v4       #cn:Landroid/content/ComponentName;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #launcherClassName:Ljava/lang/String;
    .restart local v9       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #recentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v11       #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v12       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_6
    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #cn:Landroid/content/ComponentName;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v13, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4       #cn:Landroid/content/ComponentName;
    goto :goto_1

    .line 221
    .restart local v3       #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v13, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 234
    .end local v3           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #recentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v12           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyLaunchedAppInfos:Ljava/util/List;

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public recycleRecntInstallList()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;

    .line 395
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->clear()V

    .line 399
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->recycleRecntInstallList()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    .line 401
    return-void
.end method

.method public setCurrentShowTab(I)V
    .locals 0
    .parameter "currentShowType"

    .prologue
    .line 93
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I

    .line 94
    return-void
.end method

.method public setmCurrentAppInfos(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, mCurrentAppInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentAppInfos:Ljava/util/List;

    .line 103
    return-void
.end method
