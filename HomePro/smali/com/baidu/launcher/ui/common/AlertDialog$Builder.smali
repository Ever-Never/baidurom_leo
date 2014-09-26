.class public Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    .line 235
    return-void
.end method


# virtual methods
.method public create()Lcom/baidu/launcher/ui/common/AlertDialog;
    .locals 3

    .prologue
    .line 746
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertDialog;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 747
    .local v0, dialog:Lcom/baidu/launcher/ui/common/AlertDialog;
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    #getter for: Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;
    invoke-static {v0}, Lcom/baidu/launcher/ui/common/AlertDialog;->access$000(Lcom/baidu/launcher/ui/common/AlertDialog;)Lcom/baidu/launcher/ui/common/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->apply(Lcom/baidu/launcher/ui/common/AlertController;)V

    .line 748
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/AlertDialog;->setCancelable(Z)V

    .line 749
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 750
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 753
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 458
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 459
    return-object p0
.end method

.method public setCancelable(Z)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCancelable:Z

    .line 398
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 477
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 479
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 270
    return-object p0
.end method

.method public setIcon(I)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIconId:I

    .line 300
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 310
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 0
    .parameter "useInverseBackground"

    .prologue
    .line 727
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 430
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 431
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 442
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 443
    return-object p0
.end method

.method public setMessage(I)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 280
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 290
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 503
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 504
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCheckedItems:[Z

    .line 505
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 506
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 557
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p4, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 558
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 561
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 529
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 530
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCheckedItems:[Z

    .line 531
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 532
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 348
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 349
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 361
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 362
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 374
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 375
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 387
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 388
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 409
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 668
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 419
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 322
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 323
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 335
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 336
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 735
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 582
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 583
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCheckedItem:I

    .line 584
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 585
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 607
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p4, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 608
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCheckedItem:I

    .line 609
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 611
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 652
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 653
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCheckedItem:I

    .line 654
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 655
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 630
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 631
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mCheckedItem:I

    .line 632
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 633
    return-object p0
.end method

.method public setTitle(I)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, v1, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 244
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 254
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 681
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 682
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput-object p1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 710
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 711
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p2, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 712
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p3, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingTop:I

    .line 713
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p4, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingRight:I

    .line 714
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->P:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iput p5, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 715
    return-object p0
.end method

.method public show()Lcom/baidu/launcher/ui/common/AlertDialog;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/AlertDialog$Builder;->create()Lcom/baidu/launcher/ui/common/AlertDialog;

    move-result-object v0

    .line 762
    .local v0, dialog:Lcom/baidu/launcher/ui/common/AlertDialog;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/AlertDialog;->show()V

    .line 763
    return-object v0
.end method
