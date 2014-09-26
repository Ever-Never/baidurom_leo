.class public Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;
.super Lcom/baidu/bulletin/pager/AppPrioPageStrategy;
.source "HistoryTodayPageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$1;,
        Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$ChannelItemCompator;
    }
.end annotation


# static fields
.field private static final MAX_FIRST_PAGE_COUNT:I = 0x5

.field private static final MIN_FIRST_PAGE_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HistoryTodayPageStrategy"


# instance fields
.field private firstPageCount:I


# direct methods
.method public constructor <init>([Lcom/baidu/bulletin/entity/ChannelItem;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter "channelItems"
    .parameter "startPageId"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/baidu/bulletin/entity/ChannelItem;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, coverResources:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/pager/PageResource;>;"
    .local p4, pageResources:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/pager/PageResource;>;"
    .local p5, pageMinVolumneResouce:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/pager/PageResource;>;"
    invoke-direct/range {p0 .. p5}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;-><init>([Lcom/baidu/bulletin/entity/ChannelItem;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->firstPageCount:I

    .line 36
    return-void
.end method

.method private dumpChannelItems(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/entity/ChannelItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, channelItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 399
    .local v0, channelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v0, :cond_0

    .line 400
    const-string v2, "HistoryTodayPageStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pageFixed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/baidu/bulletin/entity/ChannelItem;->pageFixed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_0
    const-string v2, "HistoryTodayPageStrategy"

    const-string v3, "null is get for list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    .end local v0           #channelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    return-void
.end method

.method private dumpChannelItems([Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 7
    .parameter "channelItems"

    .prologue
    .line 410
    move-object v0, p1

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 411
    .local v1, channelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v1, :cond_0

    .line 412
    const-string v4, "HistoryTodayPageStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pageId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pageFixed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/baidu/bulletin/entity/ChannelItem;->pageFixed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_0
    const-string v4, "HistoryTodayPageStrategy"

    const-string v5, "null is get"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 419
    .end local v1           #channelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    return-void
.end method

.method private pickHistoryTodayCover(I)Lcom/baidu/bulletin/pager/PageResource;
    .locals 4
    .parameter "count"

    .prologue
    const/4 v3, 0x4

    .line 40
    const/4 v2, 0x0

    .line 42
    .local v2, retPageResource:Lcom/baidu/bulletin/pager/PageResource;
    if-ge p1, v3, :cond_2

    const/4 p1, 0x3

    .line 44
    :goto_0
    iget-object v3, p0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mCoverResource:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/pager/PageResource;

    .line 45
    .local v1, pageResource:Lcom/baidu/bulletin/pager/PageResource;
    invoke-virtual {v1}, Lcom/baidu/bulletin/pager/PageResource;->getVolume()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 46
    move-object v2, v1

    .line 52
    .end local v1           #pageResource:Lcom/baidu/bulletin/pager/PageResource;
    :cond_1
    return-object v2

    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    move p1, v3

    .line 42
    goto :goto_0
.end method


# virtual methods
.method public doPage()V
    .locals 42

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v39, v0

    if-nez v39, :cond_1

    .line 372
    :cond_0
    return-void

    .line 77
    :cond_1
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v23, mChannelItemHashTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    .local v5, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v0, v5

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v9, v5, v18

    .line 80
    .local v9, channelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    iget-object v0, v9, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 82
    .local v20, key:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_2

    .line 83
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_2
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 88
    .local v10, channelItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 92
    .end local v9           #channelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v10           #channelItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v20           #key:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 93
    .restart local v20       #key:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 95
    .restart local v10       #channelItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    new-instance v39, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$ChannelItemCompator;

    const/16 v40, 0x0

    invoke-direct/range {v39 .. v40}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$ChannelItemCompator;-><init>(Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$1;)V

    move-object/from16 v0, v39

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 99
    .end local v10           #channelItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v20           #key:Ljava/lang/String;
    :cond_4
    const-string v39, "HistoryTodayPageStrategy"

    const-string v40, "---------------mChannelItems Begin:--------------------------"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->dumpChannelItems([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 102
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    .line 104
    .local v21, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 105
    .restart local v20       #key:Ljava/lang/String;
    const-string v39, "HistoryTodayPageStrategy"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "------------"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " Begin:--------------------"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 108
    .restart local v10       #channelItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->dumpChannelItems(Ljava/util/List;)V

    .line 109
    const-string v39, "HistoryTodayPageStrategy"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "------------"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " End:--------------------"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 112
    .end local v10           #channelItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v20           #key:Ljava/lang/String;
    :cond_5
    const-string v39, "HistoryTodayPageStrategy"

    const-string v40, "---------------mChannelItems End:--------------------------"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v39, "history"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 117
    .local v15, historyTodayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v15, :cond_6

    .line 118
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 119
    .local v14, historyTodayItem:Lcom/baidu/bulletin/entity/ChannelItem;
    const/16 v39, -0x1

    move/from16 v0, v39

    iput v0, v14, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    goto :goto_3

    .line 123
    .end local v14           #historyTodayItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_6
    const/4 v13, 0x0

    .line 125
    .local v13, historyTodayCount:I
    if-eqz v15, :cond_7

    .line 126
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 129
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    sub-int v29, v39, v13

    .line 131
    .local v29, otherTotalCount:I
    const/16 v39, 0x4

    move/from16 v0, v29

    move/from16 v1, v39

    if-lt v0, v1, :cond_8

    const/4 v12, 0x4

    .line 133
    .local v12, hisotryTodayPageCount:I
    :goto_4
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v34, prePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/pager/PageResource;>;"
    const/4 v8, 0x0

    .line 136
    .local v8, begin:I
    sub-int v11, v29, v12

    .line 138
    .local v11, end:I
    const-string v39, "HistoryTodayPageStrategy"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "otherTotalCount = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", historyTodayCount = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_5
    if-le v11, v8, :cond_9

    .line 142
    const-string v39, "HistoryTodayPageStrategy"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "end , begin = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", count - "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sub-int v41, v11, v8

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sub-int v39, v11, v8

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->pickPageResource(I)Lcom/baidu/bulletin/pager/PageResource;

    move-result-object v30

    .line 145
    .local v30, page:Lcom/baidu/bulletin/pager/PageResource;
    const/16 v39, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v39

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 147
    invoke-virtual/range {v30 .. v30}, Lcom/baidu/bulletin/pager/PageResource;->getVolume()I

    move-result v39

    sub-int v11, v11, v39

    .line 148
    goto :goto_5

    .end local v8           #begin:I
    .end local v11           #end:I
    .end local v12           #hisotryTodayPageCount:I
    .end local v30           #page:Lcom/baidu/bulletin/pager/PageResource;
    .end local v34           #prePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/pager/PageResource;>;"
    :cond_8
    move/from16 v12, v29

    .line 131
    goto/16 :goto_4

    .line 150
    .restart local v8       #begin:I
    .restart local v11       #end:I
    .restart local v12       #hisotryTodayPageCount:I
    .restart local v34       #prePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/pager/PageResource;>;"
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->pickHistoryTodayCover(I)Lcom/baidu/bulletin/pager/PageResource;

    move-result-object v16

    .line 151
    .local v16, historyTodayPage:Lcom/baidu/bulletin/pager/PageResource;
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 155
    .local v24, maxPageId:I
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v39

    add-int/lit8 v17, v39, -0x1

    .end local v18           #i$:Ljava/util/Iterator;
    .local v17, i:I
    :goto_6
    if-ltz v17, :cond_0

    .line 157
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/baidu/bulletin/pager/PageResource;

    .line 159
    .restart local v30       #page:Lcom/baidu/bulletin/pager/PageResource;
    const/16 v33, 0x0

    .line 161
    .local v33, pageItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move/from16 v0, v17

    move/from16 v1, v39

    if-ne v0, v1, :cond_e

    .line 163
    move/from16 v35, v12

    .line 164
    .local v35, tempHistoryPageCount:I
    move/from16 v0, v35

    new-array v0, v0, [Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v33, v0

    .line 165
    const/16 v19, 0x0

    .line 167
    .local v19, index:I
    const-string v39, "news"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 169
    .local v28, newsChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v28, :cond_a

    .line 171
    :goto_7
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_a

    if-lez v35, :cond_a

    .line 172
    const/16 v39, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 173
    .local v27, newsChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v27, v33, v19

    .line 175
    add-int/lit8 v35, v35, -0x1

    .line 176
    add-int/lit8 v19, v19, 0x1

    .line 177
    goto :goto_7

    .line 180
    .end local v27           #newsChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_a
    const-string v39, "music"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 182
    .local v26, musicChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v26, :cond_b

    .line 184
    :goto_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_b

    if-lez v35, :cond_b

    .line 185
    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 186
    .local v25, musicChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v25, v33, v19

    .line 188
    add-int/lit8 v35, v35, -0x1

    .line 189
    add-int/lit8 v19, v19, 0x1

    .line 191
    goto :goto_8

    .line 195
    .end local v25           #musicChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_b
    const-string v39, "app"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 197
    .local v4, appChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v4, :cond_c

    .line 199
    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_c

    if-lez v35, :cond_c

    .line 200
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 201
    .local v3, appChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v3, v33, v19

    .line 203
    add-int/lit8 v35, v35, -0x1

    .line 204
    add-int/lit8 v19, v19, 0x1

    .line 205
    goto :goto_9

    .line 208
    .end local v3           #appChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_c
    const-string v39, "baike"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 209
    .local v7, baikeChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v7, :cond_d

    .line 211
    :goto_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_d

    if-lez v35, :cond_d

    .line 212
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 213
    .local v6, baikeChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v6, v33, v19

    .line 215
    add-int/lit8 v35, v35, -0x1

    .line 216
    add-int/lit8 v19, v19, 0x1

    .line 217
    goto :goto_a

    .line 220
    .end local v6           #baikeChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_d
    const-string v39, "tieba"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/ArrayList;

    .line 221
    .local v38, tiebaChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v38, :cond_15

    .line 223
    :goto_b
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_15

    if-lez v35, :cond_15

    .line 224
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 225
    .local v37, tiebaChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v37, v33, v19

    .line 227
    add-int/lit8 v35, v35, -0x1

    .line 228
    add-int/lit8 v19, v19, 0x1

    .line 229
    goto :goto_b

    .line 234
    .end local v4           #appChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v7           #baikeChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v19           #index:I
    .end local v26           #musicChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v28           #newsChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v35           #tempHistoryPageCount:I
    .end local v37           #tiebaChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v38           #tiebaChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    :cond_e
    invoke-virtual/range {v30 .. v30}, Lcom/baidu/bulletin/pager/PageResource;->getVolume()I

    move-result v31

    .line 235
    .local v31, pageCount:I
    move/from16 v0, v31

    new-array v0, v0, [Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v33, v0

    .line 236
    const/16 v19, 0x0

    .line 238
    .restart local v19       #index:I
    const-string v39, "app"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 240
    .restart local v4       #appChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v4, :cond_f

    .line 242
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_f

    if-lez v31, :cond_f

    .line 243
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 244
    .restart local v3       #appChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v3, v33, v19

    .line 246
    add-int/lit8 v31, v31, -0x1

    .line 247
    add-int/lit8 v19, v19, 0x1

    .line 251
    .end local v3           #appChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_f
    const-string v39, "music"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 253
    .restart local v26       #musicChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v26, :cond_10

    .line 255
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_10

    if-lez v31, :cond_10

    .line 256
    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 257
    .restart local v25       #musicChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v25, v33, v19

    .line 259
    add-int/lit8 v31, v31, -0x1

    .line 260
    add-int/lit8 v19, v19, 0x1

    .line 265
    .end local v25           #musicChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_10
    const-string v39, "news"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 267
    .restart local v28       #newsChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v28, :cond_11

    .line 269
    :goto_c
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_11

    if-lez v31, :cond_11

    .line 270
    const/16 v39, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 271
    .restart local v27       #newsChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v27, v33, v19

    .line 273
    add-int/lit8 v31, v31, -0x1

    .line 274
    add-int/lit8 v19, v19, 0x1

    .line 276
    goto :goto_c

    .line 280
    .end local v27           #newsChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_11
    const-string v39, "baike"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 281
    .restart local v7       #baikeChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v7, :cond_12

    .line 283
    :goto_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_12

    if-lez v31, :cond_12

    .line 284
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 285
    .restart local v6       #baikeChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v6, v33, v19

    .line 287
    add-int/lit8 v31, v31, -0x1

    .line 288
    add-int/lit8 v19, v19, 0x1

    .line 289
    goto :goto_d

    .line 292
    .end local v6           #baikeChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_12
    const-string v39, "tieba"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/ArrayList;

    .line 293
    .restart local v38       #tiebaChannelItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    if-eqz v38, :cond_13

    .line 295
    :goto_e
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_13

    if-lez v31, :cond_13

    .line 296
    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 297
    .restart local v37       #tiebaChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v37, v33, v19

    .line 299
    add-int/lit8 v31, v31, -0x1

    .line 300
    add-int/lit8 v19, v19, 0x1

    .line 301
    goto :goto_e

    .line 305
    .end local v37           #tiebaChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_13
    if-eqz v26, :cond_14

    .line 307
    :goto_f
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_14

    if-lez v31, :cond_14

    .line 308
    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 309
    .restart local v25       #musicChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v25, v33, v19

    .line 311
    add-int/lit8 v31, v31, -0x1

    .line 312
    add-int/lit8 v19, v19, 0x1

    .line 314
    goto :goto_f

    .line 317
    .end local v25           #musicChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_14
    if-eqz v4, :cond_15

    .line 319
    :goto_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_15

    if-lez v31, :cond_15

    .line 320
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 321
    .restart local v3       #appChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    aput-object v3, v33, v19

    .line 323
    add-int/lit8 v31, v31, -0x1

    .line 324
    add-int/lit8 v19, v19, 0x1

    .line 325
    goto :goto_10

    .line 331
    .end local v3           #appChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v31           #pageCount:I
    :cond_15
    add-int/lit8 v24, v17, 0x1

    .line 332
    const-string v39, "HistoryTodayPageStrategy"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pageId = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", pageVolumn = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v30 .. v30}, Lcom/baidu/bulletin/pager/PageResource;->getVolume()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v36, tempPageItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    move-object/from16 v5, v33

    array-length v0, v5

    move/from16 v22, v0

    const/16 v18, 0x0

    .local v18, i$:I
    :goto_11
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_17

    aget-object v32, v5, v18

    .line 337
    .local v32, pageItem:Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v32, :cond_16

    .line 338
    const/16 v39, -0x2

    move/from16 v0, v39

    move-object/from16 v1, v32

    iput v0, v1, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    .line 339
    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_16
    add-int/lit8 v18, v18, 0x1

    goto :goto_11

    .line 343
    .end local v32           #pageItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_17
    const-string v39, "HistoryTodayPageStrategy"

    const-string v40, "------------------before page stuftemp And page 1:begin--------------"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->dumpChannelItems(Ljava/util/List;)V

    .line 346
    const-string v39, "HistoryTodayPageStrategy"

    const-string v40, "---------------------------------------------------"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->dumpChannelItems([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 349
    const-string v39, "HistoryTodayPageStrategy"

    const-string v40, "------------------before page stuff temp And page 1:end------------"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v39

    if-lez v39, :cond_19

    .line 352
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v39

    new-array v0, v0, [Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v33, v0

    .line 353
    const/16 v19, 0x0

    :goto_12
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v19

    move/from16 v1, v39

    if-ge v0, v1, :cond_18

    .line 354
    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/baidu/bulletin/entity/ChannelItem;

    aput-object v39, v33, v19

    .line 353
    add-int/lit8 v19, v19, 0x1

    goto :goto_12

    .line 357
    :cond_18
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v39, v0

    invoke-virtual/range {v30 .. v30}, Lcom/baidu/bulletin/pager/PageResource;->getVolume()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_19

    .line 358
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/pager/PageResource;->stuff([Lcom/baidu/bulletin/entity/ChannelItem;I)[Lcom/baidu/bulletin/entity/ChannelItem;

    .line 362
    :cond_19
    const-string v39, "HistoryTodayPageStrategy"

    const-string v40, "------------------end page stuftemp And page 1:begin--------------"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->dumpChannelItems(Ljava/util/List;)V

    .line 365
    const-string v39, "HistoryTodayPageStrategy"

    const-string v40, "---------------------------------------------------"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->dumpChannelItems([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 368
    const-string v39, "HistoryTodayPageStrategy"

    const-string v40, "------------------end page stuff temp And page 1:end------------"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_6
.end method

.method protected pickPageResource(I)Lcom/baidu/bulletin/pager/PageResource;
    .locals 2
    .parameter "count"

    .prologue
    .line 60
    invoke-static {}, Lcom/baidu/bulletin/pager/PageResStatic;->getPageMinVolume()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mPageMinVolumeResource:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mPageMinVolumeResource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->getRandomIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/pager/PageResource;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mPageResource:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->mPageResource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;->getRandomIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/pager/PageResource;

    goto :goto_0
.end method
