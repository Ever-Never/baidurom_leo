.class public Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;
.super Landroid/support/v4/app/Fragment;
.source "ThemeLocalFragment.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;,
        Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;,
        Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;,
        Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;,
        Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;,
        Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;
    }
.end annotation


# static fields
.field private static final LOADER_ID:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BaiduThemeLocalFragment"


# instance fields
.field private b_applying:Z

.field private b_imageclick:Z

.field private btn_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;

.field private image_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;

.field private image_long_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;

.field private mComponentType:I

.field private mContext:Landroid/content/Context;

.field private mFragView:Landroid/view/View;

.field private mIsSdcardUnmount:Z

.field private mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

.field private mViewDisable:Landroid/view/View;

.field private mViewGrid:Landroid/widget/GridView;

.field private taskCallback:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I

    .line 49
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_applying:Z

    .line 50
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_imageclick:Z

    .line 52
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->taskCallback:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;

    .line 54
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->btn_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;

    .line 55
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->image_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;

    .line 56
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->image_long_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;

    .line 57
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mIsSdcardUnmount:Z

    .line 253
    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_applying:Z

    return v0
.end method

.method static synthetic access$502(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_applying:Z

    return p1
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->taskCallback:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_imageclick:Z

    return v0
.end method

.method static synthetic access$702(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_imageclick:Z

    return p1
.end method

.method static synthetic access$800(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I

    return v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mIsSdcardUnmount:Z

    return v0
.end method


# virtual methods
.method public init(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 64
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I

    .line 65
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 275
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mIsSdcardUnmount:Z

    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;

    invoke-direct {v2, p0, v3}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 294
    return-void

    .line 287
    :cond_1
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mIsSdcardUnmount:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->setHasOptionsMenu(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.launcher.thememanager.defaultFolder.exists_check"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 103
    const v0, 0x7f03009d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mFragView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mFragView:Landroid/view/View;

    const v1, 0x7f0801f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mViewGrid:Landroid/widget/GridView;

    .line 106
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mFragView:Landroid/view/View;

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mViewDisable:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mViewGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mViewDisable:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    .line 118
    .local v7, width:I
    if-eqz v7, :cond_0

    .line 119
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mViewGrid:Landroid/widget/GridView;

    div-int/lit8 v1, v7, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 122
    :cond_0
    new-instance v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->btn_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->image_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->image_long_click_listener:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageLongClickListener;

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mViewGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->attach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mFragView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "BaiduThemeLocalFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->clean()V

    .line 141
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->detach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 143
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    const-string v1, "BaiduThemeLocalFragment"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_imageclick:Z

    .line 82
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I

    add-int/lit8 v2, v2, 0xa

    new-instance v3, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;

    invoke-direct {v3, p0, v4}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 84
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->PREFERENCE_KEYS:[Ljava/lang/String;

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I

    aget-object v1, v1, v3

    :goto_0
    const-string v3, "\u9ed8\u8ba4V1"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, currentTheme:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    iget-object v1, v1, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mCurrentTheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    iput-object v0, v1, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mCurrentTheme:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->notifyDataSetChanged()V

    .line 96
    .end local v0           #currentTheme:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 97
    return-void

    .line 85
    :cond_1
    const-string v1, "theme_default"

    goto :goto_0
.end method
