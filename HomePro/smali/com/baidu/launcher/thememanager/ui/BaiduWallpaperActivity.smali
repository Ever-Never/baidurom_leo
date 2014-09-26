.class public Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;
.super Lcom/baidu/launcher/thememanager/ui/BaseFragment;
.source "BaiduWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;
    }
.end annotation


# static fields
.field private static final FRAGMENT_LOCAL:Ljava/lang/String; = "local"

.field private static final FRAGMENT_ONLINE:Ljava/lang/String; = "online"

.field private static final TAG:Ljava/lang/String; = "BaiduWallpaperActivity"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

.field private mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

.field private mTitleBarIcon:Landroid/widget/ImageView;

.field private mTitleBarLogo:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mtab_local:Landroid/view/View;

.field private mtab_online:Landroid/view/View;

.field private mtab_title:Landroid/view/View;

.field private mtitleBarMore:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;-><init>()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    const v4, 0x7f0801fb

    const/4 v5, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 124
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 126
    .local v1, transaction:Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

    invoke-direct {v2, p0, p0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

    .line 128
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 129
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 130
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 131
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    const-string v2, "local"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    .line 136
    const-string v2, "online"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    .line 139
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    invoke-direct {v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    .line 141
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    const-string v3, "local"

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    if-nez v2, :cond_1

    .line 145
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-direct {v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    .line 146
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    const-string v3, "online"

    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "Local"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtab_local:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 150
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "Online"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtab_online:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 153
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 154
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 156
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 157
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 159
    if-eqz p1, :cond_2

    .line 160
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "tab"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 164
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 92
    instance-of v0, p1, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    .end local p1
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    .end local p1
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->requestWindowFeature(I)Z

    .line 52
    const v0, 0x7f03009e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    .line 55
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 56
    const v0, 0x7f0801fb

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 57
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b3

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtab_local:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b4

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtab_online:Landroid/view/View;

    .line 60
    const v0, 0x7f080238

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtab_title:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtab_title:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    const v0, 0x7f080239

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTitleBarLogo:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTitleBarLogo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    const v0, 0x7f08023a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTitleBarIcon:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTitleBarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtitleBarMore:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtitleBarMore:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mtitleBarMore:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$1;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ubc/UBC;->reportWallpaperBrowse(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 292
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->finish()V

    .line 294
    const v0, 0x7f04000e

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->overridePendingTransition(II)V

    .line 295
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onPause()V

    .line 112
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onPause(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onResume()V

    .line 104
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onResume(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "tab"

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
