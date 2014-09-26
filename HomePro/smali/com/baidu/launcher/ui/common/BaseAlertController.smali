.class public Lcom/baidu/launcher/ui/common/BaseAlertController;
.super Ljava/lang/Object;
.source "BaseAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/BaseAlertController$AlertParams;,
        Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;,
        Lcom/baidu/launcher/ui/common/BaseAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingSpecified:Z

    .line 104
    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconId:I

    .line 120
    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mCheckedItem:I

    .line 130
    new-instance v1, Lcom/baidu/launcher/ui/common/BaseAlertController$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/common/BaseAlertController$1;-><init>(Lcom/baidu/launcher/ui/common/BaseAlertController;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 184
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 186
    iput-object p3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    .line 187
    new-instance v1, Lcom/baidu/launcher/ui/common/BaseAlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/baidu/launcher/ui/common/BaseAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mHandler:Landroid/os/Handler;

    .line 189
    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/home2/R$styleable;->AlertDialog:[I

    const v3, 0x7f010050

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x7f0300d4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mAlertDialogLayout:I

    .line 195
    const/16 v1, 0xb

    const v2, 0x7f0300d7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListLayout:I

    .line 198
    const/16 v1, 0xc

    const v2, 0x7f0300d9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMultiChoiceItemLayout:I

    .line 201
    const/16 v1, 0xd

    const v2, 0x7f0300da

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mSingleChoiceItemLayout:I

    .line 204
    const/16 v1, 0xe

    const v2, 0x7f0300d8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListItemLayout:I

    .line 208
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/common/BaseAlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/common/BaseAlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1202(Lcom/baidu/launcher/ui/common/BaseAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/baidu/launcher/ui/common/BaseAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1402(Lcom/baidu/launcher/ui/common/BaseAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/common/BaseAlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/common/BaseAlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    :goto_0
    return v2

    .line 216
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 217
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 220
    check-cast v1, Landroid/view/ViewGroup;

    .line 221
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 222
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 224
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 225
    invoke-static {p0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 230
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 587
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 588
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 589
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 590
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f0802c5

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 592
    .local v0, leftSpacer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f0802c9

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 596
    .local v2, rightSpacer:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 597
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_1
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 606
    const/16 v19, 0x0

    const v20, 0x7f0203f7

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 608
    .local v9, fullDark:I
    const/16 v19, 0x1

    const v20, 0x7f0203f9

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 610
    .local v16, topDark:I
    const/16 v19, 0x2

    const v20, 0x7f0203f8

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 612
    .local v7, centerDark:I
    const/16 v19, 0x3

    const v20, 0x7f0203f5

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 614
    .local v4, bottomDark:I
    const/16 v19, 0x4

    const v20, 0x7f0203f7

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 616
    .local v8, fullBright:I
    const/16 v19, 0x5

    const v20, 0x7f0203f9

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 618
    .local v15, topBright:I
    const/16 v19, 0x6

    const v20, 0x7f0203f8

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 620
    .local v6, centerBright:I
    const/16 v19, 0x7

    const v20, 0x7f0203f5

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 622
    .local v3, bottomBright:I
    const/16 v19, 0x8

    const v20, 0x7f0203f6

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 634
    .local v5, bottomMedium:I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 635
    .local v18, views:[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 636
    .local v12, light:[Z
    const/4 v11, 0x0

    .line 637
    .local v11, lastView:Landroid/view/View;
    const/4 v10, 0x0

    .line 639
    .local v10, lastLight:Z
    const/4 v13, 0x0

    .line 640
    .local v13, pos:I
    if-eqz p6, :cond_0

    .line 641
    aput-object p1, v18, v13

    .line 642
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 643
    add-int/lit8 v13, v13, 0x1

    .line 651
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2
    :cond_1
    aput-object p2, v18, v13

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    aput-boolean v19, v12, v13

    .line 654
    add-int/lit8 v13, v13, 0x1

    .line 655
    if-eqz p3, :cond_2

    .line 656
    aput-object p3, v18, v13

    .line 657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 658
    add-int/lit8 v13, v13, 0x1

    .line 660
    :cond_2
    if-eqz p4, :cond_3

    .line 661
    aput-object p7, v18, v13

    .line 662
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 665
    :cond_3
    const/4 v14, 0x0

    .line 666
    .local v14, setView:Z
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 667
    aget-object v17, v18, v13

    .line 668
    .local v17, v:Landroid/view/View;
    if-nez v17, :cond_5

    .line 666
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 653
    .end local v14           #setView:Z
    .end local v17           #v:Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 671
    .restart local v14       #setView:Z
    .restart local v17       #v:Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 672
    if-nez v14, :cond_8

    .line 673
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 677
    :goto_4
    const/4 v14, 0x1

    .line 679
    :cond_6
    move-object/from16 v11, v17

    .line 680
    aget-boolean v10, v12, v13

    goto :goto_2

    :cond_7
    move/from16 v19, v16

    .line 673
    goto :goto_3

    .line 675
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v19, v7

    goto :goto_5

    .line 683
    .end local v17           #v:Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 684
    if-eqz v14, :cond_f

    .line 689
    if-eqz v10, :cond_e

    if-eqz p4, :cond_d

    .end local v5           #bottomMedium:I
    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 721
    .end local v8           #fullBright:I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 728
    :cond_c
    return-void

    .restart local v5       #bottomMedium:I
    .restart local v8       #fullBright:I
    :cond_d
    move v5, v3

    .line 689
    goto :goto_6

    :cond_e
    move v5, v4

    goto :goto_6

    .line 692
    :cond_f
    if-eqz v10, :cond_10

    .end local v8           #fullBright:I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v8       #fullBright:I
    :cond_10
    move v8, v9

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 530
    const/4 v2, 0x1

    .line 531
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 532
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 533
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 534
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7f0802c6

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 535
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 545
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7f0802c8

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 546
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 549
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    :goto_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7f0802c7

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 558
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 561
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    :goto_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/ui/common/BaseAlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    if-ne v3, v2, :cond_4

    .line 575
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/common/BaseAlertController;->centerButton(Landroid/widget/Button;)V

    .line 583
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 540
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 542
    or-int/2addr v3, v2

    goto :goto_0

    .line 551
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 554
    or-int/2addr v3, v0

    goto :goto_1

    .line 563
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 566
    or-int/2addr v3, v1

    goto :goto_2

    .line 576
    :cond_4
    if-ne v3, v0, :cond_5

    .line 577
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/common/BaseAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 578
    :cond_5
    if-ne v3, v1, :cond_0

    .line 579
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/common/BaseAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 583
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x7f0802c1

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 503
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 504
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 507
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f0801a0

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessageView:Landroid/widget/TextView;

    .line 508
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 518
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 520
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, 0x7f0802be

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 448
    const/4 v1, 0x1

    .line 450
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 452
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 455
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 459
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 499
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 461
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 463
    .local v0, hasTextTitle:Z
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0802bf

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    .line 464
    if-eqz v0, :cond_5

    .line 466
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0802c0

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mTitleView:Landroid/widget/TextView;

    .line 468
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 475
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 477
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 478
    :cond_4
    iget v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 483
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 487
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 492
    :cond_5
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 493
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 395
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f080268

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 396
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 397
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setupButtons()Z

    move-result v4

    .line 399
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0802bd

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 400
    .local v1, topPanel:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcom/baidu/home2/R$styleable;->AlertDialog:[I

    const v12, 0x7f010050

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 402
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 404
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0802c4

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 405
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 406
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_0
    const/4 v3, 0x0

    .line 411
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 412
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0802c2

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 413
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0802c3

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 414
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 416
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingLeft:I

    iget v10, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingTop:I

    iget v11, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingRight:I

    iget v12, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v10, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 429
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_5

    .line 430
    const/4 v9, 0x0

    .line 431
    .local v9, divider:Landroid/view/View;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f080220

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 438
    :cond_4
    if-eqz v9, :cond_5

    .line 439
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_5
    move-object v0, p0

    .line 443
    invoke-direct/range {v0 .. v7}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 444
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    return-void

    .line 423
    :cond_6
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7f0802c2

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 177
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 178
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f010052

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 180
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 372
    packed-switch p1, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .parameter "attrId"

    .prologue
    .line 358
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 359
    .local v0, out:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 360
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 235
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 237
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 242
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/BaseAlertController;->setupView()V

    .line 243
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 302
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 303
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 306
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_0
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 310
    iput-object p4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 326
    :goto_0
    return-void

    .line 314
    :pswitch_1
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 315
    iput-object p4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 319
    :pswitch_2
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 320
    iput-object p4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mCustomTitleView:Landroid/view/View;

    .line 257
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 334
    iput p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconId:I

    .line 335
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 336
    if-lez p1, :cond_1

    .line 337
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    if-nez p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 346
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mForceInverseBackground:Z

    .line 365
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 261
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 247
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mView:Landroid/view/View;

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingSpecified:Z

    .line 272
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mView:Landroid/view/View;

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingSpecified:Z

    .line 281
    iput p2, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingLeft:I

    .line 282
    iput p3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingTop:I

    .line 283
    iput p4, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingRight:I

    .line 284
    iput p5, p0, Lcom/baidu/launcher/ui/common/BaseAlertController;->mViewSpacingBottom:I

    .line 285
    return-void
.end method
