.class public Lcom/baidu/bulletin/pager/PageResource;
.super Ljava/lang/Object;
.source "PageResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/pager/PageResource$ScorePoint;,
        Lcom/baidu/bulletin/pager/PageResource$CellResource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PageResource"


# instance fields
.field private mCellResource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource$CellResource;",
            ">;"
        }
    .end annotation
.end field

.field private mPageLayoutIndex:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;IIIZ)V
    .locals 3
    .parameter "inflater"
    .parameter "layout"
    .parameter "width"
    .parameter "height"
    .parameter "fixable"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/pager/PageResource;->mCellResource:Ljava/util/ArrayList;

    .line 34
    invoke-static {p2}, Lcom/baidu/bulletin/pager/PageResStatic;->getIndexFromResId(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/bulletin/pager/PageResource;->mPageLayoutIndex:I

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, page:Landroid/view/View;
    invoke-virtual {v0, p3, p4}, Landroid/view/View;->measure(II)V

    .line 38
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/pager/PageResource;->initAllCellResource(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method private getWorstScore(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/pager/PageResource$ScorePoint;
    .locals 5
    .parameter "item"

    .prologue
    .line 130
    const v3, 0x7fffffff

    .line 132
    .local v3, worstScore:I
    iget-object v4, p0, Lcom/baidu/bulletin/pager/PageResource;->mCellResource:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/pager/PageResource$CellResource;

    .line 133
    .local v0, cell:Lcom/baidu/bulletin/pager/PageResource$CellResource;
    iget-boolean v4, v0, Lcom/baidu/bulletin/pager/PageResource$CellResource;->mStuffable:Z

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, v0, Lcom/baidu/bulletin/pager/PageResource$CellResource;->mLayout:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    invoke-virtual {v4, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->scoreStuffing(Lcom/baidu/bulletin/entity/ChannelItem;)I

    move-result v2

    .line 135
    .local v2, score:I
    if-le v3, v2, :cond_0

    .line 136
    move v3, v2

    goto :goto_0

    .line 141
    .end local v0           #cell:Lcom/baidu/bulletin/pager/PageResource$CellResource;
    .end local v2           #score:I
    :cond_1
    new-instance v4, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;

    invoke-direct {v4, p0, p1, v3}, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;-><init>(Lcom/baidu/bulletin/pager/PageResource;Lcom/baidu/bulletin/entity/ChannelItem;I)V

    return-object v4
.end method

.method private initAllCellResource(Landroid/view/View;)V
    .locals 5
    .parameter "page"

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, i:I
    :goto_0
    const/4 v0, 0x0

    .line 45
    .local v0, cell:Landroid/view/View;
    invoke-static {v2}, Lcom/baidu/bulletin/pager/PageResStatic;->getCellName(I)I

    move-result v1

    .line 46
    .local v1, cellId:I
    if-lez v1, :cond_0

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    :cond_0
    if-nez v0, :cond_1

    .line 56
    return-void

    .line 52
    :cond_1
    instance-of v3, v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    if-eqz v3, :cond_2

    .line 53
    iget-object v3, p0, Lcom/baidu/bulletin/pager/PageResource;->mCellResource:Ljava/util/ArrayList;

    new-instance v4, Lcom/baidu/bulletin/pager/PageResource$CellResource;

    check-cast v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    .end local v0           #cell:Landroid/view/View;
    invoke-direct {v4, p0, v0}, Lcom/baidu/bulletin/pager/PageResource$CellResource;-><init>(Lcom/baidu/bulletin/pager/PageResource;Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private orderByWorstScore([Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 3
    .parameter "items"

    .prologue
    .line 116
    array-length v2, p1

    new-array v1, v2, [Lcom/baidu/bulletin/pager/PageResource$ScorePoint;

    .line 118
    .local v1, score:[Lcom/baidu/bulletin/pager/PageResource$ScorePoint;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 119
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/pager/PageResource;->getWorstScore(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/pager/PageResource$ScorePoint;

    move-result-object v2

    aput-object v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 124
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 125
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/baidu/bulletin/pager/PageResource$ScorePoint;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    aput-object v2, p1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_1
    return-void
.end method

.method private stuffToBestCellResource(Lcom/baidu/bulletin/entity/ChannelItem;I)Z
    .locals 7
    .parameter "item"
    .parameter "pageId"

    .prologue
    const/4 v6, 0x0

    .line 145
    const/4 v1, -0x1

    .line 146
    .local v1, bestScore:I
    const/4 v0, -0x1

    .line 148
    .local v0, bestIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/pager/PageResource;->getVolume()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 149
    iget-object v5, p0, Lcom/baidu/bulletin/pager/PageResource;->mCellResource:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/pager/PageResource$CellResource;

    .line 150
    .local v2, cell:Lcom/baidu/bulletin/pager/PageResource$CellResource;
    iget-boolean v5, v2, Lcom/baidu/bulletin/pager/PageResource$CellResource;->mStuffable:Z

    if-eqz v5, :cond_0

    .line 151
    iget-object v5, v2, Lcom/baidu/bulletin/pager/PageResource$CellResource;->mLayout:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    invoke-virtual {v5, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->scoreStuffing(Lcom/baidu/bulletin/entity/ChannelItem;)I

    move-result v4

    .line 152
    .local v4, score:I
    if-ge v1, v4, :cond_0

    .line 153
    move v1, v4

    .line 154
    move v0, v3

    .line 148
    .end local v4           #score:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v2           #cell:Lcom/baidu/bulletin/pager/PageResource$CellResource;
    :cond_1
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 160
    iget-object v5, p0, Lcom/baidu/bulletin/pager/PageResource;->mCellResource:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/pager/PageResource$CellResource;

    iput-boolean v6, v5, Lcom/baidu/bulletin/pager/PageResource$CellResource;->mStuffable:Z

    .line 161
    iput p2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    .line 162
    iget v5, p0, Lcom/baidu/bulletin/pager/PageResource;->mPageLayoutIndex:I

    iput v5, p1, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    .line 163
    iput v0, p1, Lcom/baidu/bulletin/entity/ChannelItem;->pageCellIndex:I

    .line 165
    const/4 v5, 0x1

    .line 167
    :goto_1
    return v5

    :cond_2
    move v5, v6

    goto :goto_1
.end method


# virtual methods
.method public getVolume()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/bulletin/pager/PageResource;->mCellResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public resetStuffFlag()V
    .locals 3

    .prologue
    .line 95
    iget-object v2, p0, Lcom/baidu/bulletin/pager/PageResource;->mCellResource:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/pager/PageResource$CellResource;

    .line 96
    .local v0, cell:Lcom/baidu/bulletin/pager/PageResource$CellResource;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/baidu/bulletin/pager/PageResource$CellResource;->mStuffable:Z

    goto :goto_0

    .line 98
    .end local v0           #cell:Lcom/baidu/bulletin/pager/PageResource$CellResource;
    :cond_0
    return-void
.end method

.method public stuff([Lcom/baidu/bulletin/entity/ChannelItem;I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 5
    .parameter "items"
    .parameter "pageId"

    .prologue
    .line 63
    if-eqz p1, :cond_5

    .line 64
    invoke-virtual {p0}, Lcom/baidu/bulletin/pager/PageResource;->resetStuffFlag()V

    .line 66
    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Lcom/baidu/bulletin/entity/ChannelItem;

    .line 67
    .restart local p1
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/pager/PageResource;->orderByWorstScore([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 70
    move-object v0, p1

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 71
    .local v2, item:Lcom/baidu/bulletin/entity/ChannelItem;
    const/4 v4, 0x0

    iput v4, v2, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v2           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_0
    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 76
    .restart local v2       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-virtual {v2}, Lcom/baidu/bulletin/entity/ChannelItem;->hasImage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 77
    invoke-direct {p0, v2, p2}, Lcom/baidu/bulletin/pager/PageResource;->stuffToBestCellResource(Lcom/baidu/bulletin/entity/ChannelItem;I)Z

    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    .end local v2           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_2
    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 83
    .restart local v2       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-virtual {v2}, Lcom/baidu/bulletin/entity/ChannelItem;->hasBeenPaged()Z

    move-result v4

    if-nez v4, :cond_3

    .line 84
    invoke-direct {p0, v2, p2}, Lcom/baidu/bulletin/pager/PageResource;->stuffToBestCellResource(Lcom/baidu/bulletin/entity/ChannelItem;I)Z

    .line 82
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_4
    move-object v4, p1

    .line 90
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :goto_3
    return-object v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method
