.class public Lcom/inveno/newpiflow/model/PiData;
.super Ljava/lang/Object;
.source "PiData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/newpiflow/model/PiData$Column;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLUMN:I = 0x2


# instance fields
.field private bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

.field private columns:[Lcom/inveno/newpiflow/model/PiData$Column;

.field id:Ljava/lang/String;

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/PiDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mNewInfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

.field private mode:I

.field private padding:I

.field private style:I

.field private textBannerHeight:I

.field private textHeight:I

.field private textHeightLinefive:I

.field private textHeightLineone:I

.field private textHeightLinesix:I

.field private textHeightLinethree:I

.field private textHeightLinetwo:I

.field private theme:I

.field private threeItemHeight:I

.field private threeSevenItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/PiDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private totalHeight:I


# direct methods
.method public constructor <init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;IIIIILandroid/content/Context;)V
    .locals 4
    .parameter "newinfos"
    .parameter "deviceW"
    .parameter "deviceH"
    .parameter "style"
    .parameter "mode"
    .parameter "theme"
    .parameter "context"

    .prologue
    const/4 v3, 0x5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p7, p0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    .line 75
    iput p4, p0, Lcom/inveno/newpiflow/model/PiData;->style:I

    .line 76
    iput p5, p0, Lcom/inveno/newpiflow/model/PiData;->mode:I

    .line 77
    iput p6, p0, Lcom/inveno/newpiflow/model/PiData;->theme:I

    .line 78
    iput-object p1, p0, Lcom/inveno/newpiflow/model/PiData;->mNewInfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    .line 79
    iget-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x1

    if-ne v1, p6, :cond_0

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    .line 84
    :cond_0
    const v1, 0x7f0b00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->textHeight:I

    .line 85
    const v1, 0x7f0b00e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->textBannerHeight:I

    .line 88
    iget v1, p0, Lcom/inveno/newpiflow/model/PiData;->theme:I

    if-nez v1, :cond_1

    .line 89
    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    .line 93
    :goto_0
    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->textHeightLineone:I

    .line 95
    const v1, 0x7f0b00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->textHeightLinetwo:I

    .line 97
    const v1, 0x7f0b00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->textHeightLinethree:I

    .line 99
    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->textHeightLinefive:I

    .line 101
    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->textHeightLinesix:I

    .line 103
    const v1, 0x7f0b00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    .line 106
    packed-switch p4, :pswitch_data_0

    .line 129
    :goto_1
    :pswitch_0
    return-void

    .line 91
    :cond_1
    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    goto :goto_0

    .line 108
    :pswitch_1
    iget v1, p0, Lcom/inveno/newpiflow/model/PiData;->mode:I

    if-ne v3, v1, :cond_2

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/inveno/newpiflow/model/PiData;->changeCardText(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    .line 111
    invoke-direct {p0, p2, p7}, Lcom/inveno/newpiflow/model/PiData;->produceItemCardText(ILandroid/content/Context;)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/inveno/newpiflow/model/PiData;->changeCard(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    .line 114
    invoke-direct {p0, p2, p7}, Lcom/inveno/newpiflow/model/PiData;->produceItemCard(ILandroid/content/Context;)V

    goto :goto_1

    .line 118
    :pswitch_2
    iget v1, p0, Lcom/inveno/newpiflow/model/PiData;->mode:I

    if-ne v3, v1, :cond_3

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/inveno/newpiflow/model/PiData;->changeText(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    .line 121
    invoke-direct {p0, p2, p7}, Lcom/inveno/newpiflow/model/PiData;->produceItemText(ILandroid/content/Context;)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/inveno/newpiflow/model/PiData;->changeList(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    .line 124
    invoke-direct {p0, p2, p7}, Lcom/inveno/newpiflow/model/PiData;->produceItemList(ILandroid/content/Context;)V

    goto :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private changeCardText(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;II)Ljava/util/List;
    .locals 15
    .parameter "newinfos"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/PiDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v9, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v9, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getFlowNewinfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 358
    .local v11, newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    iget-object v2, p0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getTypeById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 359
    .local v12, type:I
    iget v2, v11, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    float-to-double v4, v2

    const-wide v7, 0x3ffb333333333333L

    cmpl-double v2, v4, v7

    if-lez v2, :cond_0

    .line 360
    move/from16 v3, p2

    .line 365
    .local v3, width:I
    :goto_1
    invoke-direct {p0, v11}, Lcom/inveno/newpiflow/model/PiData;->pinSrc(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, src:Ljava/lang/String;
    new-instance v1, Lcom/inveno/newpiflow/model/PiDataItem;

    const-string v2, ""

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getSnippet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getRtime()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/inveno/flyshare/utils/StringTools;->waterwallTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/inveno/newpiflow/model/PiDataItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .local v1, dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    invoke-virtual {v1, v11}, Lcom/inveno/newpiflow/model/PiDataItem;->setFlowNewinfo(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getUploadInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/model/PiDataItem;->setUploadInfos(Ljava/util/List;)V

    .line 372
    const/4 v2, 0x5

    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    .line 373
    invoke-direct {p0, v11, v1}, Lcom/inveno/newpiflow/model/PiData;->sureTextHeight(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Lcom/inveno/newpiflow/model/PiDataItem;)V

    .line 375
    iget v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    if-eq v2, v12, :cond_1

    .line 376
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/model/PiDataItem;->setBanner(Z)V

    .line 377
    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/model/PiData;->setBannerItem(Lcom/inveno/newpiflow/model/PiDataItem;)V

    goto :goto_0

    .line 362
    .end local v1           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v3           #width:I
    .end local v6           #src:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    sub-int v2, p2, v2

    div-int/lit8 v3, v2, 0x2

    .restart local v3       #width:I
    goto :goto_1

    .line 379
    .restart local v1       #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .restart local v6       #src:Ljava/lang/String;
    :cond_1
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    .end local v1           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v3           #width:I
    .end local v6           #src:Ljava/lang/String;
    .end local v11           #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .end local v12           #type:I
    :cond_2
    return-object v9
.end method

.method private changeText(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;II)Ljava/util/List;
    .locals 13
    .parameter "newinfos"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/PiDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    new-instance v8, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    .local v8, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    move v2, p2

    .line 572
    .local v2, width:I
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getFlowNewinfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 573
    .local v10, newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    invoke-direct {p0, v10}, Lcom/inveno/newpiflow/model/PiData;->pinSrc(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, src:Ljava/lang/String;
    new-instance v0, Lcom/inveno/newpiflow/model/PiDataItem;

    const-string v1, ""

    invoke-virtual {v10}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getImgUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getRtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/inveno/flyshare/utils/StringTools;->waterwallTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/inveno/newpiflow/model/PiDataItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .local v0, dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    invoke-direct {p0, v10, v0}, Lcom/inveno/newpiflow/model/PiData;->sureTextHeight(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Lcom/inveno/newpiflow/model/PiDataItem;)V

    .line 580
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v0, v10}, Lcom/inveno/newpiflow/model/PiDataItem;->setFlowNewinfo(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V

    .line 582
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getUploadInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/model/PiDataItem;->setUploadInfos(Ljava/util/List;)V

    goto :goto_0

    .line 586
    .end local v0           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v5           #src:Ljava/lang/String;
    .end local v10           #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    :cond_0
    return-object v8
.end method

.method private getLongColumn()Lcom/inveno/newpiflow/model/PiData$Column;
    .locals 7

    .prologue
    .line 827
    iget-object v5, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 828
    .local v4, result:Lcom/inveno/newpiflow/model/PiData$Column;
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    .local v0, arr$:[Lcom/inveno/newpiflow/model/PiData$Column;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 829
    .local v1, c:Lcom/inveno/newpiflow/model/PiData$Column;
    iget v5, v4, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    iget v6, v1, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    if-ge v5, v6, :cond_0

    move-object v4, v1

    .line 828
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 832
    .end local v1           #c:Lcom/inveno/newpiflow/model/PiData$Column;
    :cond_1
    return-object v4
.end method

.method private getShortColumn()Lcom/inveno/newpiflow/model/PiData$Column;
    .locals 7

    .prologue
    .line 813
    iget-object v5, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 814
    .local v4, result:Lcom/inveno/newpiflow/model/PiData$Column;
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    .local v0, arr$:[Lcom/inveno/newpiflow/model/PiData$Column;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 815
    .local v1, c:Lcom/inveno/newpiflow/model/PiData$Column;
    iget v5, v4, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    iget v6, v1, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    if-le v5, v6, :cond_0

    move-object v4, v1

    .line 814
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    .end local v1           #c:Lcom/inveno/newpiflow/model/PiData$Column;
    :cond_1
    return-object v4
.end method

.method private pinSrc(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)Ljava/lang/String;
    .locals 5
    .parameter "newinfo"

    .prologue
    .line 732
    const-string v2, "inveno"

    .line 734
    .local v2, src:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getShowFlowAd()Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

    move-result-object v0

    .line 735
    .local v0, flowAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getShowFlowHardAd()Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    move-result-object v1

    .line 737
    .local v1, flowHardAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->getCpName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 738
    invoke-virtual {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->getCpName()Ljava/lang/String;

    move-result-object v2

    .line 746
    :cond_0
    :goto_0
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 748
    .end local v2           #src:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 739
    .restart local v2       #src:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->getCpname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 741
    invoke-virtual {v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->getCpname()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 743
    :cond_3
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getSrc()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private produceItemCard(ILandroid/content/Context;)V
    .locals 17
    .parameter "deviceW"
    .parameter "context"

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, bannerH:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    if-eqz v13, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    .line 221
    .local v7, item:Lcom/inveno/newpiflow/model/PiDataItem;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, p1, v13

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 222
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->textBannerHeight:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 223
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v1

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 224
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    add-int/2addr v1, v13

    .line 225
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 229
    .end local v7           #item:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    if-eqz v13, :cond_6

    .line 230
    const/4 v5, 0x0

    .line 231
    .local v5, height:I
    move/from16 v0, p1

    int-to-double v13, v0

    const-wide v15, 0x3fd872b020c49ba6L

    mul-double/2addr v13, v15

    double-to-int v11, v13

    .line 232
    .local v11, w1:I
    sub-int v12, p1, v11

    .line 233
    .local v12, w2:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u9ec4\u91d1\u5206\u5272:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   ..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/inveno/flyshare/utils/LogTools;->showLogB(Ljava/lang/String;)V

    .line 234
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 235
    .local v8, s:I
    if-nez v8, :cond_7

    .line 236
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v13, 0x3

    if-ge v6, v13, :cond_5

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 238
    .restart local v7       #item:Lcom/inveno/newpiflow/model/PiDataItem;
    if-nez v6, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int v5, v13, v14

    .line 240
    iput v11, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 241
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 242
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v1

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 243
    const/4 v13, 0x0

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 244
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    .line 245
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->textHeight:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 236
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const/4 v13, 0x1

    if-ne v6, v13, :cond_3

    .line 247
    iput v12, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 248
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    div-int/lit8 v13, v13, 0x2

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 249
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v1

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 250
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v11

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 251
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    .line 252
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 253
    iget-object v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-static {v13}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 254
    const/4 v13, 0x0

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_1

    .line 256
    :cond_2
    const/4 v13, 0x2

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_1

    .line 258
    :cond_3
    iput v12, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 259
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    div-int/lit8 v13, v13, 0x2

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 260
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 262
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v11

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 263
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    .line 264
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 265
    iget-object v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-static {v13}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 266
    const/4 v13, 0x0

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_1

    .line 268
    :cond_4
    const/4 v13, 0x2

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_1

    .line 271
    .end local v7           #item:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v5

    add-int/2addr v1, v13

    .line 312
    .end local v5           #height:I
    .end local v6           #i:I
    .end local v8           #s:I
    .end local v11           #w1:I
    .end local v12           #w2:I
    :cond_6
    :goto_2
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/inveno/newpiflow/model/PiData$Column;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    .line 313
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    array-length v13, v13

    if-ge v6, v13, :cond_d

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    new-instance v14, Lcom/inveno/newpiflow/model/PiData$Column;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lcom/inveno/newpiflow/model/PiData$Column;-><init>(Lcom/inveno/newpiflow/model/PiData;I)V

    aput-object v14, v13, v6

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v13, v13, v6

    div-int/lit8 v14, p1, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    sub-int/2addr v14, v15

    mul-int/2addr v14, v6

    iput v14, v13, Lcom/inveno/newpiflow/model/PiData$Column;->left:I

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v13, v13, v6

    iget v14, v13, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    add-int/2addr v14, v1

    iput v14, v13, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v13, v13, v6

    iget v14, v13, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    add-int/2addr v14, v1

    iput v14, v13, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 273
    .end local v6           #i:I
    .restart local v5       #height:I
    .restart local v8       #s:I
    .restart local v11       #w1:I
    .restart local v12       #w2:I
    :cond_7
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_4
    const/4 v13, 0x3

    if-ge v6, v13, :cond_c

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 276
    .restart local v7       #item:Lcom/inveno/newpiflow/model/PiDataItem;
    if-nez v6, :cond_9

    .line 277
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int v5, v13, v14

    .line 278
    iput v12, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 279
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    div-int/lit8 v13, v13, 0x2

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 280
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v1

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 281
    const/4 v13, 0x0

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 282
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    .line 283
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 284
    iget-object v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-static {v13}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 285
    const/4 v13, 0x0

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    .line 273
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 287
    :cond_8
    const/4 v13, 0x2

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_5

    .line 288
    :cond_9
    const/4 v13, 0x1

    if-ne v6, v13, :cond_b

    .line 289
    iput v12, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 290
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    div-int/lit8 v13, v13, 0x2

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 291
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v1

    iget v14, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 292
    const/4 v13, 0x0

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 293
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    .line 294
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 295
    iget-object v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-static {v13}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 296
    const/4 v13, 0x0

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_5

    .line 298
    :cond_a
    const/4 v13, 0x2

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_5

    .line 300
    :cond_b
    iput v11, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 301
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeItemHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 302
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v1

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 303
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v12

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 304
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    .line 305
    iget v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->textHeight:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    goto :goto_5

    .line 308
    .end local v7           #item:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v5

    add-int/2addr v1, v13

    goto/16 :goto_2

    .line 320
    .end local v5           #height:I
    .end local v8           #s:I
    .end local v11           #w1:I
    .end local v12           #w2:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    .line 321
    .local v10, size:I
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v10, :cond_e

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 324
    .local v3, dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    iget v13, v3, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    sub-int/2addr v13, v14

    iput v13, v3, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/inveno/newpiflow/model/PiData;->getFillBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v14

    iput v13, v3, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 327
    iget v13, v3, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/inveno/newpiflow/model/PiData;->onItemAdd(II)V

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/inveno/newpiflow/model/PiData;->getItemLeft(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v13, v14

    iput v13, v3, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 332
    .end local v3           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 333
    .local v4, dis:I
    invoke-direct/range {p0 .. p0}, Lcom/inveno/newpiflow/model/PiData;->getShortColumn()Lcom/inveno/newpiflow/model/PiData$Column;

    move-result-object v9

    .line 334
    .local v9, shortC:Lcom/inveno/newpiflow/model/PiData$Column;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    iget-object v14, v9, Lcom/inveno/newpiflow/model/PiData$Column;->items:Landroid/util/SparseIntArray;

    iget-object v15, v9, Lcom/inveno/newpiflow/model/PiData$Column;->items:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 337
    .local v2, changeItem:Lcom/inveno/newpiflow/model/PiDataItem;
    iget v13, v2, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    add-int/2addr v13, v4

    iput v13, v2, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 338
    iget v13, v2, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    add-int/2addr v13, v4

    iput v13, v2, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    if-eqz v13, :cond_f

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    if-eqz v13, :cond_10

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    :cond_10
    return-void
.end method

.method private produceItemCardText(ILandroid/content/Context;)V
    .locals 12
    .parameter "deviceW"
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, bannerH:I
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    if-eqz v8, :cond_0

    .line 428
    iget-object v5, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    .line 429
    .local v5, item:Lcom/inveno/newpiflow/model/PiDataItem;
    iput p1, v5, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 430
    iget v8, v5, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    iput v8, v5, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 431
    iget v8, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v8, v0

    iput v8, v5, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 432
    iget v8, v5, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    iget v9, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 433
    iput v11, v5, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 436
    .end local v5           #item:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_0
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/inveno/newpiflow/model/PiData$Column;

    iput-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    .line 437
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    array-length v8, v8

    if-ge v4, v8, :cond_1

    .line 438
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    new-instance v9, Lcom/inveno/newpiflow/model/PiData$Column;

    invoke-direct {v9, p0, v4}, Lcom/inveno/newpiflow/model/PiData$Column;-><init>(Lcom/inveno/newpiflow/model/PiData;I)V

    aput-object v9, v8, v4

    .line 439
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v8, v8, v4

    div-int/lit8 v9, p1, 0x2

    iget v10, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    mul-int/2addr v9, v4

    iput v9, v8, Lcom/inveno/newpiflow/model/PiData$Column;->left:I

    .line 440
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v8, v8, v4

    iget v9, v8, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    add-int/2addr v9, v0

    iput v9, v8, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    .line 441
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v8, v8, v4

    iget v9, v8, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    add-int/2addr v9, v0

    iput v9, v8, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    .line 437
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 444
    :cond_1
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 445
    .local v7, size:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_2

    .line 446
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 448
    .local v2, dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    iget v8, v2, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    iput v8, v2, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 449
    iget v8, v2, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    iput v8, v2, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 451
    invoke-virtual {p0}, Lcom/inveno/newpiflow/model/PiData;->getFillBottom()I

    move-result v8

    iget v9, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v8, v9

    iput v8, v2, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 452
    iget v8, v2, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    iget v9, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v4, v8}, Lcom/inveno/newpiflow/model/PiData;->onItemAdd(II)V

    .line 453
    invoke-virtual {p0, v4}, Lcom/inveno/newpiflow/model/PiData;->getItemLeft(I)I

    move-result v8

    iput v8, v2, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 445
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 457
    .end local v2           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_2
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v8, v8, v11

    iget v8, v8, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    iget-object v9, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget v9, v9, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 458
    .local v3, dis:I
    invoke-direct {p0}, Lcom/inveno/newpiflow/model/PiData;->getShortColumn()Lcom/inveno/newpiflow/model/PiData$Column;

    move-result-object v6

    .line 459
    .local v6, shortC:Lcom/inveno/newpiflow/model/PiData$Column;
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    iget-object v9, v6, Lcom/inveno/newpiflow/model/PiData$Column;->items:Landroid/util/SparseIntArray;

    iget-object v10, v6, Lcom/inveno/newpiflow/model/PiData$Column;->items:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 462
    .local v1, changeItem:Lcom/inveno/newpiflow/model/PiDataItem;
    iget v8, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    add-int/2addr v8, v3

    iput v8, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 463
    iget v8, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    add-int/2addr v8, v3

    iput v8, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 465
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    if-eqz v8, :cond_3

    .line 466
    iget-object v8, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    iget-object v9, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_3
    return-void
.end method

.method private produceItemList(ILandroid/content/Context;)V
    .locals 6
    .parameter "deviceW"
    .parameter "context"

    .prologue
    .line 532
    iget-object v3, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    if-eqz v3, :cond_0

    .line 533
    iget-object v3, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_0
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v2, p1, v3

    .line 536
    .local v2, w:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 537
    iget-object v3, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 538
    .local v1, item:Lcom/inveno/newpiflow/model/PiDataItem;
    iget-object v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    iget v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 540
    const/4 v3, 0x5

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    .line 551
    :goto_1
    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 552
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    iget v4, p0, Lcom/inveno/newpiflow/model/PiData;->totalHeight:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 553
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->totalHeight:I

    iget v4, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    iget v5, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/inveno/newpiflow/model/PiData;->totalHeight:I

    .line 554
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 555
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/inveno/newpiflow/model/PiDataItem;->setBanner(Z)V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_1
    iget v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    div-int/lit8 v4, p1, 0x2

    if-le v3, v4, :cond_2

    .line 543
    iget v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    iget v4, p0, Lcom/inveno/newpiflow/model/PiData;->textBannerHeight:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 544
    const/4 v3, 0x4

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_1

    .line 546
    :cond_2
    iget v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 547
    const/4 v3, 0x3

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_1

    .line 558
    .end local v1           #item:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_3
    return-void
.end method

.method private produceItemText(ILandroid/content/Context;)V
    .locals 6
    .parameter "deviceW"
    .parameter "context"

    .prologue
    .line 597
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v2, p1, v3

    .line 598
    .local v2, w:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 600
    .local v1, item:Lcom/inveno/newpiflow/model/PiDataItem;
    iget v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 601
    const/4 v3, 0x5

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    .line 602
    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    .line 603
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    iget v4, p0, Lcom/inveno/newpiflow/model/PiData;->totalHeight:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    .line 604
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->totalHeight:I

    iget v4, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    iget v5, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/inveno/newpiflow/model/PiData;->totalHeight:I

    .line 605
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v1, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    .line 606
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/inveno/newpiflow/model/PiDataItem;->setBanner(Z)V

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xxxxxxxxx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " yyyyyyy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    .end local v1           #item:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_0
    return-void
.end method

.method private sureTextHeight(ILcom/inveno/newpiflow/model/PiDataItem;)V
    .locals 13
    .parameter "width"
    .parameter "dataItem"

    .prologue
    .line 686
    const/16 v2, 0x14

    .line 687
    .local v2, contentTextSize:I
    const/4 v0, 0x7

    .line 688
    .local v0, MAX:I
    iget-object v8, p2, Lcom/inveno/newpiflow/model/PiDataItem;->snippet:Ljava/lang/String;

    .line 689
    .local v8, snippet:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 690
    iget-object v8, p2, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    .line 692
    :cond_0
    const/4 v4, 0x0

    .line 693
    .local v4, lineNum:I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 694
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 695
    .local v6, paint:Landroid/graphics/Paint;
    iget-object v10, p0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    int-to-float v11, v2

    invoke-static {v10, v11}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 696
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 697
    .local v1, charArray:[C
    if-eqz v1, :cond_2

    .line 698
    const/4 v9, 0x0

    .line 699
    .local v9, txtWidth:F
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 700
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v1

    if-ge v3, v10, :cond_2

    .line 701
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 702
    int-to-float v10, p1

    cmpg-float v10, v10, v9

    if-gtz v10, :cond_3

    .line 703
    add-int/lit8 v4, v4, 0x1

    .line 704
    new-instance v7, Ljava/lang/StringBuffer;

    .end local v7           #sb:Ljava/lang/StringBuffer;
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 705
    .restart local v7       #sb:Ljava/lang/StringBuffer;
    if-lez v3, :cond_1

    .line 706
    add-int/lit8 v10, v3, -0x1

    aget-char v10, v1, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 711
    :cond_1
    :goto_1
    if-lt v4, v0, :cond_4

    .line 712
    move v4, v0

    .line 719
    .end local v1           #charArray:[C
    .end local v3           #i:I
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local v9           #txtWidth:F
    :cond_2
    iget-object v10, p0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    const/high16 v11, 0x40a0

    invoke-static {v10, v11}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 720
    .local v5, linespace:I
    iget-object v10, p0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    int-to-float v11, v2

    invoke-static {v10, v11}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    mul-int/2addr v10, v4

    add-int/lit8 v11, v4, -0x1

    mul-int/2addr v11, v5

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42f0

    invoke-static {v11, v12}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p2, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 724
    return-void

    .line 708
    .end local v5           #linespace:I
    .restart local v1       #charArray:[C
    .restart local v3       #i:I
    .restart local v6       #paint:Landroid/graphics/Paint;
    .restart local v7       #sb:Ljava/lang/StringBuffer;
    .restart local v9       #txtWidth:F
    :cond_3
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    if-ne v3, v10, :cond_1

    .line 709
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 715
    :cond_4
    aget-char v10, v1, v3

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private sureTextHeight(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Lcom/inveno/newpiflow/model/PiDataItem;)V
    .locals 2
    .parameter "newinfo"
    .parameter "dataItem"

    .prologue
    const/4 v1, 0x2

    .line 393
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/inveno/newpiflow/model/PiData;->textHeightLineone:I

    iput v0, p2, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 395
    iput v1, p2, Lcom/inveno/newpiflow/model/PiDataItem;->maxLine:I

    .line 416
    :goto_0
    return-void

    .line 413
    :cond_0
    iget v0, p0, Lcom/inveno/newpiflow/model/PiData;->textHeightLinetwo:I

    iput v0, p2, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 414
    iput v1, p2, Lcom/inveno/newpiflow/model/PiDataItem;->maxLine:I

    goto :goto_0
.end method


# virtual methods
.method public changeCard(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;II)Ljava/util/List;
    .locals 17
    .parameter "newinfos"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/PiDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v9, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v9, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    const/4 v13, 0x0

    .line 144
    .local v13, temp:Lcom/inveno/newpiflow/model/PiDataItem;
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getFlowNewinfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 145
    .local v12, newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getTypeById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 146
    .local v14, type:I
    const/4 v10, 0x0

    .line 147
    .local v10, height:I
    iget v2, v12, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    float-to-double v4, v2

    const-wide v7, 0x3ffccccccccccccdL

    cmpl-double v2, v4, v7

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    if-nez v2, :cond_0

    .line 148
    move/from16 v3, p2

    .line 153
    .local v3, width:I
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/inveno/newpiflow/model/PiData;->pinSrc(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, src:Ljava/lang/String;
    new-instance v1, Lcom/inveno/newpiflow/model/PiDataItem;

    const-string v2, ""

    invoke-virtual {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getSnippet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getRtime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/inveno/flyshare/utils/StringTools;->waterwallTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/inveno/newpiflow/model/PiDataItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v1, dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    invoke-virtual {v1, v12}, Lcom/inveno/newpiflow/model/PiDataItem;->setFlowNewinfo(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getUploadInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/model/PiDataItem;->setUploadInfos(Ljava/util/List;)V

    .line 161
    invoke-virtual {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getIconWidht()I

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    int-to-float v2, v3

    iget v4, v12, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    div-float/2addr v2, v4

    float-to-int v10, v2

    .line 163
    iget v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    .line 164
    iput v10, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 165
    const/4 v2, 0x1

    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    .line 186
    :goto_2
    iget v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    if-eq v2, v14, :cond_3

    .line 187
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/model/PiDataItem;->setBanner(Z)V

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/model/PiData;->setBannerItem(Lcom/inveno/newpiflow/model/PiDataItem;)V

    goto/16 :goto_0

    .line 150
    .end local v1           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v3           #width:I
    .end local v6           #src:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    sub-int v2, p2, v2

    div-int/lit8 v3, v2, 0x2

    .restart local v3       #width:I
    goto :goto_1

    .line 174
    .restart local v1       #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .restart local v6       #src:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inveno/newpiflow/model/PiData;->textHeight:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    .line 175
    iput v10, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 176
    const/4 v2, 0x1

    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_2

    .line 181
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/inveno/newpiflow/model/PiData;->sureTextHeight(ILcom/inveno/newpiflow/model/PiDataItem;)V

    .line 182
    iput v10, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 183
    const/4 v2, 0x0

    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->viewType:I

    goto :goto_2

    .line 189
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ge v2, v4, :cond_4

    .line 192
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/model/PiData;->setThreeSenvenItem(Lcom/inveno/newpiflow/model/PiDataItem;)V

    goto/16 :goto_0

    .line 194
    :cond_4
    invoke-virtual {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getIconWidht()I

    move-result v2

    if-nez v2, :cond_5

    if-nez v13, :cond_5

    .line 195
    move-object v13, v1

    goto/16 :goto_0

    .line 197
    :cond_5
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 203
    .end local v1           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v3           #width:I
    .end local v6           #src:Ljava/lang/String;
    .end local v10           #height:I
    .end local v12           #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .end local v14           #type:I
    :cond_6
    if-eqz v13, :cond_7

    .line 204
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_7
    return-object v9
.end method

.method public changeList(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;II)Ljava/util/List;
    .locals 15
    .parameter "newinfos"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/PiDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v9, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 482
    .local v9, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getFlowNewinfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 483
    .local v11, newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    iget-object v2, p0, Lcom/inveno/newpiflow/model/PiData;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getTypeById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 484
    .local v12, type:I
    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getIconWidht()I

    move-result v2

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getIconHeight()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 486
    div-int/lit8 v2, p2, 0x3

    iget v4, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    sub-int v3, v2, v4

    .line 495
    .local v3, width:I
    :goto_1
    invoke-direct {p0, v11}, Lcom/inveno/newpiflow/model/PiData;->pinSrc(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, src:Ljava/lang/String;
    new-instance v1, Lcom/inveno/newpiflow/model/PiDataItem;

    const-string v2, ""

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getSnippet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getRtime()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/inveno/flyshare/utils/StringTools;->waterwallTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/inveno/newpiflow/model/PiDataItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .local v1, dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    iget-object v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    invoke-direct {p0, v11, v1}, Lcom/inveno/newpiflow/model/PiData;->sureTextHeight(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Lcom/inveno/newpiflow/model/PiDataItem;)V

    .line 510
    :cond_0
    :goto_2
    iget v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    const/4 v2, 0x1

    if-eq v2, v12, :cond_4

    .line 511
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/model/PiDataItem;->setBanner(Z)V

    .line 512
    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/model/PiData;->setBannerItem(Lcom/inveno/newpiflow/model/PiDataItem;)V

    .line 516
    :goto_3
    invoke-virtual {v1, v11}, Lcom/inveno/newpiflow/model/PiDataItem;->setFlowNewinfo(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V

    .line 517
    invoke-virtual/range {p1 .. p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getUploadInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/model/PiDataItem;->setUploadInfos(Ljava/util/List;)V

    goto :goto_0

    .line 488
    .end local v1           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v3           #width:I
    .end local v6           #src:Ljava/lang/String;
    :cond_1
    iget v2, v11, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    float-to-double v4, v2

    const-wide v7, 0x3ff999999999999aL

    cmpl-double v2, v4, v7

    if-lez v2, :cond_2

    .line 489
    move/from16 v3, p2

    .restart local v3       #width:I
    goto :goto_1

    .line 491
    .end local v3           #width:I
    :cond_2
    div-int/lit8 v2, p2, 0x2

    iget v4, p0, Lcom/inveno/newpiflow/model/PiData;->padding:I

    sub-int v3, v2, v4

    .restart local v3       #width:I
    goto :goto_1

    .line 504
    .restart local v1       #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .restart local v6       #src:Ljava/lang/String;
    :cond_3
    int-to-float v2, v3

    iget v4, v11, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 506
    iget v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    div-int/lit8 v4, p3, 0x2

    if-le v2, v4, :cond_0

    .line 507
    div-int/lit8 v2, p3, 0x2

    iput v2, v1, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    goto :goto_2

    .line 514
    :cond_4
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 521
    .end local v1           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v3           #width:I
    .end local v6           #src:Ljava/lang/String;
    .end local v11           #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .end local v12           #type:I
    :cond_5
    return-object v9
.end method

.method public getBannerItem()Lcom/inveno/newpiflow/model/PiDataItem;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    return-object v0
.end method

.method public getFillBottom()I
    .locals 6

    .prologue
    .line 757
    const v5, 0x7fffffff

    .line 758
    .local v5, result:I
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    .local v0, arr$:[Lcom/inveno/newpiflow/model/PiData$Column;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 759
    .local v2, c:Lcom/inveno/newpiflow/model/PiData$Column;
    iget v1, v2, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    .line 760
    .local v1, bottom:I
    if-le v5, v1, :cond_0

    move v5, v1

    .line 758
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 762
    .end local v1           #bottom:I
    .end local v2           #c:Lcom/inveno/newpiflow/model/PiData$Column;
    :cond_1
    return v5
.end method

.method public getHeight()I
    .locals 7

    .prologue
    .line 790
    const/4 v5, 0x0

    .line 791
    .local v5, result:I
    iget v6, p0, Lcom/inveno/newpiflow/model/PiData;->style:I

    packed-switch v6, :pswitch_data_0

    .line 804
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 793
    :pswitch_1
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    .local v0, arr$:[Lcom/inveno/newpiflow/model/PiData$Column;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 794
    .local v2, c:Lcom/inveno/newpiflow/model/PiData$Column;
    iget v1, v2, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    .line 795
    .local v1, bottom:I
    if-ge v5, v1, :cond_1

    move v5, v1

    .line 793
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 800
    .end local v0           #arr$:[Lcom/inveno/newpiflow/model/PiData$Column;
    .end local v1           #bottom:I
    .end local v2           #c:Lcom/inveno/newpiflow/model/PiData$Column;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_2
    iget v5, p0, Lcom/inveno/newpiflow/model/PiData;->totalHeight:I

    goto :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getItemLeft(I)I
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 778
    iget-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/inveno/newpiflow/model/PiData$Column;->items:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 779
    .local v0, index:I
    if-eq v0, v2, :cond_0

    .line 780
    iget-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/inveno/newpiflow/model/PiData$Column;->left:I

    .line 781
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/inveno/newpiflow/model/PiData;->columns:[Lcom/inveno/newpiflow/model/PiData$Column;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/inveno/newpiflow/model/PiData$Column;->left:I

    goto :goto_0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/inveno/newpiflow/model/PiData;->theme:I

    return v0
.end method

.method public isContain(I)Z
    .locals 5
    .parameter "scrollY"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 842
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->style:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 850
    :cond_0
    :goto_0
    return v1

    .line 844
    :pswitch_1
    invoke-direct {p0}, Lcom/inveno/newpiflow/model/PiData;->getShortColumn()Lcom/inveno/newpiflow/model/PiData$Column;

    move-result-object v0

    .line 846
    .local v0, c:Lcom/inveno/newpiflow/model/PiData$Column;
    iget v3, v0, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    iget v4, v0, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_1

    iget v3, v0, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    if-le p1, v3, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 848
    .end local v0           #c:Lcom/inveno/newpiflow/model/PiData$Column;
    :pswitch_2
    iget v3, p0, Lcom/inveno/newpiflow/model/PiData;->totalHeight:I

    if-le p1, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemAdd(II)V
    .locals 3
    .parameter "pos"
    .parameter "itemHeight"

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/inveno/newpiflow/model/PiData;->getShortColumn()Lcom/inveno/newpiflow/model/PiData$Column;

    move-result-object v0

    .line 772
    .local v0, addColumn:Lcom/inveno/newpiflow/model/PiData$Column;
    iget v1, v0, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/inveno/newpiflow/model/PiData$Column;->height:I

    .line 773
    iget v1, v0, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/inveno/newpiflow/model/PiData$Column;->bottom:I

    .line 774
    iget-object v1, v0, Lcom/inveno/newpiflow/model/PiData$Column;->items:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/model/PiData$Column;->getIndex()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 775
    return-void
.end method

.method public release(Lcom/inveno/flyshare/BitmapUtils;)V
    .locals 5
    .parameter "bitmapUtils"

    .prologue
    const/4 v4, 0x0

    .line 869
    iget-object v2, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 870
    .local v0, dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/inveno/newpiflow/model/PiDataItem;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Lcom/inveno/flyshare/BitmapUtils;->clearCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    .line 872
    invoke-virtual {v0, v4}, Lcom/inveno/newpiflow/model/PiDataItem;->setIv(Lcom/inveno/newpiflow/widget/PiImageView;)V

    goto :goto_0

    .line 874
    .end local v0           #dataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_0
    iget-object v2, p0, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 875
    iput-object v4, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    .line 876
    return-void
.end method

.method public setBannerItem(Lcom/inveno/newpiflow/model/PiDataItem;)V
    .locals 0
    .parameter "bannerItem"

    .prologue
    .line 858
    iput-object p1, p0, Lcom/inveno/newpiflow/model/PiData;->bannerItems:Lcom/inveno/newpiflow/model/PiDataItem;

    .line 859
    return-void
.end method

.method public setThreeSenvenItem(Lcom/inveno/newpiflow/model/PiDataItem;)V
    .locals 1
    .parameter "bannerItem"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiData;->threeSevenItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    return-void
.end method
