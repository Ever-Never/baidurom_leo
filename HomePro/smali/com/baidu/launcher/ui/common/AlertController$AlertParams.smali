.class public Lcom/baidu/launcher/ui/common/AlertController$AlertParams;
.super Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 533
    return-void
.end method

.method private createListView(Lcom/baidu/launcher/ui/common/AlertController;)V
    .locals 10
    .parameter "dialog"

    .prologue
    const v4, 0x7f0801b7

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 579
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030087

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;

    .line 582
    .local v6, listView:Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 583
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 584
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams$1;

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v3, 0x7f030089

    iget-object v5, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams$1;-><init>(Lcom/baidu/launcher/ui/common/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;)V

    .line 634
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 641
    :cond_0
    #setter for: Lcom/baidu/launcher/ui/common/AlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/baidu/launcher/ui/common/AlertController;->access$802(Lcom/baidu/launcher/ui/common/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 642
    iget v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/baidu/launcher/ui/common/AlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$902(Lcom/baidu/launcher/ui/common/AlertController;I)I

    .line 644
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 645
    new-instance v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams$3;-><init>(Lcom/baidu/launcher/ui/common/AlertController$AlertParams;Lcom/baidu/launcher/ui/common/AlertController;)V

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 666
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 667
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 670
    :cond_2
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 671
    invoke-virtual {v6, v9}, Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 675
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 676
    #setter for: Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/baidu/launcher/ui/common/AlertController;->access$1002(Lcom/baidu/launcher/ui/common/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 677
    return-void

    .line 598
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams$2;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams$2;-><init>(Lcom/baidu/launcher/ui/common/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/baidu/launcher/ui/common/AlertController$RecycleListView;)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 625
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    const v2, 0x7f03008a

    .line 627
    .local v2, layout:I
    :goto_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 628
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 625
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #layout:I
    :cond_6
    const v2, 0x7f030088

    goto :goto_3

    .line 628
    .restart local v2       #layout:I
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 630
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 653
    .end local v2           #layout:I
    :cond_9
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 654
    new-instance v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams$4;-><init>(Lcom/baidu/launcher/ui/common/AlertController$AlertParams;Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;Lcom/baidu/launcher/ui/common/AlertController;)V

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 672
    :cond_a
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 673
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/baidu/launcher/ui/common/AlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 536
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 537
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 549
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 553
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/launcher/ui/common/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 556
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/launcher/ui/common/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 559
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/launcher/ui/common/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 561
    :cond_4
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 562
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/AlertController;->setInverseBackgroundForced(Z)V

    .line 566
    :cond_5
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 567
    :cond_6
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->createListView(Lcom/baidu/launcher/ui/common/AlertController;)V

    .line 569
    :cond_7
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 570
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    .line 571
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/common/AlertController;->setView(Landroid/view/View;IIII)V

    .line 576
    :cond_8
    :goto_1
    return-void

    .line 539
    :cond_9
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 540
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 542
    :cond_a
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 543
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 545
    :cond_b
    iget v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 546
    iget v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/AlertController;->setIcon(I)V

    goto :goto_0

    .line 573
    :cond_c
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
