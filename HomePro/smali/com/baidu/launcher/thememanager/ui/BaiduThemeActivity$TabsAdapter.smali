.class Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BaiduThemeActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$DummyTabFactory;,
        Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TabsAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field public mCurrent_index:I

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    .line 246
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    .line 247
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 250
    return-void
.end method

.method private getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mLocalFragment:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    move-result-object v0

    goto :goto_0

    .line 293
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
    .line 253
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$DummyTabFactory;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$DummyTabFactory;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 254
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, tag:Ljava/lang/String;
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 257
    .local v0, info:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 259
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->notifyDataSetChanged()V

    .line 260
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 311
    .local v0, mCurTransaction:Landroid/support/v4/app/FragmentTransaction;
    check-cast p3, Landroid/support/v4/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 312
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 319
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 321
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 301
    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 302
    .local v0, f:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 304
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 325
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
    .line 284
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 269
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 274
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    .line 275
    .local v1, widget:Landroid/widget/TabWidget;
    invoke-virtual {v1}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v0

    .line 276
    .local v0, oldFocusability:I
    const/high16 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 277
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 278
    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 279
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    .line 280
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 330
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    .line 331
    .local v1, position:I
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 332
    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurrent_index:I

    .line 333
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v3, "online"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 337
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_1

    .line 338
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    const v3, 0x7f0801fb

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->mOnlineFragment:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    move-result-object v4

    const-string v5, "online"

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 344
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 345
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 346
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$TabsAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 349
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method
