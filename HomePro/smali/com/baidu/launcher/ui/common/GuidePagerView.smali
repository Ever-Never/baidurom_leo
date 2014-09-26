.class public Lcom/baidu/launcher/ui/common/GuidePagerView;
.super Landroid/support/v4/view/ViewPager;
.source "GuidePagerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;
    }
.end annotation


# instance fields
.field private mGuidePagerListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    .line 29
    check-cast p1, Lcom/baidu/launcher/app/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/common/GuidePagerView;)Lcom/baidu/launcher/app/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/common/GuidePagerView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    return-object v0
.end method

.method private initGuidePagerList()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 47
    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03005b

    invoke-virtual {v8, v9, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, pager1:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/GuidePagerView;->addPager(Landroid/view/View;)Z

    .line 51
    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03005c

    invoke-virtual {v8, v9, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 53
    .local v3, pager2:Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 54
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 56
    .local v6, versionName:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 57
    const v8, 0x7f080137

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 59
    .local v7, versionText:Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v7           #versionText:Landroid/widget/TextView;
    :goto_0
    const v8, 0x7f080139

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 65
    .local v1, enterHome:Landroid/widget/ImageButton;
    new-instance v8, Lcom/baidu/launcher/ui/common/GuidePagerView$1;

    invoke-direct {v8, p0}, Lcom/baidu/launcher/ui/common/GuidePagerView$1;-><init>(Lcom/baidu/launcher/ui/common/GuidePagerView;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/common/GuidePagerView;->addPager(Landroid/view/View;)Z

    .line 73
    new-instance v4, Landroid/view/View;

    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    .local v4, pager3:Landroid/view/View;
    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/common/GuidePagerView;->addPager(Landroid/view/View;)Z

    .line 77
    return-void

    .line 60
    .end local v1           #enterHome:Landroid/widget/ImageButton;
    .end local v4           #pager3:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addPager(ILandroid/view/View;)Z
    .locals 2
    .parameter "aLocation"
    .parameter "aView"

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPager(Landroid/view/View;)Z
    .locals 2
    .parameter "aView"

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    .line 213
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 36
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public prepareGuidePage()V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GuidePagerView;->initGuidePagerList()V

    .line 150
    new-instance v0, Lcom/baidu/launcher/ui/common/GuidePagerView$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/common/GuidePagerView$2;-><init>(Lcom/baidu/launcher/ui/common/GuidePagerView;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/GuidePagerView;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 171
    new-instance v0, Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/ui/common/GuidePagerView$GuidePagerAdapter;-><init>(Lcom/baidu/launcher/ui/common/GuidePagerView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/GuidePagerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/GuidePagerView;->setCurrentItem(I)V

    .line 173
    return-void
.end method

.method public removePager(I)Z
    .locals 2
    .parameter "aLocation"

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePager(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GuidePagerView;->mGuidePagerListViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
