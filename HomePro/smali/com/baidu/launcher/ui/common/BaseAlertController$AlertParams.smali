.class public Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;
.super Ljava/lang/Object;
.source "BaseAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/BaseAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIconId:I

    .line 757
    iput v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIconAttrId:I

    .line 779
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 783
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCheckedItem:I

    .line 791
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 807
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 808
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCancelable:Z

    .line 809
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 810
    return-void
.end method

.method private createListView(Lcom/baidu/launcher/ui/common/BaseAlertController;)V
    .locals 10
    .parameter "dialog"

    .prologue
    const v4, 0x7f0802cc

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 871
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mListLayout:I
    invoke-static {p1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$800(Lcom/baidu/launcher/ui/common/BaseAlertController;)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;

    .line 875
    .local v6, listView:Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 876
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 877
    new-instance v0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mContext:Landroid/content/Context;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mMultiChoiceItemLayout:I
    invoke-static {p1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$900(Lcom/baidu/launcher/ui/common/BaseAlertController;)I

    move-result v3

    iget-object v5, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$1;-><init>(Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;)V

    .line 930
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 937
    :cond_0
    #setter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$1202(Lcom/baidu/launcher/ui/common/BaseAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 938
    iget v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$1302(Lcom/baidu/launcher/ui/common/BaseAlertController;I)I

    .line 940
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 941
    new-instance v1, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$3;-><init>(Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;Lcom/baidu/launcher/ui/common/BaseAlertController;)V

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 962
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 963
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 966
    :cond_2
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 967
    invoke-virtual {v6, v9}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->setChoiceMode(I)V

    .line 971
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 972
    #setter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$1402(Lcom/baidu/launcher/ui/common/BaseAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 973
    return-void

    .line 892
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$2;-><init>(Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;Lcom/baidu/launcher/ui/common/BaseAlertController;)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 919
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mSingleChoiceItemLayout:I
    invoke-static {p1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$1000(Lcom/baidu/launcher/ui/common/BaseAlertController;)I

    move-result v2

    .line 921
    .local v2, layout:I
    :goto_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 922
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 919
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #layout:I
    :cond_6
    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mListItemLayout:I
    invoke-static {p1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$1100(Lcom/baidu/launcher/ui/common/BaseAlertController;)I

    move-result v2

    goto :goto_3

    .line 922
    .restart local v2       #layout:I
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 925
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 949
    .end local v2           #layout:I
    :cond_9
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 950
    new-instance v1, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams$4;-><init>(Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;Lcom/baidu/launcher/ui/common/BaseAlertController;)V

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 968
    :cond_a
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 969
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/baidu/launcher/ui/common/BaseAlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 813
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 814
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 829
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 833
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 837
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 841
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 844
    :cond_4
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 845
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setInverseBackgroundForced(Z)V

    .line 849
    :cond_5
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 850
    :cond_6
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->createListView(Lcom/baidu/launcher/ui/common/BaseAlertController;)V

    .line 852
    :cond_7
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 853
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_d

    .line 854
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setView(Landroid/view/View;IIII)V

    .line 868
    :cond_8
    :goto_1
    return-void

    .line 816
    :cond_9
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 817
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 819
    :cond_a
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 820
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 822
    :cond_b
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_c

    .line 823
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setIcon(I)V

    .line 825
    :cond_c
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIconAttrId:I

    if-lez v0, :cond_0

    .line 826
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 857
    :cond_d
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
