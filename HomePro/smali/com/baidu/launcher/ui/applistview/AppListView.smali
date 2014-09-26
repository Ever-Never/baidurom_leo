.class public Lcom/baidu/launcher/ui/applistview/AppListView;
.super Landroid/widget/FrameLayout;
.source "AppListView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;
.implements Lcom/baidu/launcher/ui/logic/IBaseView;
.implements Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
.implements Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.AppListView"


# instance fields
.field private appShop:Landroid/view/View;

.field private customSortPanel:Landroid/view/View;

.field private disableAppCancel:Landroid/widget/Button;

.field private disableAppPanel:Landroid/view/View;

.field private disableAppTrue:Landroid/widget/Button;

.field private disableApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private disableConfirm:Ljava/lang/String;

.field private hideAppCancel:Landroid/view/View;

.field private hideAppPanel:Landroid/view/View;

.field private hideAppTrue:Landroid/widget/Button;

.field private hideConfirm:Ljava/lang/String;

.field private lastActiveType:I

.field private mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

.field private mBackGroundView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDataLoaded:Z

.field private mDeleteAppDialog:Landroid/app/AlertDialog;

.field private mDeleteAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;

.field private mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

.field private mIsAnimating:Z

.field private mLauncher:Lcom/baidu/launcher/app/Launcher;

.field private mReLoaded:Z

.field private mStartClickTime:J

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mZoom:F

.field observer:Landroid/content/pm/IPackageDeleteObserver;

.field resized:Z

.field private tabApp:Landroid/view/View;

.field private tabBottom:Landroid/view/View;

