.class public Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;
.super Lcom/baidu/launcher/thememanager/ui/BaseFragment;
.source "BaiduThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$1;,
        Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;,
        Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;
    }
.end annotation


# static fields
.field private static final FRAGMENT_LOCAL:Ljava/lang/String; = "local"

.field private static final FRAGMENT_ONLINE:Ljava/lang/String; = "online"

.field private static final TAG:Ljava/lang/String; = "BaiduThemeActivity"


# instance fields
.field private mHandlerReceiver:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

.field private mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTab_local:Landroid/view/View;

.field private mTab_online:Landroid/view/View;

.field private mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

.field private mTitlebar:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;-><init>()V

    .line 366
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 146
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 148
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 150
    .local v3, transaction:Landroid/support/v4/app/FragmentTransaction;
    new-instance v4, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    invoke-direct {v4, p0, p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    .line 152
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 153
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 154
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 155
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    const-string v4, "local"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    .line 159
    const-string v4, "online"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    .line 162
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    if-nez v4, :cond_0

    .line 163
    new-instance v4, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-direct {v4}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;-><init>()V

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    .line 164
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v4, v7}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->init(I)V

    .line 166
    const v4, 0x7f0801fb

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    const-string v6, "local"

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    if-nez v4, :cond_2

    .line 170
    new-instance v4, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-direct {v4}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;-><init>()V

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    .line 172
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v4, v7}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->Init(I)V

    .line 179
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "Local"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTab_local:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const-class v6, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v4, v5, v6, v8}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 181
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v6, "Online"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTab_online:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const-class v6, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v4, v5, v6, v8}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 185
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 186
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 189
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 191
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 192
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "fragment_index"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 194
    .local v1, index:I
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    const/4 v5, 0x1

    iput v5, v4, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    .line 195
    if-eq v1, v7, :cond_3

    .line 196
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    iput v1, v4, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    .line 201
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    iget v5, v5, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 203
    return-void

    .line 176
    .end local v1           #index:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 197
    .restart local v1       #index:I
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    if-eqz p1, :cond_1

    .line 198
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    const-string v5, "tab"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    goto :goto_1
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 116
    instance-of v0, p1, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    if-eqz v0, :cond_1

    .line 117
    check-cast p1, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    .end local p1
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    .end local p1
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f03009e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->setContentView(I)V

    .line 62
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTitlebar:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTitlebar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 66
    const v0, 0x7f0801fb

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTab_local:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTab_online:Landroid/view/View;

    .line 71
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ubc/UBC;->reportThemeBrowse(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 356
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 357
    const-string v1, "fragment_index"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 359
    .local v0, index:I
    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    iget v1, v1, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    if-eq v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    iput v0, v1, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    .line 361
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    iget v2, v2, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 362
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->invalidate()V

    .line 364
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 98
    const-string v2, "BaiduThemeActivity"

    const-string v3, "onOptionsItemSelected: "

    invoke-static {v2, v3}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 111
    :goto_0
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 103
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "download_warning"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f0802da
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mHandlerReceiver:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onPause(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "download_warning"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    .local v0, NoNeedMenu:Z
    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 93
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onResume()V

    .line 127
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$1;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mHandlerReceiver:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.thememanager.action.downloadstatechange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mHandlerReceiver:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onResume(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    const-string v0, "tab"

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabsAdapter:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;

    iget v1, v1, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    return-void
.end method
