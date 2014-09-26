.class public Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;
.super Ljava/lang/Object;
.source "BulletinPageInflater.java"


# static fields
.field private static bulletin_height:I

.field private static bulletin_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 16
    sput v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_width:I

    .line 17
    sput v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_height:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflatePage(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;[Lcom/baidu/bulletin/entity/ChannelItem;)Landroid/view/View;
    .locals 13
    .parameter "inflater"
    .parameter "parent"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 20
    if-eqz p2, :cond_0

    array-length v10, p2

    if-eqz v10, :cond_0

    aget-object v10, p2, v12

    if-nez v10, :cond_2

    .line 21
    :cond_0
    const-string v10, "error"

    const-string v11, "BulletinPageInflater data is null"

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    :goto_0
    return-object v8

    .line 25
    :cond_2
    aget-object v10, p2, v12

    iget v10, v10, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    invoke-static {v10}, Lcom/baidu/bulletin/pager/PageResStatic;->getResIdFromIndex(I)I

    move-result v7

    .line 27
    .local v7, layoutRes:I
    if-gez v7, :cond_3

    .line 28
    const-string v10, "error"

    const-string v11, "BulletinPageInflater page is null"

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p0, v7, p1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 33
    .local v8, pageContainer:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->initDisplayRect(Landroid/content/Context;)V

    .line 34
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v10, p2

    if-ge v6, v10, :cond_5

    .line 36
    invoke-static {v6}, Lcom/baidu/bulletin/pager/PageResStatic;->getCellName(I)I

    move-result v2

    .line 37
    .local v2, cellId:I
    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, cell:Landroid/view/View;
    instance-of v10, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    if-eqz v10, :cond_4

    move-object v0, v1

    .line 39
    check-cast v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    .line 40
    .local v0, bulletinCell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
    aget-object v10, p2, v6

    if-eqz v10, :cond_4

    .line 41
    aget-object v10, p2, v12

    iget v10, v10, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    invoke-static {v10, v6}, Lcom/baidu/bulletin/pager/PageResStatic;->getCellWidth(II)I

    move-result v9

    .line 42
    .local v9, widthRadio:I
    aget-object v10, p2, v12

    iget v10, v10, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    invoke-static {v10, v6}, Lcom/baidu/bulletin/pager/PageResStatic;->getCellHeight(II)I

    move-result v4

    .line 43
    .local v4, heightRadio:I
    sget v10, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_width:I

    mul-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x6

    sget v11, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_height:I

    mul-int/2addr v11, v4

    div-int/lit8 v11, v11, 0x3

    invoke-virtual {v0, v10, v11}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setWidthAndHeight(II)V

    .line 46
    aget-object v10, p2, v6

    invoke-virtual {v0, v8, v10}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    .line 34
    .end local v0           #bulletinCell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
    .end local v4           #heightRadio:I
    .end local v9           #widthRadio:I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 51
    .end local v1           #cell:Landroid/view/View;
    .end local v2           #cellId:I
    :cond_5
    invoke-static {}, Lcom/baidu/bulletin/pager/PageResStatic;->getCoverCellName()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 57
    .local v3, cover:Landroid/view/View;
    instance-of v10, v3, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;

    if-eqz v10, :cond_1

    .line 59
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/baidu/bulletin/BulletinPresentation;->getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v5

    .local v5, historyItem:Lcom/baidu/bulletin/entity/ChannelItem;
    move-object v1, v3

    .line 61
    check-cast v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;

    .line 62
    .local v1, cell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;
    invoke-virtual {v1, v8, v5}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    goto :goto_0
.end method

.method public static inflatePage(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;[Lcom/baidu/bulletin/entity/ChannelItem;)Landroid/view/View;
    .locals 12
    .parameter "resevedView"
    .parameter "inflater"
    .parameter "parent"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 71
    if-eqz p3, :cond_0

    array-length v10, p3

    if-eqz v10, :cond_0

    aget-object v10, p3, v11

    if-nez v10, :cond_2

    .line 72
    :cond_0
    const-string v10, "error"

    const-string v11, "BulletinPageInflater data is null"

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v9

    .line 136
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 76
    .restart local p0
    :cond_2
    aget-object v10, p3, v11

    iget v10, v10, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    invoke-static {v10}, Lcom/baidu/bulletin/pager/PageResStatic;->getResIdFromIndex(I)I

    move-result v7

    .line 79
    .local v7, layoutRes:I
    if-gez v7, :cond_3

    .line 80
    const-string v10, "error"

    const-string v11, "BulletinPageInflater page is null"

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v9

    .line 81
    goto :goto_0

    .line 83
    :cond_3
    if-eqz p0, :cond_5

    .line 85
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v9, p3

    if-ge v6, v9, :cond_1

    .line 86
    invoke-static {v6}, Lcom/baidu/bulletin/pager/PageResStatic;->getCellName(I)I

    move-result v2

    .line 87
    .local v2, cellId:I
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, cell:Landroid/view/View;
    instance-of v9, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    if-eqz v9, :cond_4

    move-object v0, v1

    .line 89
    check-cast v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    .line 90
    .local v0, bulletinCell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
    aget-object v9, p3, v6

    if-eqz v9, :cond_4

    .line 91
    aget-object v9, p3, v6

    iget-object v9, v9, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setThumbnail(Ljava/lang/String;)V

    .line 85
    .end local v0           #bulletinCell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    .end local v1           #cell:Landroid/view/View;
    .end local v2           #cellId:I
    .end local v6           #i:I
    :cond_5
    invoke-virtual {p1, v7, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 99
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->initDisplayRect(Landroid/content/Context;)V

    .line 100
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    array-length v9, p3

    if-ge v6, v9, :cond_7

    .line 102
    invoke-static {v6}, Lcom/baidu/bulletin/pager/PageResStatic;->getCellName(I)I

    move-result v2

    .line 103
    .restart local v2       #cellId:I
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .restart local v1       #cell:Landroid/view/View;
    instance-of v9, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    if-eqz v9, :cond_6

    move-object v0, v1

    .line 105
    check-cast v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    .line 106
    .restart local v0       #bulletinCell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
    aget-object v9, p3, v6

    if-eqz v9, :cond_6

    .line 107
    aget-object v9, p3, v11

    iget v9, v9, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    invoke-static {v9, v6}, Lcom/baidu/bulletin/pager/PageResStatic;->getCellWidth(II)I

    move-result v8

    .line 109
    .local v8, widthRadio:I
    aget-object v9, p3, v11

    iget v9, v9, Lcom/baidu/bulletin/entity/ChannelItem;->pageLayout:I

    invoke-static {v9, v6}, Lcom/baidu/bulletin/pager/PageResStatic;->getCellHeight(II)I

    move-result v4

    .line 111
    .local v4, heightRadio:I
    sget v9, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_width:I

    mul-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x6

    sget v10, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_height:I

    mul-int/2addr v10, v4

    div-int/lit8 v10, v10, 0x3

    invoke-virtual {v0, v9, v10}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setWidthAndHeight(II)V

    .line 114
    aget-object v9, p3, v6

    invoke-virtual {v0, p0, v9}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    .line 100
    .end local v0           #bulletinCell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
    .end local v4           #heightRadio:I
    .end local v8           #widthRadio:I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 119
    .end local v1           #cell:Landroid/view/View;
    .end local v2           #cellId:I
    :cond_7
    invoke-static {}, Lcom/baidu/bulletin/pager/PageResStatic;->getCoverCellName()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 126
    .local v3, cover:Landroid/view/View;
    instance-of v9, v3, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;

    if-eqz v9, :cond_1

    .line 128
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/bulletin/BulletinPresentation;->getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v5

    .local v5, historyItem:Lcom/baidu/bulletin/entity/ChannelItem;
    move-object v1, v3

    .line 131
    check-cast v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;

    .line 132
    .local v1, cell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;
    invoke-virtual {v1, p0, v5}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    goto/16 :goto_0
.end method

.method private static initDisplayRect(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 140
    sget v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_width:I

    if-ne v0, v3, :cond_0

    .line 141
    invoke-static {p0}, Lcom/baidu/bulletin/ui/Utilities;->getWidthPixels(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x4160

    invoke-static {p0}, Lcom/baidu/bulletin/ui/Utilities;->getScaledDensity(Landroid/content/Context;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/ui/Utilities;->dipTopx(FF)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_width:I

    .line 143
    :cond_0
    sget v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_height:I

    if-ne v0, v3, :cond_1

    .line 144
    invoke-static {p0}, Lcom/baidu/bulletin/ui/Utilities;->getHeightPixels(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x41e0

    invoke-static {p0}, Lcom/baidu/bulletin/ui/Utilities;->getScaledDensity(Landroid/content/Context;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/ui/Utilities;->dipTopx(FF)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->bulletin_height:I

    .line 146
    :cond_1
    return-void
.end method