.field private tabWidget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->lastActiveType:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mZoom:F

    .line 151
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDataLoaded:Z

    .line 153
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mStartClickTime:J

    .line 461
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->resized:Z

    .line 1350
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$9;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$9;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->observer:Landroid/content/pm/IPackageDeleteObserver;

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->lastActiveType:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mZoom:F

    .line 151
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDataLoaded:Z

    .line 153
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mStartClickTime:J

    .line 461
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->resized:Z

    .line 1350
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$9;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$9;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->observer:Landroid/content/pm/IPackageDeleteObserver;

    .line 416
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    .line 417
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->setVisibility(I)V

    .line 418
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->setSoundEffectsEnabled(Z)V

    .line 419
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->lastActiveType:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mZoom:F

    .line 151
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDataLoaded:Z

    .line 153
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mStartClickTime:J

    .line 461
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->resized:Z

    .line 1350
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$9;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$9;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->observer:Landroid/content/pm/IPackageDeleteObserver;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/applistview/AppListView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppListView;->bindItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/applistview/AppListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/applistview/AppListView;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/data/item/ListAppInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->customSortPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/applistview/AppListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppListView;->animationEnd(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/applistview/AppListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/launcher/ui/applistview/AppListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableApps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/applistview/AppListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/baidu/launcher/ui/applistview/AppListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/applistview/AppListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->onAnimationEnd()V

    return-void
.end method

.method private animationEnd(Z)V
    .locals 3
    .parameter "visiable"

    .prologue
    const/4 v2, 0x0

    .line 883
    if-eqz p1, :cond_1

    .line 884
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mZoom:F

    .line 885
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDataLoaded:Z

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 898
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->enableWorkspaceCache(Z)V

    .line 899
    return-void

    .line 891
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->setVisibility(I)V

    .line 892
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->setFocusable(Z)V

    .line 893
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mZoom:F

    goto :goto_0
.end method

.method private bindItems(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 422
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$3;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/applistview/AppListView$3;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method private createDeleteAppDialog(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1810
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1811
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1854
    :goto_0
    return-void

    .line 1814
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1816
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1817
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1819
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1821
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1822
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/launcher/ui/applistview/AppListView$21;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$21;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1829
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/launcher/ui/applistview/AppListView$22;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$22;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1846
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppDialog:Landroid/app/AlertDialog;

    .line 1853
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 2

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 990
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->buildLayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 991
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getComparator()Ljava/util/Comparator;
    .locals 2
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
    .line 1379
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    if-nez v0, :cond_0

    .line 1380
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 1385
    :goto_0
    return-object v0

    .line 1382
    :cond_0
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1383
    sget-object v0, Lcom/baidu/launcher/data/AppsDataManager;->APP_FREQUENCY_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getComparator(Landroid/content/pm/PackageManager;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0
.end method

.method private handleFolderClick(Landroid/view/View;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1190
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1191
    .local v0, folderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    invoke-virtual {v0}, Lcom/baidu/launcher/data/item/ListFolderInfo;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    check-cast p1, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->openFolder(Lcom/baidu/launcher/ui/folder/FolderHolder;Z)V

    .line 1194
    :cond_0
    return-void
.end method

.method private isAdminActive()Z
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 916
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    return-void
.end method

.method public addNewEventInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->addNewEventInfo(Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public addShortcutOnHome(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .parameter "v"
    .parameter "item"

    .prologue
    .line 672
    return-void
.end method

.method public changeBindsForCustom()V
    .locals 3

    .prologue
    .line 688
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 689
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDropTargets()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getFolderLayer()Lcom/baidu/launcher/ui/folder/FolderLayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 693
    .local v0, index:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->insertDropTarget(ILcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 694
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setDragScoller(Lcom/baidu/launcher/ui/dragdrop/DragScroller;)V

    .line 702
    .end local v0           #index:I
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 698
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setDragScoller(Lcom/baidu/launcher/ui/dragdrop/DragScroller;)V

    goto :goto_0
.end method

.method changeCurrentPage(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->changeCurrentPage(I)V

    .line 1084
    return-void
.end method

.method clearCurrentChanges(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->clearCurrentChanges(Z)V

    .line 1076
    return-void
.end method

.method public closeDisableApps(ZZ)V
    .locals 2
    .parameter "save"
    .parameter "update"

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/AppListView$23;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1878
    return-void
.end method

.method public closeHideApps(ZZ)V
    .locals 2
    .parameter "save"
    .parameter "update"

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/AppListView$11;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1424
    return-void
.end method

.method public completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V
    .locals 1
    .parameter "folder"
    .parameter "data"

    .prologue
    .line 1668
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$18;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/applistview/AppListView$18;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;Lcom/baidu/launcher/data/item/IFolderInfo;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->post(Ljava/lang/Runnable;)Z

    .line 1692
    return-void
.end method

.method public createFolderAndAddApp(Landroid/view/View;)V
    .locals 16
    .parameter "view"

    .prologue
    .line 1103
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-eqz v2, :cond_1

    move-object/from16 v1, p1

    .line 1104
    check-cast v1, Lcom/baidu/launcher/ui/folder/FolderIcon;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/launcher/ui/folder/FolderIcon;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 1106
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 1107
    .local v15, vg:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDragView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v9, v2

    check-cast v9, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1111
    .local v9, ListAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2, v9}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1115
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v12

    .line 1116
    .local v12, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {v12, v9}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 1120
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v2, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    iput-wide v2, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDragView()Landroid/view/View;

    move-result-object v10

    .line 1122
    .local v10, dragView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 1124
    .local v11, dragViewlp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDragView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget v3, v11, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->moveAnimationForFolder(I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v2

    iget-wide v3, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    iget v5, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    invoke-virtual {v2, v9, v3, v4, v5}, Lcom/baidu/launcher/data/AppsDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    .line 1179
    :goto_0
    return-void

    .line 1131
    .end local v9           #ListAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v10           #dragView:Landroid/view/View;
    .end local v11           #dragViewlp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    .end local v12           #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    .end local v15           #vg:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 1133
    .local v14, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 1134
    .restart local v15       #vg:Landroid/view/ViewGroup;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1135
    invoke-virtual {v15}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 1138
    new-instance v13, Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-direct {v13}, Lcom/baidu/launcher/data/item/ListFolderInfo;-><init>()V

    .line 1139
    .local v13, folderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v9, v2

    check-cast v9, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1140
    .restart local v9       #ListAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-virtual {v13, v9}, Lcom/baidu/launcher/data/item/ListFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2, v9}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1145
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v12

    .line 1146
    .restart local v12       #enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-virtual {v12, v9}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1147
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterView(Landroid/view/View;)Z

    .line 1150
    :cond_2
    iget-wide v2, v13, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    iput-wide v2, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 1152
    const v2, 0x7f030057

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPageChildLayout()Lcom/baidu/launcher/ui/common/PagedViewCellLayoutChildren;

    move-result-object v4

    invoke-static {v2, v3, v4, v13}, Lcom/baidu/launcher/ui/folder/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/launcher/data/item/IFolderInfo;)Lcom/baidu/launcher/ui/folder/FolderIcon;

    move-result-object v1

    .line 1156
    .local v1, folderIcon:Lcom/baidu/launcher/ui/folder/FolderIcon;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget v3, v14, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    invoke-virtual {v2, v1, v3, v14, v13}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->addInScreen(Landroid/view/View;ILcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2, v13}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->insertItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/launcher/ui/folder/FolderIcon;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object v9, v2

    check-cast v9, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2, v9}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1165
    iget-wide v2, v13, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    iput-wide v2, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDragView()Landroid/view/View;

    move-result-object v10

    .line 1168
    .restart local v10       #dragView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 1170
    .restart local v11       #dragViewlp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDragView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget v3, v11, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->moveAnimationForFolder(I)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v2

    const-wide/16 v3, -0x3e8

    iget v5, v13, Lcom/baidu/launcher/data/item/ListFolderInfo;->index:I

    invoke-virtual {v2, v13, v3, v4, v5}, Lcom/baidu/launcher/data/AppsDataManager;->addFolderToDatabase(Lcom/baidu/launcher/data/item/ListFolderInfo;JI)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/baidu/launcher/data/AppsDataManager;->addFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    goto/16 :goto_0
.end method

.method public createNewFolderFromMenu()V
    .locals 2

    .prologue
    .line 1696
    new-instance v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/data/item/ListFolderInfo;-><init>()V

    .line 1697
    .local v0, folderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->requestFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V

    .line 1698
    return-void
.end method

.method public deleteApplication(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;)V
    .locals 2
    .parameter "context"
    .parameter "pkgName"
    .parameter "observer"

    .prologue
    .line 1347
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1348
    return-void
.end method

.method public deleteApplication(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1336
    const-string v2, "launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.intent.getComponent()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1339
    .local v0, component:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1342
    .local v1, pkgName:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->observer:Landroid/content/pm/IPackageDeleteObserver;

    invoke-virtual {p0, v2, v1, v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->deleteApplication(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;)V

    goto :goto_0
.end method

.method public deleteListItem(Lcom/baidu/launcher/ui/dragdrop/DragSource;Landroid/view/View;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 3
    .parameter "source"
    .parameter "deleteView"
    .parameter "dragInfo"

    .prologue
    .line 1226
    instance-of v0, p3, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v0, :cond_3

    .line 1227
    iget-boolean v0, p3, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1229
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getApps()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1230
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/baidu/launcher/data/AppsDataManager;->deleteItemInDataBase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1232
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    check-cast p3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p3
    invoke-virtual {v0, p3}, Lcom/baidu/launcher/data/AppsDataManager;->removeApp(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 1234
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 1314
    :cond_0
    :goto_0
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1315
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 1318
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->changeBindsForCustom()V

    .line 1319
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V

    .line 1321
    :cond_1
    return-void

    .line 1236
    .restart local p3
    :cond_2
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$7;

    invoke-direct {v0, p0, p3, p2}, Lcom/baidu/launcher/ui/applistview/AppListView$7;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;Lcom/baidu/launcher/data/item/ListItemInfo;Landroid/view/View;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1253
    check-cast p3, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p3
    invoke-direct {p0, p3}, Lcom/baidu/launcher/ui/applistview/AppListView;->createDeleteAppDialog(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    goto :goto_0

    .line 1255
    .restart local p3
    :cond_3
    instance-of v0, p3, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setDissolutionFolder()V

    .line 1308
    :goto_1
    iget-boolean v0, p3, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    check-cast p3, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local p3
    invoke-virtual {v0, p3}, Lcom/baidu/launcher/data/AppsDataManager;->removeFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    goto :goto_0

    .line 1260
    .restart local p3
    :cond_4
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$8;

    invoke-direct {v1, p0, p3}, Lcom/baidu/launcher/ui/applistview/AppListView$8;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public displayThumbnailGroup()V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public doSort()V
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$10;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$10;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1414
    return-void
.end method

.method public dumpState()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method public enableWorkspaceCache(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    if-eqz p1, :cond_2

    .line 875
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->enableChildrenCache(I)V

    goto :goto_0

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearChildrenCache()V

    goto :goto_0
.end method

.method public enterDisableApps()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1864
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v0, v1, :cond_0

    .line 1868
    :goto_0
    return-void

    .line 1866
    :cond_0
    sput v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 1867
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    goto :goto_0
.end method

.method public enterEditMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 765
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-eq v0, v1, :cond_0

    .line 766
    sput v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 771
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->changeBindsForCustom()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->customSortPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 776
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 777
    return-void
.end method

.method public enterHideApps()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1427
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v0, v1, :cond_0

    .line 1431
    :goto_0
    return-void

    .line 1429
    :cond_0
    sput v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 1430
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    goto :goto_0
.end method

.method public exitDisableApps(ZZ)V
    .locals 2
    .parameter "save"
    .parameter "update"

    .prologue
    .line 1880
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-nez v0, :cond_0

    .line 1895
    :goto_0
    return-void

    .line 1882
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 1883
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/AppListView$24;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public exitHideApps(ZZ)V
    .locals 2
    .parameter "save"
    .parameter "update"

    .prologue
    .line 1434
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-nez v0, :cond_0

    .line 1450
    :goto_0
    return-void

    .line 1436
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 1437
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/launcher/ui/applistview/AppListView$12;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getAppsView()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    return-object v0
.end method

.method public getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 276
    const v0, 0x7f080009

    return v0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->lastActiveType:I

    return v0
.end method

.method public hide(ZLjava/lang/Object;)V
    .locals 3
    .parameter "animate"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 244
    if-eqz p1, :cond_4

    .line 245
    invoke-virtual {p0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->outAnimation(Landroid/view/View;)V

    .line 251
    :goto_0
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 252
    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 253
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->displayThumbnailGroup()V

    .line 254
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->changeBindsForCustom()V

    .line 255
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V

    .line 258
    :cond_0
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 259
    invoke-virtual {p0, v2, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeHideApps(ZZ)V

    .line 261
    :cond_1
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 262
    invoke-virtual {p0, v2, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeDisableApps(ZZ)V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->hideAppListViewBg(Landroid/app/Activity;)V

    .line 272
    return-void

    .line 247
    :cond_4
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->setAlpha(F)V

    .line 248
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->animationEnd(Z)V

    goto :goto_0
.end method

.method public inAnimation(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 366
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->enableAndBuildHardwareLayer()V

    .line 367
    const-string v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 369
    .local v2, scaleXIn:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 371
    .local v3, scaleYIn:Landroid/animation/PropertyValuesHolder;
    const-string v4, "Y"

    new-array v5, v7, [F

    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/bulletin/ui/Utilities;->getHeightPixels(Landroid/content/Context;)I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    aput v6, v5, v8

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 373
    .local v0, YIn:Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    aput-object v0, v4, v7

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 375
    .local v1, inAnimation:Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3f80

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 377
    new-instance v4, Lcom/baidu/launcher/ui/applistview/AppListView$2;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$2;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 388
    return-void

    .line 367
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 369
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mIsAnimating:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 907
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mZoom:F

    const v1, 0x3f7fbe77

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onAppChanged(Ljava/util/ArrayList;I)V
    .locals 4
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
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    const/4 v3, 0x1

    .line 1455
    monitor-enter p0

    :try_start_0
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v2, v3, :cond_0

    .line 1456
    const/4 v2, 0x0

    sput v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 1457
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->saveAppVisibleState(Z)V

    .line 1459
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->clearCurrentChanges(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1573
    :cond_1
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 1464
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAppAdded(Ljava/util/ArrayList;)V

    .line 1466
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/ui/applistview/AppListView$13;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$13;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1455
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1482
    :pswitch_2
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1483
    .local v1, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    const/4 v2, 0x4

    iput v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 1485
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v1}, Lcom/baidu/launcher/data/DisableDataManager;->updateItemToStart(Landroid/content/Intent;Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    goto :goto_1

    .line 1487
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/ui/applistview/AppListView$14;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$14;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1496
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1497
    new-instance v2, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1501
    :pswitch_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1502
    .restart local v1       #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/launcher/data/DisableDataManager;->deleteAndUpdateDisableFromDB(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_2

    .line 1504
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAppRemoved(Ljava/util/ArrayList;)V

    .line 1505
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/ui/applistview/AppListView$15;

    invoke-direct {v3, p0, p1}, Lcom/baidu/launcher/ui/applistview/AppListView$15;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1525
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1526
    .restart local v1       #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    .line 1527
    const/4 v2, 0x5

    iput v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 1528
    const/16 v2, 0x14

    iput v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    goto :goto_3

    .line 1532
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/ui/applistview/AppListView$16;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$16;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1555
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_6
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAppRemoved(Ljava/util/ArrayList;)V

    .line 1556
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/launcher/ui/applistview/AppListView$17;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$17;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public onAppListDataChanged(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "type"
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
    .line 1741
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    const-string v0, "Launcher.AppListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppListDataChanged, mDataLoaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDataLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mReloaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDataLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z

    if-eqz v0, :cond_1

    .line 1784
    :cond_0
    :goto_0
    return-void

    .line 1747
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$20;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/launcher/ui/applistview/AppListView$20;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAppListViewDataChange()V
    .locals 2

    .prologue
    .line 1733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z

    .line 1734
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->showApplistBackground()V

    .line 1735
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1736
    return-void
.end method

.method public onBackPressed()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 286
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    monitor-enter v6

    .line 287
    :try_start_0
    iget-wide v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mStartClickTime:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mStartClickTime:J

    .line 298
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v5, v12, :cond_2

    .line 300
    invoke-virtual {p0, v11, v12}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeHideApps(ZZ)V

    .line 345
    :goto_1
    return-void

    .line 290
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 291
    .local v3, tempTime:J
    iget-wide v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mStartClickTime:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0x12c

    cmp-long v5, v7, v9

    if-gtz v5, :cond_1

    .line 292
    iput-wide v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mStartClickTime:J

    .line 293
    monitor-exit v6

    goto :goto_1

    .line 298
    .end local v3           #tempTime:J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 295
    .restart local v3       #tempTime:J
    :cond_1
    :try_start_2
    iput-wide v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mStartClickTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 303
    .end local v3           #tempTime:J
    :cond_2
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 304
    invoke-virtual {p0, v11, v12}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeDisableApps(ZZ)V

    goto :goto_1

    .line 307
    :cond_3
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v5, v13, :cond_4

    .line 308
    sput v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 309
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->customSortPanel:Landroid/view/View;

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppPanel:Landroid/view/View;

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V

    goto :goto_1

    .line 314
    :cond_4
    const-string v5, "alpha"

    new-array v6, v13, [F

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 316
    .local v1, alphaOut:Landroid/animation/PropertyValuesHolder;
    const-string v5, "Y"

    new-array v6, v13, [F

    const/4 v7, 0x0

    aput v7, v6, v11

    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/bulletin/ui/Utilities;->getHeightPixels(Landroid/content/Context;)I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    aput v7, v6, v12

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 318
    .local v0, YOut:Landroid/animation/PropertyValuesHolder;
    new-array v5, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v11

    aput-object v0, v5, v12

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 320
    .local v2, outAnimation:Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 322
    new-instance v5, Lcom/baidu/launcher/ui/applistview/AppListView$1;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$1;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 344
    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->exitFullscreen()V

    goto :goto_1

    .line 314
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1004
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->tabApp:Landroid/view/View;

    if-ne p1, v4, :cond_1

    .line 1005
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/applistview/AppListView;->onPageTypeChanged(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1006
    invoke-virtual {p0, v5, v5}, Lcom/baidu/launcher/ui/applistview/AppListView;->showPages(IZ)V

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->tabWidget:Landroid/view/View;

    if-ne p1, v4, :cond_2

    .line 1009
    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->onPageTypeChanged(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1010
    invoke-virtual {p0, v7, v5}, Lcom/baidu/launcher/ui/applistview/AppListView;->showPages(IZ)V

    goto :goto_0

    .line 1012
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppTrue:Landroid/widget/Button;

    if-ne p1, v4, :cond_3

    .line 1014
    invoke-virtual {p0, v7, v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeHideApps(ZZ)V

    goto :goto_0

    .line 1015
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppCancel:Landroid/view/View;

    if-ne p1, v4, :cond_4

    .line 1017
    invoke-virtual {p0, v5, v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeHideApps(ZZ)V

    goto :goto_0

    .line 1018
    :cond_4
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->appShop:Landroid/view/View;

    if-ne p1, v4, :cond_5

    .line 1020
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1021
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.baidu.appsearch"

    const-string v5, "com.baidu.appsearch.LauncherActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/ubc/UBCMetric;->clickAppShopIconOnLauncherTab(Landroid/content/Context;)V

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v1

    .line 1026
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1027
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    const-string v4, "http://m.baidu.com/app"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1029
    .local v0, content_url:Landroid/net/Uri;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1031
    :try_start_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1032
    :catch_1
    move-exception v2

    .line 1033
    .local v2, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c015a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1043
    .end local v0           #content_url:Landroid/net/Uri;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppTrue:Landroid/widget/Button;

    if-ne p1, v4, :cond_6

    .line 1044
    invoke-virtual {p0, v7, v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeDisableApps(ZZ)V

    goto :goto_0

    .line 1045
    :cond_6
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppCancel:Landroid/widget/Button;

    if-ne p1, v4, :cond_0

    .line 1046
    invoke-virtual {p0, v5, v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->closeDisableApps(ZZ)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 1703
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1704
    instance-of v1, p1, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    if-eqz v1, :cond_1

    .line 1705
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$19;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$19;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1721
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1723
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1724
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SORT"

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1729
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 1717
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->changeBindsForCustom()V

    .line 1718
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 0
    .parameter "target"
    .parameter "success"

    .prologue
    .line 964
    if-nez p2, :cond_0

    .line 969
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 466
    const v1, 0x7f08000b

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    .line 467
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    if-nez v1, :cond_0

    .line 468
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "Launcher.AppListView"

    const-string v2, "Can\'t find necessary layout elements for AppListView"

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-void

    .line 469
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setHapticFeedbackEnabled(Z)V

    .line 477
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppPanel:Landroid/view/View;

    .line 478
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->customSortPanel:Landroid/view/View;

    .line 479
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppPanel:Landroid/view/View;

    .line 481
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppTrue:Landroid/widget/Button;

    .line 482
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppCancel:Landroid/view/View;

    .line 484
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppTrue:Landroid/widget/Button;

    .line 485
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppCancel:Landroid/widget/Button;

    .line 487
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppTrue:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppCancel:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppTrue:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mBackGroundView:Landroid/view/View;

    .line 496
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    .line 497
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mIndicator:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setIndicator(Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;)V

    .line 498
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->tabApp:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->onClick(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 1094
    return-void
.end method

.method public onFolderChanged(Ljava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "type"
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
    .line 1859
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1860
    return-void
.end method

.method public onItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 12
    .parameter "v"
    .parameter "item"

    .prologue
    .line 518
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 519
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getDisableHandler()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    move-result-object v1

    .line 520
    .local v1, disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;
    instance-of v8, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v8, :cond_c

    move-object v0, p2

    .line 521
    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 522
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    const/4 v6, 0x1

    .line 523
    .local v6, presetRun:Z
    iget-boolean v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-eqz v8, :cond_2

    .line 524
    const-string v8, "Launcher.AppListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preset status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/baidu/launcher/business/BusinessUtil;->BusinessIconClick(Landroid/content/Context;Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v6

    .line 614
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 616
    const/4 v7, 0x1

    .line 617
    .local v7, success:Z
    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 645
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v6           #presetRun:Z
    .end local v7           #success:Z
    .end local p1
    :cond_1
    :goto_1
    return-void

    .line 527
    .restart local v0       #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .restart local v6       #presetRun:Z
    .restart local p1
    :cond_2
    iget v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 529
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v0, v9}, Lcom/baidu/launcher/data/AppsDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/ListItemInfo;I)V

    .line 533
    const-wide/16 v8, 0x1

    iput-wide v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 534
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 537
    const/4 v5, 0x0

    .line 539
    .local v5, packageName:Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 541
    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 543
    :cond_3
    if-eqz v5, :cond_4

    .line 544
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    invoke-static {v8, v5, v9, v10, v11}, Lcom/baidu/launcher/business/BusinessUtil;->BusinessIconFirstRun(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 547
    :cond_4
    const-string v8, "Launcher.AppListView"

    const-string v9, "item click package name null"

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    .end local v5           #packageName:Ljava/lang/String;
    :cond_5
    iget v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_0

    .line 550
    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.baidu.appdisable.action.PACKAGES_DISABLE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "PACKAGES_DISABLE_MAP"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 553
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 554
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 555
    .local v4, msg:Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v4, Landroid/os/Message;->what:I

    .line 556
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessage(Landroid/os/Message;)Z

    .line 558
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/baidu/launcher/ui/applistview/AppListView$4;

    invoke-direct {v9, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$4;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 619
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #msg:Landroid/os/Message;
    .restart local v7       #success:Z
    :cond_6
    iget v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->eventCount:I

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->replacedIntent:Landroid/content/Intent;

    if-eqz v8, :cond_9

    .line 620
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget-object v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->replacedIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9, v0}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v7

    .line 625
    :goto_2
    if-eqz v7, :cond_7

    instance-of v8, p1, Lcom/baidu/launcher/ui/common/PressedView;

    if-eqz v8, :cond_7

    .line 626
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    check-cast p1, Lcom/baidu/launcher/ui/common/PressedView;

    .end local p1
    invoke-virtual {v8, p1}, Lcom/baidu/launcher/app/Launcher;->setIconPressed(Lcom/baidu/launcher/ui/common/PressedView;)V

    .line 628
    :cond_7
    if-eqz v7, :cond_8

    .line 629
    iget-wide v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 630
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 633
    :cond_8
    iget-object v10, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    if-nez v8, :cond_a

    const-string v8, ""

    :goto_3
    iget-object v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v9, :cond_b

    const-string v9, ""

    :goto_4
    invoke-static {v10, v8, v9}, Lcom/baidu/launcher/ubc/UBC;->reportIconApplistOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 639
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-static {v8, v9}, Lcom/baidu/launcher/ubc/UBCMetric;->startAppFromLauncher(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 623
    .restart local p1
    :cond_9
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    iget-object v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9, v0}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    .line 633
    .end local p1
    :cond_a
    iget-object v8, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_b
    iget-object v9, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 641
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v6           #presetRun:Z
    .end local v7           #success:Z
    .restart local p1
    :cond_c
    instance-of v8, p1, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-eqz v8, :cond_1

    .line 642
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppListView;->handleFolderClick(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onItemLongClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 21
    .parameter "view"
    .parameter "info"

    .prologue
    .line 707
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setDragView(Landroid/view/View;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->initDragData(Landroid/view/View;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    .line 762
    :goto_0
    return-void

    .line 716
    :cond_0
    move-object/from16 v4, p1

    .line 717
    .local v4, v:Landroid/view/View;
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/baidu/launcher/ui/editview/PagedViewWidget;

    if-eqz v3, :cond_3

    .line 718
    const v3, 0x7f08011c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 719
    const/16 v17, 0x1

    .line 720
    .local v17, spanX:I
    const/16 v19, 0x1

    .line 721
    .local v19, spanY:I
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_2

    move-object/from16 v20, p2

    .line 722
    check-cast v20, Landroid/appwidget/AppWidgetProviderInfo;

    .line 723
    .local v20, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v18

    .line 725
    .local v18, spanXY:[I
    const/4 v3, 0x0

    aget v17, v18, v3

    .line 726
    const/4 v3, 0x1

    aget v19, v18, v3

    .line 733
    .end local v18           #spanXY:[I
    .end local v20           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->estimateItemSize(IILjava/lang/Object;)[I

    move-result-object v16

    .line 736
    .local v16, maxSize:[I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/WidgetPreviewCache;

    move-result-object v3

    const/4 v6, 0x0

    aget v6, v16, v6

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v6}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getPreviewForRealSize(Ljava/lang/Object;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 738
    .local v5, preview:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v3, v5, v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->dragWithWidget(Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v9

    const/4 v10, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v10}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v5           #preview:Landroid/graphics/Bitmap;
    .end local v16           #maxSize:[I
    .end local v17           #spanX:I
    .end local v19           #spanY:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    const v6, 0x7f08013a

    new-instance v7, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v7}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    invoke-virtual {v3, v6, v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    goto/16 :goto_0

    .line 727
    .restart local v17       #spanX:I
    .restart local v19       #spanY:I
    :cond_2
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v3, :cond_1

    move-object/from16 v15, p2

    .line 728
    check-cast v15, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 729
    .local v15, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget v0, v15, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    move/from16 v17, v0

    .line 730
    iget v0, v15, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    move/from16 v19, v0

    goto :goto_1

    .line 743
    .end local v15           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .restart local v16       #maxSize:[I
    :catch_0
    move-exception v14

    .line 744
    .local v14, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v7, v4

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v13}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    goto :goto_2

    .line 750
    .end local v14           #e:Ljava/lang/Exception;
    .end local v16           #maxSize:[I
    .end local v17           #spanX:I
    .end local v19           #spanY:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v13}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    goto :goto_2
.end method

.method public onMenu(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 13
    .parameter "listener"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 1577
    const/4 v0, 0x0

    .line 1578
    .local v0, appListMenu:Landroid/view/View;
    iget-object v8, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030076

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1580
    const v8, 0x7f080182

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1582
    .local v6, timeSort:Landroid/widget/TextView;
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1583
    const v8, 0x7f080185

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1585
    .local v4, letterSort:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1586
    const v8, 0x7f080188

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1588
    .local v2, frequencySort:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    const v8, 0x7f08018b

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1591
    const v8, 0x7f08018d

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1592
    const v8, 0x7f08018f

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1609
    const v8, 0x7f080181

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1611
    .local v7, timeSortSelected:Landroid/widget/ImageView;
    const v8, 0x7f080184

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1613
    .local v5, letterSortSelected:Landroid/widget/ImageView;
    const v8, 0x7f08018a

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1615
    .local v1, customSortSelected:Landroid/widget/ImageView;
    const v8, 0x7f080187

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1618
    .local v3, frequencySortSelected:Landroid/widget/ImageView;
    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    packed-switch v8, :pswitch_data_0

    .line 1662
    :goto_0
    return-object v0

    .line 1620
    :pswitch_0
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1621
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1622
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1623
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1631
    :pswitch_1
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1632
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1633
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1634
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1642
    :pswitch_2
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1643
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1644
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1645
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1648
    :pswitch_3
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1649
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1650
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1651
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1618
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNewIntent(Z)V
    .locals 2
    .parameter "alreadyOnHome"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    .line 350
    .local v0, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    if-eqz v0, :cond_0

    .line 351
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public onPageTypeChanged(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 1051
    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->lastActiveType:I

    if-ne v1, p1, :cond_0

    .line 1052
    const/4 v0, 0x0

    .line 1063
    :goto_0
    return v0

    .line 1053
    :cond_0
    if-nez p1, :cond_2

    .line 1061
    :cond_1
    :goto_1
    iput p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->lastActiveType:I

    .line 1062
    iput p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->lastActiveType:I

    goto :goto_0

    .line 1056
    :cond_2
    if-ne p1, v0, :cond_1

    goto :goto_1
.end method

.method onSortChange()V
    .locals 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1373
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 1374
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCanSaveData(Z)V

    .line 1375
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateItemToDB()V

    .line 1376
    return-void
.end method

.method public onWorkspaceChanged(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 363
    return-void
.end method

.method public outAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->enableAndBuildHardwareLayer()V

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->animationEnd(Z)V

    .line 411
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->inAnimation(Landroid/view/View;)V

    .line 412
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 1806
    return-void
.end method

.method public releaseAppsView()V
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeAllViews()V

    .line 1796
    return-void
.end method

.method public releaseAppsWidgetCache()V
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->releaseWidgetCache()V

    .line 1800
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 920
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    return-void
.end method

.method public removeFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1184
    return-void
.end method

.method public setApps(Ljava/util/Vector;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, list:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setApps(Ljava/util/Vector;)V

    .line 912
    return-void
.end method

.method public setDragController(Lcom/baidu/launcher/ui/dragdrop/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 780
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    .line 784
    return-void
.end method

.method public setInterLoop(Z)V
    .locals 1
    .parameter "isLoop"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setInterLoop(Z)V

    .line 1792
    return-void
.end method

.method public setLauncher(Lcom/baidu/launcher/app/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 509
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setup(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$PagedViewContainer;)V

    .line 510
    return-void
.end method

.method public setLoopScroll(Z)V
    .locals 1
    .parameter "isLoop"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setLoopScrool(Z)V

    .line 1788
    return-void
.end method

.method public setSortType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1390
    sput p1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 1391
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 2
    .parameter "viewManager"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 189
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V

    .line 190
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->setDragController(Lcom/baidu/launcher/ui/dragdrop/DragController;)V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableApps:Ljava/util/ArrayList;

    .line 192
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/data/AppsDataManager;->registerAppChangeListener(Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/app/ThemeChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->registerAppListViewDataChangeListener(Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;)V

    .line 195
    return-void
.end method

.method public show(ZLjava/lang/Object;)V
    .locals 3
    .parameter "animate"
    .parameter "extra"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 200
    sput v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 201
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->customSortPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->showApplistBackground()V

    .line 206
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCurrentPage(I)V

    .line 209
    :cond_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->onPageTypeChanged(I)Z

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->setFocusable(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->requestFocus()Z

    .line 212
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->setVisibility(I)V

    .line 213
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mDataLoaded:Z

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 216
    :cond_1
    invoke-virtual {p0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->inAnimation(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method public showApplistBackground()V
    .locals 7

    .prologue
    const/16 v5, 0xff

    const/4 v6, 0x0

    .line 220
    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    if-eqz v3, :cond_1

    .line 221
    sget-object v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->applistBackground:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/launcher/utils/Utilities;->getApplistBG(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 222
    .local v1, bgDrawble:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 223
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    mul-int/lit16 v3, v3, 0xff

    div-int/lit8 v0, v3, 0x64

    .line 224
    .local v0, alpha:I
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 225
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/baidu/launcher/ui/animation/Choreographer;->showAppListViewBg(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    .line 240
    .end local v0           #alpha:I
    .end local v1           #bgDrawble:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    if-eqz v3, :cond_2

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->getApplistBackgroudDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->APPLISTBG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 230
    .restart local v1       #bgDrawble:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 231
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    mul-int/lit16 v3, v3, 0xff

    div-int/lit8 v0, v3, 0x64

    .line 232
    .restart local v0       #alpha:I
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/baidu/launcher/ui/animation/Choreographer;->showAppListViewBg(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 236
    .end local v0           #alpha:I
    .end local v1           #bgDrawble:Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-boolean v3, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    if-eqz v3, :cond_0

    .line 237
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListBgAlpha:I

    mul-int/lit16 v3, v3, 0xff

    div-int/lit8 v2, v3, 0x64

    .line 238
    .local v2, color:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    const/4 v4, 0x0

    rsub-int v5, v2, 0xff

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/baidu/launcher/ui/animation/Choreographer;->showAppListViewBg(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public showDraggedView(Ljava/lang/Object;Z)V
    .locals 13
    .parameter "dragInfo"
    .parameter "animation"

    .prologue
    const/high16 v6, 0x3f00

    const v1, 0x3e99999a

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 1201
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .line 1202
    .local v12, layout:Landroid/view/View;
    if-nez v12, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    invoke-virtual {v12, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    .line 1205
    .local v11, child:Landroid/view/View;
    if-eqz v11, :cond_0

    .line 1207
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    if-eqz p2, :cond_2

    iget v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mZoom:F

    const v4, 0x3a83126f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1209
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1210
    .local v10, animSet:Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1211
    .local v9, animAlpha:Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1214
    .local v0, animScale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1215
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1216
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1217
    invoke-virtual {v11, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1219
    .end local v0           #animScale:Landroid/view/animation/ScaleAnimation;
    .end local v9           #animAlpha:Landroid/view/animation/AlphaAnimation;
    .end local v10           #animSet:Landroid/view/animation/AnimationSet;
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public showOnDropFailureAnimation(Ljava/lang/Object;[I)Z
    .locals 1
    .parameter "mDragInfo"
    .parameter "mOriginatorXY"

    .prologue
    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method showPages(IZ)V
    .locals 1
    .parameter "type"
    .parameter "animation"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showPages(IZ)V

    .line 1068
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 1088
    const/4 v0, 0x1

    return v0
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 960
    return-void
.end method

.method public updateApps()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 927
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v6, v3, :cond_0

    move v2, v3

    .line 928
    .local v2, hideMode:Z
    :goto_0
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v6, v8, :cond_1

    move v0, v3

    .line 929
    .local v0, customtSort:Z
    :goto_1
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    move v1, v3

    .line 930
    .local v1, disableMode:Z
    :goto_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 932
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->customSortPanel:Landroid/view/View;

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v3, v8, :cond_4

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppPanel:Landroid/view/View;

    if-eqz v1, :cond_5

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateApps(ZZ)V

    .line 937
    return-void

    .end local v0           #customtSort:Z
    .end local v1           #disableMode:Z
    .end local v2           #hideMode:Z
    :cond_0
    move v2, v4

    .line 927
    goto :goto_0

    .restart local v2       #hideMode:Z
    :cond_1
    move v0, v4

    .line 928
    goto :goto_1

    .restart local v0       #customtSort:Z
    :cond_2
    move v1, v4

    .line 929
    goto :goto_2

    .restart local v1       #disableMode:Z
    :cond_3
    move v3, v5

    .line 930
    goto :goto_3

    :cond_4
    move v3, v5

    .line 932
    goto :goto_4

    :cond_5
    move v4, v5

    .line 935
    goto :goto_5
.end method

.method public updateCalendarIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateCalendarIcon(Landroid/graphics/Bitmap;)V

    .line 1072
    return-void
.end method

.method public updateDisableAppsButtons(ZI)V
    .locals 3
    .parameter "enable"
    .parameter "disableNum"

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableConfirm:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableConfirm:Ljava/lang/String;

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableAppTrue:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->disableConfirm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1905
    return-void
.end method

.method public updateHideAppsButtons(ZI)V
    .locals 3
    .parameter "enable"
    .parameter "hideNum"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideConfirm:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideConfirm:Ljava/lang/String;

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideAppTrue:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->hideConfirm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 953
    return-void
.end method

.method public updateTopPadding(Z)V
    .locals 3
    .parameter "showStatusBar"

    .prologue
    const/4 v1, 0x0

    .line 675
    if-eqz p1, :cond_1

    .line 676
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mPaddingTop:I

    .line 677
    .local v0, top:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 678
    if-lez v0, :cond_0

    move v1, v0

    :cond_0
    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mPaddingTop:I

    .line 684
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->requestLayout()V

    .line 685
    return-void

    .line 680
    .end local v0           #top:I
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mPaddingTop:I

    .line 681
    .restart local v0       #top:I
    if-lez v0, :cond_2

    .line 682
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mPaddingTop:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 681
    goto :goto_1
.end method

.method public zoom(FZ)V
    .locals 11
    .parameter "zoom"
    .parameter "animate"

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->cancelLongPress()V

    .line 798
    iput p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mZoom:F

    .line 799
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->setFocusable(Z)V

    .line 802
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->requestFocus()Z

    .line 803
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->onPageTypeChanged(I)Z

    .line 804
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setCurrentPage(I)V

    .line 805
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 806
    if-eqz p2, :cond_1

    .line 807
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->enableAndBuildHardwareLayer()V

    .line 809
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getHeight()I

    move-result v9

    .line 810
    .local v9, offset:I
    int-to-float v1, v9

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->setTranslationY(F)V

    .line 811
    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 813
    .local v10, tyuAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xb4

    invoke-virtual {v10, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 814
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$5;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$5;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 820
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 836
    .end local v9           #offset:I
    .end local v10           #tyuAnim:Landroid/animation/ValueAnimator;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->setVisibility(I)V

    .line 869
    :goto_1
    return-void

    .line 822
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 826
    .local v0, dockAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 828
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 830
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 834
    .end local v0           #dockAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->onAnimationEnd()V

    goto :goto_0

    .line 838
    :cond_2
    if-eqz p2, :cond_4

    .line 839
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 840
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->enableAndBuildHardwareLayer()V

    .line 841
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->getHeight()I

    move-result v9

    .line 842
    .restart local v9       #offset:I
    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, v9

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 844
    .restart local v10       #tyuAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v10, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 845
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$6;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$6;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 851
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 864
    .end local v9           #offset:I
    .end local v10           #tyuAnim:Landroid/animation/ValueAnimator;
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->enableWorkspaceCache(Z)V

    goto :goto_1

    .line 853
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 857
    .restart local v0       #dockAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 859
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 861
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 866
    .end local v0           #dockAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AppListView;->onAnimationEnd()V

    goto :goto_1
.end method
