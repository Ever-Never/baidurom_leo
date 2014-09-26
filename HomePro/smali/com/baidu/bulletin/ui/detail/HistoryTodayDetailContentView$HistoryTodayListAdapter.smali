.class Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryTodayDetailContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryTodayListAdapter"
.end annotation


# instance fields
.field isSemiViewEnabled:Z

.field private mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

.field private mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 96
    new-instance v0, Lcom/baidu/bulletin/network/protocol/HtmlBuildWords;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/HtmlBuildWords;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    .line 97
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->checkSemiViewEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->isSemiViewEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;-><init>(Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aget-object v0, v0, p1

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "layout_inflater"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/LayoutInflater;

    const v24, 0x7f030024

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    :cond_0
    const-string v23, "%04d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-object/from16 v26, v0

    aget-object v26, v26, p1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 140
    .local v21, year:Ljava/lang/String;
    const v23, 0x7f0800a9

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 141
    .local v22, yearTextView:Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v23, 0x7f0800ad

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 145
    .local v10, historyDescTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->setBuildWords(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    invoke-virtual/range {v23 .. v23}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->buildWords()Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, htmlDescString:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 150
    .local v11, htmlDesc:Landroid/text/Spanned;
    const/16 v23, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v24

    const-class v25, Landroid/text/style/URLSpan;

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v11, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/URLSpan;

    .line 152
    .local v20, urlSpans:[Landroid/text/style/URLSpan;
    new-instance v18, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 154
    .local v18, style:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 158
    .local v7, context:Landroid/content/Context;
    move-object/from16 v5, v20

    .local v5, arr$:[Landroid/text/style/URLSpan;
    array-length v15, v5

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v15, :cond_2

    aget-object v19, v5, v13

    .line 159
    .local v19, urlSpan:Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->isSemiViewEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 160
    new-instance v6, Lcom/baidu/bulletin/ui/detail/CatchExceptionUrlSpan;

    invoke-virtual/range {v19 .. v19}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lcom/baidu/bulletin/ui/detail/CatchExceptionUrlSpan;-><init>(Ljava/lang/String;)V

    .line 161
    .local v6, catchExceptionUrlSpan:Lcom/baidu/bulletin/ui/detail/CatchExceptionUrlSpan;
    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v24

    const/16 v25, 0x22

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 158
    .end local v6           #catchExceptionUrlSpan:Lcom/baidu/bulletin/ui/detail/CatchExceptionUrlSpan;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 166
    :cond_1
    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v23

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v24

    sub-int v14, v23, v24

    .line 167
    .local v14, len:I
    new-array v8, v14, [C

    .line 169
    .local v8, dest:[C
    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 170
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    .line 171
    .local v16, searchWords:Ljava/lang/String;
    new-instance v17, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;

    const/16 v23, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-direct {v0, v7, v1, v2}, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 173
    .local v17, semiViewSearchSpan:Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;
    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v24

    const/16 v25, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 181
    .end local v8           #dest:[C
    .end local v14           #len:I
    .end local v16           #searchWords:Ljava/lang/String;
    .end local v17           #semiViewSearchSpan:Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;
    .end local v19           #urlSpan:Landroid/text/style/URLSpan;
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 185
    const v23, 0x7f0800ac

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 187
    .local v9, eventTypeImageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->type:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 235
    :goto_2
    return-object p2

    .line 189
    :pswitch_0
    const v23, 0x7f020072

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 192
    :pswitch_1
    const v23, 0x7f020073

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 195
    :pswitch_2
    const v23, 0x7f020074

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update([Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;)V
    .locals 0
    .parameter "historyDescs"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->mHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    .line 103
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method
