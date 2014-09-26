.class public Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;
.super Landroid/support/v4/app/Fragment;
.source "WallpaperLocalFragment.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$1;,
        Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;,
        Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;
    }
.end annotation


# static fields
.field private static final LOADER_ID:I = 0x14


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragView:Landroid/view/View;

.field private mGridView:Landroid/widget/GridView;

.field private mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

.field private mImageThumbHeight:I

.field private mImageThumbWidth:I

.field protected mMetaBundle:Landroid/os/Bundle;

.field private mView_error:Landroid/view/View;

.field private mWallpaperAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

.field private mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    return-object v0
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 184
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->notifyDataSetChanged()V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->setHasOptionsMenu(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.launcher.thememanager.defaultFolder.exists_check_wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageThumbWidth:I

    .line 59
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageThumbHeight:I

    .line 61
    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    .line 62
    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageResizer;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageThumbWidth:I

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageThumbHeight:I

    invoke-direct {v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/ImageResizer;-><init>(II)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    .line 63
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setImageResizer(Lcom/baidu/launcher/thememanager/util/ImageResizer;)V

    .line 64
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    const v2, 0x7f020370

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setLoadingImage(I)V

    .line 67
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->attach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 74
    const v2, 0x7f0300b1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mFragView:Landroid/view/View;

    .line 76
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mFragView:Landroid/view/View;

    const v3, 0x7f08022b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mView_error:Landroid/view/View;

    .line 77
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mFragView:Landroid/view/View;

    const v3, 0x7f08022c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 78
    .local v1, refresh:Landroid/widget/Button;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mFragView:Landroid/view/View;

    const v3, 0x7f08022d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, errorTxt:Landroid/widget/TextView;
    const v2, 0x7f0c00d5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    .line 83
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mFragView:Landroid/view/View;

    const v3, 0x7f080225

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mGridView:Landroid/widget/GridView;

    .line 84
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/16 v3, 0x14

    new-instance v4, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;

    invoke-direct {v4, p0, v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$1;)V

    invoke-virtual {v2, v3, v5, v4}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 88
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mFragView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->detach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 109
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 95
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 96
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
