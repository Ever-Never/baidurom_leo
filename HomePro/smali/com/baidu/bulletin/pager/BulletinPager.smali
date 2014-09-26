.class public Lcom/baidu/bulletin/pager/BulletinPager;
.super Ljava/lang/Object;
.source "BulletinPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;
    }
.end annotation


# static fields
.field private static instance:Lcom/baidu/bulletin/pager/BulletinPager;


# instance fields
.field private mCoverResource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMinVolumeResource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;"
        }
    .end annotation
.end field

.field private mPageResource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/pager/BulletinPager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/baidu/bulletin/pager/BulletinPager;->instance:Lcom/baidu/bulletin/pager/BulletinPager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/baidu/bulletin/pager/BulletinPager;

    invoke-direct {v0}, Lcom/baidu/bulletin/pager/BulletinPager;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/pager/BulletinPager;->instance:Lcom/baidu/bulletin/pager/BulletinPager;

    .line 30
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/pager/BulletinPager;->instance:Lcom/baidu/bulletin/pager/BulletinPager;

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/baidu/bulletin/pager/BulletinPager;->instance:Lcom/baidu/bulletin/pager/BulletinPager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadTemplates(Ljava/util/List;Landroid/view/LayoutInflater;Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;[IZ)V
    .locals 9
    .parameter
    .parameter "inflater"
    .parameter "screenDemension"
    .parameter "layouts"
    .parameter "fixable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;",
            "[IZ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, templates:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/pager/PageResource;>;"
    move-object v6, p4

    .local v6, arr$:[I
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget v2, v6, v7

    .line 79
    .local v2, layout:I
    new-instance v0, Lcom/baidu/bulletin/pager/PageResource;

    iget v3, p3, Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;->widthMeasureSpec:I

    iget v4, p3, Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;->heightMeasureSpec:I

    move-object v1, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/pager/PageResource;-><init>(Landroid/view/LayoutInflater;IIIZ)V

    .line 81
    .local v0, page:Lcom/baidu/bulletin/pager/PageResource;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 83
    .end local v0           #page:Lcom/baidu/bulletin/pager/PageResource;
    .end local v2           #layout:I
    :cond_0
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/pager/BulletinPager;->instance:Lcom/baidu/bulletin/pager/BulletinPager;

    .line 39
    return-void
.end method


# virtual methods
.method public doPage([Lcom/baidu/bulletin/entity/ChannelItem;I)V
    .locals 6
    .parameter "items"
    .parameter "pageId"

    .prologue
    .line 88
    new-instance v0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;

    iget-object v3, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mCoverResource:Ljava/util/List;

    iget-object v4, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mPageResource:Ljava/util/List;

    iget-object v5, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mPageMinVolumeResource:Ljava/util/List;

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;-><init>([Lcom/baidu/bulletin/entity/ChannelItem;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 92
    .local v0, doPageStrategy:Lcom/baidu/bulletin/pager/IDoPageStrategy;
    invoke-interface {v0}, Lcom/baidu/bulletin/pager/IDoPageStrategy;->doPage()V

    .line 93
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mPageResource:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    return-void

    .line 59
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mCoverResource:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mPageResource:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mPageMinVolumeResource:Ljava/util/List;

    .line 63
    new-instance v3, Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;

    invoke-direct {v3, p1}, Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;-><init>(Landroid/content/Context;)V

    .line 64
    .local v3, screenDemension:Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 66
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mCoverResource:Ljava/util/List;

    sget-object v4, Lcom/baidu/bulletin/pager/PageResStatic;->HISTORY_TODATY_COVER_RES:[I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/pager/BulletinPager;->loadTemplates(Ljava/util/List;Landroid/view/LayoutInflater;Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;[IZ)V

    .line 67
    iget-object v1, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mPageResource:Ljava/util/List;

    sget-object v4, Lcom/baidu/bulletin/pager/PageResStatic;->PAGE_RES:[I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/pager/BulletinPager;->loadTemplates(Ljava/util/List;Landroid/view/LayoutInflater;Lcom/baidu/bulletin/pager/BulletinPager$ScreenDemension;[IZ)V

    .line 69
    iget-object v0, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mPageResource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/bulletin/pager/PageResource;

    .line 70
    .local v7, page:Lcom/baidu/bulletin/pager/PageResource;
    invoke-virtual {v7}, Lcom/baidu/bulletin/pager/PageResource;->getVolume()I

    move-result v0

    invoke-static {}, Lcom/baidu/bulletin/pager/PageResStatic;->getPageMinVolume()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/baidu/bulletin/pager/BulletinPager;->mPageMinVolumeResource:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
