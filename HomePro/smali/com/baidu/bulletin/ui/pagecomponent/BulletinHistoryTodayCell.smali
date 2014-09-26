.class public Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;
.super Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
.source "BulletinHistoryTodayCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell$1;,
        Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell$HistoryComparator;
    }
.end annotation


# instance fields
.field private mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/baidu/bulletin/network/protocol/TextBuildWords;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/TextBuildWords;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/baidu/bulletin/network/protocol/TextBuildWords;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/TextBuildWords;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    .line 36
    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 24
    .parameter "page"
    .parameter "data"

    .prologue
    .line 40
    invoke-super/range {p0 .. p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v13

    .line 41
    .local v13, ret:Z
    if-eqz v13, :cond_8

    .line 43
    new-instance v6, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;-><init>(Ljava/lang/String;)V

    .line 45
    .local v6, historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    invoke-interface {v6}, Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;->get()[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-result-object v7

    .line 47
    .local v7, historyDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    const v20, 0x7f08003c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 48
    .local v15, successLayout:Landroid/view/ViewGroup;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 50
    const v20, 0x7f08003b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, failTextView:Landroid/widget/TextView;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    const v20, 0x7f080028

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 54
    .local v16, todayTextView:Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    if-eqz v7, :cond_9

    .line 60
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v10, mBigEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v11, mBirthEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v12, mDeathEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_0

    .line 65
    aget-object v2, v7, v8

    .line 66
    .local v2, desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    iget v0, v2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->type:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 64
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 68
    :pswitch_0
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :pswitch_1
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :pswitch_2
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v2           #desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    :cond_0
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v14, v0, [Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    .line 85
    .local v14, showHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    const/4 v8, 0x0

    :goto_2
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 86
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aput-object v20, v14, v8

    .line 85
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 89
    :cond_1
    const/4 v8, 0x1

    :goto_3
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 90
    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aput-object v20, v14, v8

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 93
    :cond_2
    const/4 v8, 0x2

    :goto_4
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 94
    add-int/lit8 v20, v8, -0x2

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aput-object v20, v14, v8

    .line 93
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 97
    :cond_3
    new-instance v20, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell$HistoryComparator;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell$HistoryComparator;-><init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell$1;)V

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 99
    const/4 v8, 0x0

    :goto_5
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_9

    .line 100
    aget-object v5, v14, v8

    .line 102
    .local v5, historyDesc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    if-eqz v5, :cond_5

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->setBuildWords(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;)V

    .line 105
    const-string v20, "%04d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v5, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, year:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->buildWords()Ljava/lang/String;

    move-result-object v17

    .line 109
    .local v17, words:Ljava/lang/String;
    const/16 v19, 0x0

    .line 110
    .local v19, yearTextView:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 111
    .local v3, descTextView:Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 113
    .local v9, indentityImageView:Landroid/widget/ImageView;
    if-nez v8, :cond_6

    .line 115
    const v20, 0x7f08002c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #yearTextView:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 118
    .restart local v19       #yearTextView:Landroid/widget/TextView;
    const v20, 0x7f080030

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #descTextView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 121
    .restart local v3       #descTextView:Landroid/widget/TextView;
    const v20, 0x7f08003d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #indentityImageView:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 137
    .restart local v9       #indentityImageView:Landroid/widget/ImageView;
    :cond_4
    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget v0, v5, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->type:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    .line 99
    .end local v3           #descTextView:Landroid/widget/TextView;
    .end local v9           #indentityImageView:Landroid/widget/ImageView;
    .end local v17           #words:Ljava/lang/String;
    .end local v18           #year:Ljava/lang/String;
    .end local v19           #yearTextView:Landroid/widget/TextView;
    :cond_5
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 124
    .restart local v3       #descTextView:Landroid/widget/TextView;
    .restart local v9       #indentityImageView:Landroid/widget/ImageView;
    .restart local v17       #words:Ljava/lang/String;
    .restart local v18       #year:Ljava/lang/String;
    .restart local v19       #yearTextView:Landroid/widget/TextView;
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_7

    .line 125
    const v20, 0x7f080031

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #yearTextView:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 127
    .restart local v19       #yearTextView:Landroid/widget/TextView;
    const v20, 0x7f080035

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #descTextView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 128
    .restart local v3       #descTextView:Landroid/widget/TextView;
    const v20, 0x7f08003e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #indentityImageView:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .restart local v9       #indentityImageView:Landroid/widget/ImageView;
    goto :goto_6

    .line 130
    :cond_7
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_4

    .line 131
    const v20, 0x7f080036

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #yearTextView:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 133
    .restart local v19       #yearTextView:Landroid/widget/TextView;
    const v20, 0x7f08003a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #descTextView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 134
    .restart local v3       #descTextView:Landroid/widget/TextView;
    const v20, 0x7f08003f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #indentityImageView:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .restart local v9       #indentityImageView:Landroid/widget/ImageView;
    goto :goto_6

    .line 142
    :pswitch_3
    const v20, 0x7f020078

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 145
    :pswitch_4
    const v20, 0x7f020079

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 149
    :pswitch_5
    const v20, 0x7f02007a

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 159
    .end local v3           #descTextView:Landroid/widget/TextView;
    .end local v4           #failTextView:Landroid/widget/TextView;
    .end local v5           #historyDesc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .end local v6           #historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    .end local v7           #historyDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .end local v8           #i:I
    .end local v9           #indentityImageView:Landroid/widget/ImageView;
    .end local v10           #mBigEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    .end local v11           #mBirthEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    .end local v12           #mDeathEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    .end local v14           #showHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .end local v15           #successLayout:Landroid/view/ViewGroup;
    .end local v16           #todayTextView:Landroid/widget/TextView;
    .end local v17           #words:Ljava/lang/String;
    .end local v18           #year:Ljava/lang/String;
    .end local v19           #yearTextView:Landroid/widget/TextView;
    :cond_8
    const v20, 0x7f08003c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 160
    .restart local v15       #successLayout:Landroid/view/ViewGroup;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 162
    const v20, 0x7f08003b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 163
    .restart local v4       #failTextView:Landroid/widget/TextView;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    const v20, 0x7f0c0275

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 167
    :cond_9
    return v13

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 140
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
