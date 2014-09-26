.class public Lcom/baidu/bulletin/pager/AppPrioPageStrategy;
.super Ljava/lang/Object;
.source "AppPrioPageStrategy.java"

# interfaces
.implements Lcom/baidu/bulletin/pager/IDoPageStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPrioPageStrategy"


# instance fields
.field protected mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

.field protected mCoverResource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRandom:I

.field protected mPageMinVolumeResource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageResource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/pager/PageResource;",
            ">;"
        }
    .end annotation
.end field

.field private mRandom:Ljava/util/Random;

.field protected mStartPageId:I


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
    .line 38
    .local p3, coverResources:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/pager/PageResource;>;"
    .local p4, pageResources:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/pager/PageResource;>;"
    .local p5, pageMinVolumneResouce:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/pager/PageResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mRandom:Ljava/util/Random;

    .line 39
    iput-object p1, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    .line 40
    iput p2, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mStartPageId:I

    .line 42
    iput-object p3, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mCoverResource:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mPageResource:Ljava/util/List;

    .line 44
    iput-object p5, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mPageMinVolumeResource:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public doPage()V
    .locals 24

    .prologue
    .line 131
    const-string v2, "AppPrioPageStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPage: begin items lenght = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pageid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v2, "AppPrioPageStrategy"

    const-string v3, "-------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->separateMusicFromEachOther([Lcom/baidu/bulletin/entity/ChannelItem;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    .line 136
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    array-length v2, v2

    if-ge v13, v2, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    aget-object v14, v2, v13

    .line 138
    .local v14, item:Lcom/baidu/bulletin/entity/ChannelItem;
    const-string v2, "AppPrioPageStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 142
    .end local v14           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_0
    const-string v2, "AppPrioPageStrategy"

    const-string v3, "-------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v21, prePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/pager/PageResource;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v18, pageIndexRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/pager/PageIndexRange;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    array-length v11, v2

    .line 149
    .local v11, end:I
    const/4 v10, 0x0

    .line 150
    .local v10, begin:I
    const/16 v20, 0x1

    .line 151
    .local v20, prePageId:I
    const/16 v16, 0x0

    .line 153
    .local v16, maxPageId:I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 155
    new-instance v22, Lcom/baidu/bulletin/pager/PageIndexRange;

    invoke-direct/range {v22 .. v22}, Lcom/baidu/bulletin/pager/PageIndexRange;-><init>()V

    .line 157
    .local v22, range:Lcom/baidu/bulletin/pager/PageIndexRange;
    sub-int v2, v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->pickPageResource(I)Lcom/baidu/bulletin/pager/PageResource;

    move-result-object v17

    .line 159
    .local v17, page:Lcom/baidu/bulletin/pager/PageResource;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v0, v22

    iput v10, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    .line 164
    invoke-virtual/range {v17 .. v17}, Lcom/baidu/bulletin/pager/PageResource;->getVolume()I

    move-result v2

    add-int/2addr v2, v10

    move-object/from16 v0, v22

    iput v2, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->end:I

    .line 166
    move-object/from16 v0, v22

    iget v13, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    :goto_2
    move-object/from16 v0, v22

    iget v2, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->end:I

    if-ge v13, v2, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    aget-object v2, v2, v13

    move/from16 v0, v20

    iput v0, v2, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    .line 166
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 170
    :cond_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 171
    move/from16 v16, v20

    .line 174
    :cond_2
    add-int/lit8 v20, v20, 0x1

    .line 175
    move-object/from16 v0, v22

    iget v10, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->end:I

    .line 176
    goto :goto_1

    .line 178
    .end local v17           #page:Lcom/baidu/bulletin/pager/PageResource;
    .end local v22           #range:Lcom/baidu/bulletin/pager/PageIndexRange;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_3
    if-ltz v13, :cond_a

    .line 179
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/baidu/bulletin/pager/PageIndexRange;

    .line 181
    .restart local v22       #range:Lcom/baidu/bulletin/pager/PageIndexRange;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v9, appItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v22

    iget v15, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    .local v15, j:I
    :goto_4
    move-object/from16 v0, v22

    iget v2, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->end:I

    if-ge v15, v2, :cond_5

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    aget-object v23, v2, v15

    .line 186
    .local v23, tempItem:Lcom/baidu/bulletin/entity/ChannelItem;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    const-string v3, "app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 193
    .end local v23           #tempItem:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_6

    .line 196
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 197
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget v4, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    const-string v6, "app"

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->findItemsDesc(II[Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v12

    .line 202
    .local v12, findItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 204
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_7

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->swapItem([Lcom/baidu/bulletin/entity/ChannelItem;II)V

    .line 204
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 210
    .end local v12           #findItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 178
    :cond_7
    :goto_6
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_3

    .line 213
    :cond_8
    const/4 v7, 0x0

    .line 214
    .local v7, isApp:Z
    const/4 v8, 0x0

    .line 215
    .local v8, size:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 217
    const/4 v7, 0x1

    .line 218
    const/4 v8, 0x1

    .line 220
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget v4, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    const-string v6, "app"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->findItemsDesc(II[Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v12

    .line 225
    .restart local v12       #findItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->swapItem([Lcom/baidu/bulletin/entity/ChannelItem;II)V

    goto :goto_6

    .line 232
    .end local v12           #findItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 234
    const/4 v7, 0x0

    .line 235
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    .line 237
    const/4 v3, 0x0

    move-object/from16 v0, v22

    iget v4, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    const-string v6, "app"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->findItemsDesc(II[Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v12

    .line 242
    .restart local v12       #findItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 244
    const/4 v15, 0x0

    :goto_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_7

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->swapItem([Lcom/baidu/bulletin/entity/ChannelItem;II)V

    .line 244
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 257
    .end local v7           #isApp:Z
    .end local v8           #size:I
    .end local v9           #appItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12           #findItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15           #j:I
    .end local v22           #range:Lcom/baidu/bulletin/pager/PageIndexRange;
    :cond_a
    const-string v2, "AppPrioPageStrategy"

    const-string v3, "After reprocess app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    array-length v2, v2

    if-ge v13, v2, :cond_b

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    aget-object v14, v2, v13

    .line 260
    .restart local v14       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    const-string v2, "AppPrioPageStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 262
    .end local v14           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_b
    const-string v2, "AppPrioPageStrategy"

    const-string v3, "After reprocess app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v13, 0x0

    :goto_9
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_d

    .line 265
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/baidu/bulletin/pager/PageResource;

    .line 267
    .restart local v17       #page:Lcom/baidu/bulletin/pager/PageResource;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/baidu/bulletin/pager/PageIndexRange;

    .line 269
    .restart local v22       #range:Lcom/baidu/bulletin/pager/PageIndexRange;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->end:I

    move-object/from16 v0, v22

    iget v3, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    sub-int/2addr v2, v3

    new-array v0, v2, [Lcom/baidu/bulletin/entity/ChannelItem;

    move-object/from16 v19, v0

    .line 271
    .local v19, pageItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    move-object/from16 v0, v22

    iget v15, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    .restart local v15       #j:I
    :goto_a
    move-object/from16 v0, v22

    iget v2, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->end:I

    if-ge v15, v2, :cond_c

    .line 272
    move-object/from16 v0, v22

    iget v2, v0, Lcom/baidu/bulletin/pager/PageIndexRange;->begin:I

    sub-int v2, v15, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    aget-object v3, v3, v15

    aput-object v3, v19, v2

    .line 271
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 274
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mStartPageId:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mStartPageId:I

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/pager/PageResource;->stuff([Lcom/baidu/bulletin/entity/ChannelItem;I)[Lcom/baidu/bulletin/entity/ChannelItem;

    .line 264
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 278
    .end local v15           #j:I
    .end local v17           #page:Lcom/baidu/bulletin/pager/PageResource;
    .end local v19           #pageItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v22           #range:Lcom/baidu/bulletin/pager/PageIndexRange;
    :cond_d
    const-string v2, "AppPrioPageStrategy"

    const-string v3, "-------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v13, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    array-length v2, v2

    if-ge v13, v2, :cond_e

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    aget-object v14, v2, v13

    .line 282
    .restart local v14       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    const-string v2, "AppPrioPageStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 285
    .end local v14           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_e
    const-string v2, "AppPrioPageStrategy"

    const-string v3, "-------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v2, "AppPrioPageStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPage: end items lenght = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pageid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mStartPageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method protected findItemsDesc(II[Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 6
    .parameter "begin"
    .parameter "end"
    .parameter "items"
    .parameter "channelType"
    .parameter "isEqual"
    .parameter "maxCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Lcom/baidu/bulletin/entity/ChannelItem;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, findItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    add-int/lit8 v2, p2, -0x1

    .local v2, i:I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 67
    aget-object v3, p3, v2

    .line 69
    .local v3, item:Lcom/baidu/bulletin/entity/ChannelItem;
    const/4 v0, 0x0

    .line 71
    .local v0, compare:Z
    if-eqz p5, :cond_1

    .line 72
    iget-object v4, v3, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    :goto_1
    if-eqz v0, :cond_3

    .line 78
    iget-object v4, v3, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    const-string v5, "mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p6, :cond_3

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, p6, :cond_3

    .line 91
    .end local v0           #compare:Z
    .end local v3           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_0
    return-object v1

    .line 74
    .restart local v0       #compare:Z
    .restart local v3       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    iget-object v4, v3, Lcom/baidu/bulletin/entity/ChannelItem;->type:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 66
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected getRandomIndex(I)I
    .locals 2
    .parameter "count"

    .prologue
    .line 118
    iget v0, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mLastRandom:I

    .line 120
    .local v0, random:I
    :goto_0
    iget v1, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mLastRandom:I

    if-ne v1, v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    rem-int v0, v1, p1

    goto :goto_0

    .line 124
    :cond_0
    iput v0, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mLastRandom:I

    .line 125
    return v0
.end method

.method protected pickPageResource(I)Lcom/baidu/bulletin/pager/PageResource;
    .locals 2
    .parameter "count"

    .prologue
    .line 101
    invoke-static {}, Lcom/baidu/bulletin/pager/PageResStatic;->getPageMinVolume()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mCoverResource:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/pager/PageResource;

    .line 109
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/pager/PageResStatic;->getPageMinVolume()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mPageMinVolumeResource:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mPageMinVolumeResource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->getRandomIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/pager/PageResource;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mPageResource:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->mPageResource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/pager/AppPrioPageStrategy;->getRandomIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/pager/PageResource;

    goto :goto_0
.end method

.method protected separateMusicFromEachOther([Lcom/baidu/bulletin/entity/ChannelItem;)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 14
    .parameter "items"

    .prologue
    .line 293
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v6, music:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItem;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v4, v0, v1

    .line 295
    .local v4, item:Lcom/baidu/bulletin/entity/ChannelItem;
    const-string v12, "music"

    iget-object v13, v4, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 296
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v4           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 301
    .local v7, musicCount:I
    if-nez v7, :cond_2

    .line 325
    .end local p1
    :goto_1
    return-object p1

    .line 305
    .restart local p1
    :cond_2
    array-length v12, p1

    new-array v8, v12, [Lcom/baidu/bulletin/entity/ChannelItem;

    .line 306
    .local v8, result:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v12, p1

    sub-int v11, v12, v7

    .line 307
    .local v11, totalCount:I
    div-int v10, v11, v7

    .line 309
    .local v10, stepCount:I
    const/4 v2, 0x0

    .line 310
    .local v2, index:I
    const/4 v9, 0x0

    .line 311
    .local v9, step:I
    move-object v0, p1

    array-length v5, v0

    const/4 v1, 0x0

    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v4, v0, v1

    .line 312
    .restart local v4       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    const-string v12, "music"

    iget-object v13, v4, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 313
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aput-object v4, v8, v3

    .line 314
    add-int/lit8 v9, v9, 0x1

    move v3, v2

    .line 317
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_3
    if-lt v9, v10, :cond_6

    .line 318
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 319
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/bulletin/entity/ChannelItem;

    aput-object v12, v8, v3

    .line 321
    :goto_3
    const/4 v9, 0x0

    .line 311
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .end local v4           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_4
    move-object p1, v8

    .line 325
    goto :goto_1

    .restart local v4       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_5
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_3

    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_6
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_4
.end method

.method protected swapItem([Lcom/baidu/bulletin/entity/ChannelItem;II)V
    .locals 2
    .parameter "items"
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 95
    aget-object v0, p1, p2

    .line 96
    .local v0, item:Lcom/baidu/bulletin/entity/ChannelItem;
    aget-object v1, p1, p3

    aput-object v1, p1, p2

    .line 97
    aput-object v0, p1, p3

    .line 98
    return-void
.end method
