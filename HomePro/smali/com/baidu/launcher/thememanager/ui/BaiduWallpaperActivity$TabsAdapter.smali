.class public Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BaiduWallpaperActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$DummyTabFactory;,
        Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    .line 202
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 203
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 206
    return-void
.end method

.method private getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .parameter "tabSpec"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$DummyTabFactory;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$DummyTabFactory;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 210
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, tag:Ljava/lang/String;
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$TabInfo;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 213
    .local v0, info:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 215
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->notifyDataSetChanged()V

    .line 216
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 266
    .local v0, mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
    check-cast p3, Landroid/support/v4/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 267
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 274
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 276
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 256
    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 257
    .local v0, f:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 259
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 280
    check-cast p2, Landroid/support/v4/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 239
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 225
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 230
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    .line 231
    .local v1, widget:Landroid/widget/TabWidget;
    invoke-virtual {v1}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v0

    .line 232
    .local v0, oldFocusability:I
    const/high16 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 233
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 234
    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 235
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 286
    .local v0, position:I
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 287
    return-void
.end method
