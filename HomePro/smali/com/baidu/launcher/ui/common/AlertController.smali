.class public Lcom/baidu/launcher/ui/common/AlertController;
.super Lcom/baidu/launcher/ui/common/BaseAlertController;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/AlertController$AlertParams;,
        Lcom/baidu/launcher/ui/common/AlertController$RecycleListView;,
        Lcom/baidu/launcher/ui/common/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

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

.field private mHandler:Landroid/os/Handler;

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/BaseAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingSpecified:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mCheckedItem:I

    .line 88
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/common/AlertController$1;-><init>(Lcom/baidu/launcher/ui/common/AlertController;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 82
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 84
    iput-object p3, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    .line 85
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/baidu/launcher/ui/common/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/baidu/launcher/ui/common/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/baidu/launcher/ui/common/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/baidu/launcher/ui/common/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 681
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 699
    :goto_0
    return v2

    .line 685
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 686
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 689
    check-cast v1, Landroid/view/ViewGroup;

    .line 690
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 691
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 692
    add-int/lit8 v0, v0, -0x1

    .line 693
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 694
    invoke-static {p0}, Lcom/baidu/launcher/ui/common/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 699
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 427
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 428
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 429
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 20
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 439
    const v5, 0x7f0203f7

    .line 440
    .local v5, fullBg:I
    const v13, 0x7f0203f9

    .line 441
    .local v13, topBg:I
    const v4, 0x7f0203f8

    .line 442
    .local v4, centerBg:I
    const v3, 0x7f0203f6

    .line 443
    .local v3, bottomBg:I
    const v7, 0x7f0203f5

    .line 444
    .local v7, halfBg:I
    const v6, 0x7f0203f7

    .line 445
    .local v6, fullBgWithoutTitle:I
    const v14, 0x7f0203f9

    .line 447
    .local v14, topBgWithoutTitle:I
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v16, v0

    .line 448
    .local v16, views:[Landroid/view/View;
    const/4 v8, 0x0

    .line 450
    .local v8, lastView:Landroid/view/View;
    const/4 v11, 0x0

    .line 451
    .local v11, pos:I
    if-eqz p6, :cond_0

    .line 452
    aput-object p1, v16, v11

    .line 453
    add-int/lit8 v11, v11, 0x1

    .line 461
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 v17, 0x0

    :goto_0
    aput-object v17, v16, v11

    .line 462
    add-int/lit8 v11, v11, 0x1

    .line 463
    if-eqz p3, :cond_1

    .line 464
    aput-object p3, v16, v11

    .line 465
    add-int/lit8 v11, v11, 0x1

    .line 467
    :cond_1
    if-eqz p4, :cond_2

    .line 468
    aput-object p7, v16, v11

    .line 471
    :cond_2
    const/4 v12, 0x0

    .line 472
    .local v12, setView:Z
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 473
    aget-object v15, v16, v11

    .line 474
    .local v15, v:Landroid/view/View;
    if-nez v15, :cond_4

    .line 472
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v12           #setView:Z
    .end local v15           #v:Landroid/view/View;
    :cond_3
    move-object/from16 v17, p2

    .line 461
    goto :goto_0

    .line 477
    .restart local v12       #setView:Z
    .restart local v15       #v:Landroid/view/View;
    :cond_4
    if-eqz v8, :cond_5

    .line 478
    if-nez v12, :cond_7

    .line 479
    if-eqz p6, :cond_6

    move/from16 v17, v13

    :goto_3
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 483
    :goto_4
    const/4 v12, 0x1

    .line 485
    :cond_5
    move-object v8, v15

    goto :goto_2

    :cond_6
    move/from16 v17, v14

    .line 479
    goto :goto_3

    .line 481
    :cond_7
    invoke-virtual {v8, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 488
    .end local v15           #v:Landroid/view/View;
    :cond_8
    if-eqz v8, :cond_9

    .line 489
    if-eqz v12, :cond_d

    .line 490
    if-eqz p4, :cond_c

    .end local v3           #bottomBg:I
    :goto_5
    invoke-virtual {v8, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 496
    .end local v5           #fullBg:I
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mCheckedItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mCheckedItem:I

    move/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mCheckedItem:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setSelection(I)V

    .line 503
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    .line 504
    .local v9, paddingLeft:I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v10

    .line 505
    .local v10, paddingRight:I
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v9, v1, v10, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 507
    .end local v9           #paddingLeft:I
    .end local v10           #paddingRight:I
    :cond_b
    return-void

    .restart local v3       #bottomBg:I
    .restart local v5       #fullBg:I
    :cond_c
    move v3, v7

    .line 490
    goto :goto_5

    .line 492
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .end local v5           #fullBg:I
    :goto_7
    invoke-virtual {v8, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .restart local v5       #fullBg:I
    :cond_e
    move v5, v6

    goto :goto_7
.end method

.method private setupButtons()Z
    .locals 12

    .prologue
    const v11, 0x7f0802ca

    const/16 v10, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 344
    const/4 v2, 0x1

    .line 345
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 346
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 347
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v5, 0x0

    .line 348
    .local v5, whichButtons:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802c6

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 349
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 352
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    :goto_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802c8

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 360
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 363
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 371
    :goto_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802c7

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 372
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 375
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 383
    :goto_2
    if-ne v5, v2, :cond_6

    .line 384
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/common/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 392
    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_8

    move v4, v7

    .line 394
    .local v4, hasList:Z
    :goto_4
    if-eqz v5, :cond_9

    move v3, v7

    .line 396
    .local v3, hasButton:Z
    :goto_5
    if-eqz v3, :cond_2

    .line 397
    and-int v6, v5, v1

    if-eqz v6, :cond_a

    .line 398
    and-int v6, v5, v0

    if-eqz v6, :cond_1

    .line 399
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :cond_1
    and-int v6, v5, v2

    if-eqz v6, :cond_2

    .line 402
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802cb

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_2
    :goto_6
    if-nez v3, :cond_b

    if-eqz v4, :cond_b

    .line 412
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/high16 v9, 0x104

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(I)V

    .line 413
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/common/AlertController;->centerButton(Landroid/widget/Button;)V

    move v6, v7

    .line 422
    :goto_7
    return v6

    .line 354
    .end local v3           #hasButton:Z
    .end local v4           #hasList:Z
    :cond_3
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 356
    or-int/2addr v5, v2

    goto/16 :goto_0

    .line 365
    :cond_4
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    or-int/2addr v5, v0

    goto/16 :goto_1

    .line 377
    :cond_5
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 380
    or-int/2addr v5, v1

    goto :goto_2

    .line 385
    :cond_6
    if-ne v5, v0, :cond_7

    .line 386
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/common/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 387
    :cond_7
    if-ne v5, v1, :cond_0

    .line 388
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/common/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    :cond_8
    move v4, v8

    .line 392
    goto :goto_4

    .restart local v4       #hasList:Z
    :cond_9
    move v3, v8

    .line 394
    goto :goto_5

    .line 405
    .restart local v3       #hasButton:Z
    :cond_a
    and-int v6, v5, v0

    if-eqz v6, :cond_2

    and-int v6, v5, v2

    if-eqz v6, :cond_2

    .line 406
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 418
    :cond_b
    if-nez v3, :cond_c

    if-nez v4, :cond_c

    move v6, v8

    .line 419
    goto :goto_7

    :cond_c
    move v6, v7

    .line 422
    goto :goto_7
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x7f0802c1

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 284
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 285
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 288
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f0801a0

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, 0x7f0802be

    const/16 v9, 0x8

    .line 310
    const/4 v1, 0x1

    .line 312
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 313
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 319
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :goto_0
    return v1

    .line 321
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 322
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0802bf

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 323
    if-eqz v0, :cond_3

    .line 324
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f0802c0

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 325
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/common/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/common/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/common/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/common/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 321
    .end local v0           #hasTextTitle:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 331
    .restart local v0       #hasTextTitle:Z
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 333
    iget-object v4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 334
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 335
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private setupView()V
    .locals 13

    .prologue
    .line 237
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f080268

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 238
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/common/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 240
    const/4 v4, 0x1

    .line 241
    .local v4, hasButtons:Z
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/AlertController;->setupButtons()Z

    move-result v4

    .line 243
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802bd

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 244
    .local v1, topPanel:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/baidu/home2/R$styleable;->AlertDialog:[I

    const v11, 0x7f010050

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 246
    .local v5, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    .line 247
    .local v6, hasTitle:Z
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/common/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 249
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802c4

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 250
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 251
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_0
    const/4 v3, 0x0

    .line 255
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802c2

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 257
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802c3

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 258
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 260
    iget v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingLeft:I

    iget v9, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingTop:I

    iget v10, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingRight:I

    iget v11, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    move-object v0, p0

    .line 278
    invoke-direct/range {v0 .. v7}, Lcom/baidu/launcher/ui/common/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 280
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    return-void

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x7f0802c2

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 181
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 183
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/baidu/launcher/ui/common/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 188
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/AlertController;->setupView()V

    .line 189
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 135
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 136
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 139
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 143
    iput-object p4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 159
    :goto_0
    return-void

    .line 147
    :pswitch_1
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 148
    iput-object p4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 152
    :pswitch_2
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 153
    iput-object p4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 139
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
    .line 233
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 234
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 705
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 709
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 226
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mView:Landroid/view/View;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingSpecified:Z

    .line 198
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
    .line 206
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController;->mView:Landroid/view/View;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingSpecified:Z

    .line 208
    iput p2, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingLeft:I

    .line 209
    iput p3, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingTop:I

    .line 210
    iput p4, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingRight:I

    .line 211
    iput p5, p0, Lcom/baidu/launcher/ui/common/AlertController;->mViewSpacingBottom:I

    .line 212
    return-void
.end method
