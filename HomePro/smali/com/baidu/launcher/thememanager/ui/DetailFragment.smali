.class public Lcom/baidu/launcher/thememanager/ui/DetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/DetailFragment$ImageListOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetailFragment"


# instance fields
.field public adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private deleteListener:Landroid/view/View$OnClickListener;

.field private mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

.field private mContainer:Lcom/baidu/launcher/thememanager/view/PagerContainer;

.field public mCurrent:Z

.field private mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

.field private mIsNavigatorVisible:Z

.field public mPosition:I

.field private mReturnFragmentIndex:I

.field private mSize:I

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private mView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    .line 26
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 27
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mCurrent:Z

    .line 29
    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mType:I

    .line 30
    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mSize:I

    .line 39
    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mReturnFragmentIndex:I

    .line 42
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;

    .line 43
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIsNavigatorVisible:Z

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/DetailFragment;)Lcom/baidu/launcher/thememanager/view/Indicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/DetailFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public init(III[Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;ZIZ)V
    .locals 1
    .parameter "type"
    .parameter "size"
    .parameter "position"
    .parameter "detail_list"
    .parameter "click"
    .parameter "adapter"
    .parameter "current"
    .parameter "returnFragmentIdex"
    .parameter "isNavigatorVisible"

    .prologue
    .line 47
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mType:I

    .line 48
    iput p2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mSize:I

    .line 49
    iput p3, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    .line 50
    iput-object p6, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 51
    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mTitle:Ljava/lang/String;

    .line 52
    iput p8, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mReturnFragmentIndex:I

    .line 53
    iput-object p5, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->clickListener:Landroid/view/View$OnClickListener;

    .line 54
    iput-boolean p7, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mCurrent:Z

    .line 55
    iput-boolean p9, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIsNavigatorVisible:Z

    .line 57
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/DetailFragment$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/DetailFragment$1;-><init>(Lcom/baidu/launcher/thememanager/ui/DetailFragment;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->deleteListener:Landroid/view/View$OnClickListener;

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v2, "DetailFragment"

    const-string v4, "DetailFragment::onCreateView"

    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const v2, 0x7f030093

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;

    .line 87
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;

    const v4, 0x7f08001d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 88
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iget v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mReturnFragmentIndex:I

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setReturnFragmentIndex(I)V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02020c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->deleteListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->deleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarOperListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_1
    iget-boolean v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIsNavigatorVisible:Z

    if-nez v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iget-boolean v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIsNavigatorVisible:Z

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarNavigatorVisible(Z)V

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;

    const v4, 0x7f0801d1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/view/Indicator;

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    .line 102
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/thememanager/view/Indicator;->setDetail(Landroid/content/Context;)V

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, i:I
    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mType:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    iget v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mSize:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/thememanager/view/Indicator;->setIndicator(I)V

    .line 110
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    iget v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 111
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/thememanager/view/Indicator;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;

    const v4, 0x7f0801d3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/view/PagerContainer;

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mContainer:Lcom/baidu/launcher/thememanager/view/PagerContainer;

    .line 114
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mContainer:Lcom/baidu/launcher/thememanager/view/PagerContainer;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/view/PagerContainer;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 117
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/baidu/launcher/thememanager/ui/DetailFragment$ImageListOnPageChangeListener;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/ui/DetailFragment$ImageListOnPageChangeListener;-><init>(Lcom/baidu/launcher/thememanager/ui/DetailFragment;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 118
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 120
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 122
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 123
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b010e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 124
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 126
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;

    const v4, 0x7f0801d2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 128
    .local v1, mApplyButton:Landroid/widget/Button;
    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mType:I

    if-ltz v2, :cond_5

    .line 129
    iget-boolean v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mCurrent:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    const v2, 0x7f0c00d9

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 134
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;

    return-object v2

    :cond_4
    move v2, v3

    .line 129
    goto :goto_0

    .line 132
    :cond_5
    const v2, 0x7f0c00f0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method public setCurrentDetail(I)V
    .locals 1
    .parameter "p"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "p"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 73
    :cond_0
    return-void
.end method
