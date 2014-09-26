.class public Lcom/baidu/launcher/ui/folder/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DragSource;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final MAX_FOLDER_TITLE_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Folder"


# instance fields
.field private folderTitleLayout:Landroid/view/View;

.field private isEdittingTitle:Z

.field protected mContent:Landroid/widget/GridView;

.field protected mContext:Landroid/content/Context;

.field protected mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

.field protected mDragView:Landroid/view/View;

.field protected mFolderEditBtn:Landroid/widget/ImageView;

.field protected mFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

.field private mFolderListener:Lcom/baidu/launcher/ui/folder/IFolderListener;

.field protected mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

.field protected mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

.field protected mIsDragging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderListener:Lcom/baidu/launcher/ui/folder/IFolderListener;

    .line 114
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 116
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/launcher/ui/folder/Folder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/folder/Folder;->isEdittingTitle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/folder/Folder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/Folder;->showIME()V

    return-void
.end method

.method private hideIME()V
    .locals 3

    .prologue
    .line 499
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 500
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 501
    return-void
.end method

.method private showIME()V
    .locals 3

    .prologue
    .line 494
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 495
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 496
    return-void
.end method


# virtual methods
.method public bind(Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 4
    .parameter "icon"
    .parameter "info"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    .line 523
    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 525
    invoke-interface {p2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :goto_0
    invoke-interface {p2}, Lcom/baidu/launcher/data/item/IFolderInfo;->isPreset()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 531
    .local v0, enable:Z
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setEnabled(Z)V

    .line 533
    return-void

    .line 528
    .end local v0           #enable:Z
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-interface {p2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 530
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public checkFolderTitleChanged(Z)V
    .locals 5
    .parameter "save"

    .prologue
    .line 504
    if-eqz p1, :cond_1

    .line 505
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, newName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v3}, Lcom/baidu/launcher/data/item/IFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 519
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #newName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 511
    .restart local v0       #name:Ljava/lang/String;
    .restart local v1       #newName:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2, v1}, Lcom/baidu/launcher/data/item/IFolderInfo;->setTitle(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/baidu/launcher/data/item/IFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/baidu/launcher/ui/folder/FolderHolder;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    instance-of v2, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v2, :cond_3

    .line 514
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    check-cast v2, Lcom/baidu/launcher/data/item/HomeItemInfo;

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    goto :goto_0

    .line 515
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    instance-of v2, v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_0
.end method

.method public doneEditTitle(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/Folder;->hideIME()V

    .line 487
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/folder/Folder;->checkFolderTitleChanged(Z)V

    .line 488
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->folderTitleLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->isEdittingTitle:Z

    .line 490
    return-void
.end method

.method public getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    return-object v0
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->isEdittingTitle:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 454
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderEditBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 396
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->isEdittingTitle:Z

    if-eqz v0, :cond_1

    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/Folder;->doneEditTitle(Z)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 0
    .parameter "target"
    .parameter "success"

    .prologue
    .line 435
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 211
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/Folder;->doneEditTitle(Z)V

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 128
    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContent:Landroid/widget/GridView;

    .line 129
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHapticFeedbackEnabled(Z)V

    .line 133
    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->folderTitleLayout:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->folderTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 136
    const v0, 0x7f08021d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/folder/FolderEditText;

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    .line 137
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setFolder(Lcom/baidu/launcher/ui/folder/Folder;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setHapticFeedbackEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setInputType(I)V

    .line 145
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    new-instance v1, Lcom/baidu/launcher/ui/folder/Folder$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/Folder$1;-><init>(Lcom/baidu/launcher/ui/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    new-instance v1, Lcom/baidu/launcher/ui/folder/Folder$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/Folder$2;-><init>(Lcom/baidu/launcher/ui/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 174
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    new-instance v1, Lcom/baidu/launcher/ui/folder/Folder$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/Folder$3;-><init>(Lcom/baidu/launcher/ui/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    const v0, 0x7f08021e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderEditBtn:Landroid/widget/ImageView;

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderEditBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 26
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 221
    .local v16, info:Lcom/baidu/launcher/data/item/BaseItemInfo;
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_5

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/baidu/launcher/ui/common/ActionTextView;

    if-eqz v3, :cond_5

    move-object/from16 v22, p2

    .line 223
    check-cast v22, Lcom/baidu/launcher/ui/common/ActionTextView;

    .line 224
    .local v22, view:Lcom/baidu/launcher/ui/common/ActionTextView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 225
    .local v17, itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v3}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v3}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 392
    .end local v17           #itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v22           #view:Lcom/baidu/launcher/ui/common/ActionTextView;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v17       #itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    .restart local v22       #view:Lcom/baidu/launcher/ui/common/ActionTextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v3}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->getAppsView()Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v13

    .line 232
    .local v13, appsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateBackupHideMap(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 233
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    .line 234
    const/4 v3, 0x2

    new-array v8, v3, [F

    const/4 v9, 0x0

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-eqz v3, :cond_3

    const v3, 0x3e99999a

    :goto_2
    aput v3, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f80

    :goto_3
    aput v3, v8, v9

    invoke-static {v8}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v11

    .line 236
    .local v11, anim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    const-wide/16 v8, 0x7d

    invoke-virtual {v11, v8, v9}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 237
    invoke-virtual/range {v22 .. v22}, Lcom/baidu/launcher/ui/common/ActionTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v8, 0x1

    aget-object v15, v3, v8

    check-cast v15, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    .line 238
    .local v15, icon:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    new-instance v3, Lcom/baidu/launcher/ui/folder/Folder$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Lcom/baidu/launcher/ui/folder/Folder$4;-><init>(Lcom/baidu/launcher/ui/folder/Folder;Lcom/baidu/launcher/ui/common/ActionTextView;Lcom/baidu/launcher/data/item/ListItemInfo;)V

    invoke-virtual {v11, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 245
    new-instance v3, Lcom/baidu/launcher/ui/folder/Folder$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1, v15}, Lcom/baidu/launcher/ui/folder/Folder$5;-><init>(Lcom/baidu/launcher/ui/folder/Folder;Lcom/baidu/launcher/ui/common/ActionTextView;Lcom/baidu/launcher/ui/common/FastBitmapDrawable;)V

    invoke-virtual {v11, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 261
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateHideStatus(Z)V

    goto :goto_0

    .line 233
    .end local v11           #anim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .end local v15           #icon:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 234
    :cond_3
    const/high16 v3, 0x3f80

    goto :goto_2

    :cond_4
    const v3, 0x3e99999a

    goto :goto_3

    .line 266
    .end local v13           #appsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    .end local v17           #itemInfo:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v22           #view:Lcom/baidu/launcher/ui/common/ActionTextView;
    :cond_5
    if-nez v16, :cond_6

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v3}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v23

    .line 268
    .local v23, viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->requestFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V

    goto/16 :goto_0

    .line 270
    .end local v23           #viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    :cond_6
    const/16 v20, 0x1

    .line 272
    .local v20, presetRun:Z
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isPreset:Z

    if-eqz v3, :cond_a

    .line 273
    const-string v3, "Folder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preset status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    iget v9, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/baidu/launcher/business/BusinessUtil;->BusinessIconClick(Landroid/content/Context;Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v20

    .line 328
    :cond_7
    :goto_4
    if-eqz v20, :cond_0

    .line 330
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 331
    .local v19, pos:[I
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 333
    const/4 v4, 0x0

    .line 334
    .local v4, intent:Landroid/content/Intent;
    const/4 v5, -0x1

    .line 335
    .local v5, screen:I
    const/4 v6, -0x1

    .line 336
    .local v6, cellX:I
    const/4 v7, -0x1

    .line 337
    .local v7, cellY:I
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v3, :cond_e

    move-object/from16 v3, v16

    .line 338
    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v4, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v3, v16

    .line 339
    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v5, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    move-object/from16 v3, v16

    .line 340
    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v6, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    move-object/from16 v3, v16

    .line 341
    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v7, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    .line 345
    :cond_8
    :goto_5
    if-eqz v4, :cond_0

    .line 348
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v3, :cond_f

    .line 349
    if-eqz v4, :cond_9

    .line 350
    new-instance v3, Ljava/lang/Thread;

    new-instance v8, Lcom/baidu/launcher/ui/folder/Folder$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1}, Lcom/baidu/launcher/ui/folder/Folder$6;-><init>(Lcom/baidu/launcher/ui/folder/Folder;Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 376
    :cond_9
    :goto_6
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v19, v8

    const/4 v9, 0x1

    aget v9, v19, v9

    const/4 v10, 0x0

    aget v10, v19, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v24

    add-int v10, v10, v24

    const/16 v24, 0x1

    aget v24, v19, v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    invoke-direct {v3, v8, v9, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/baidu/launcher/app/Launcher;

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 381
    .local v14, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_10

    const-string v3, ""

    move-object v8, v3

    :goto_7
    if-nez v14, :cond_11

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-static {v9, v8, v3}, Lcom/baidu/launcher/ubc/UBC;->reportIconFolderOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static/range {v3 .. v10}, Lcom/baidu/launcher/ubc/UBCMetric;->startAppFromFolder(Landroid/content/Context;Landroid/content/Intent;IIIIII)V

    goto/16 :goto_0

    .line 276
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #screen:I
    .end local v6           #cellX:I
    .end local v7           #cellY:I
    .end local v14           #cn:Landroid/content/ComponentName;
    .end local v19           #pos:[I
    :cond_a
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessTableID:J

    const-wide/16 v24, 0x0

    cmp-long v3, v8, v24

    if-ltz v3, :cond_7

    move-object/from16 v0, v16

    iget v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->status:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_7

    .line 278
    const/16 v18, 0x0

    .line 280
    .local v18, packageName:Ljava/lang/String;
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v3, :cond_c

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v8

    move-object/from16 v3, v16

    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    const/4 v9, 0x4

    invoke-virtual {v8, v3, v9}, Lcom/baidu/launcher/data/HomeDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/HomeItemInfo;I)V

    .line 285
    const-wide/16 v8, 0x1

    move-object/from16 v0, v16

    iput-wide v8, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->clickCount:J

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v8

    move-object/from16 v3, v16

    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-virtual {v8, v3}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    move-object/from16 v21, v16

    .line 289
    check-cast v21, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 290
    .local v21, shortcurInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    const-wide/16 v8, 0x1

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->clickCount:J

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 294
    if-eqz v21, :cond_b

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_b

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 298
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 319
    .end local v21           #shortcurInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_b
    :goto_9
    if-eqz v18, :cond_d

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    iget-wide v9, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessTableID:J

    move-object/from16 v0, v18

    invoke-static {v3, v0, v8, v9, v10}, Lcom/baidu/launcher/business/BusinessUtil;->BusinessIconFirstRun(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 301
    :cond_c
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_b

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    move-object/from16 v3, v16

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    const/4 v9, 0x4

    invoke-virtual {v8, v3, v9}, Lcom/baidu/launcher/data/AppsDataManager;->onBusinessAppStateChange(Lcom/baidu/launcher/data/item/ListItemInfo;I)V

    .line 306
    const-wide/16 v8, 0x1

    move-object/from16 v0, v16

    iput-wide v8, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->clickCount:J

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    move-object/from16 v3, v16

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-virtual {v8, v3}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    move-object/from16 v12, v16

    .line 310
    check-cast v12, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 312
    .local v12, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    if-eqz v12, :cond_b

    iget-object v3, v12, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_b

    iget-object v3, v12, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 315
    iget-object v3, v12, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    goto :goto_9

    .line 324
    .end local v12           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_d
    const-string v3, "Folder"

    const-string v8, "item click package name null"

    invoke-static {v3, v8}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 342
    .end local v18           #packageName:Ljava/lang/String;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #screen:I
    .restart local v6       #cellX:I
    .restart local v7       #cellY:I
    .restart local v19       #pos:[I
    :cond_e
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_8

    move-object/from16 v3, v16

    .line 343
    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v4, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 370
    :cond_f
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_9

    .line 371
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->clickCount:J

    const-wide/16 v24, 0x1

    add-long v8, v8, v24

    move-object/from16 v0, v16

    iput-wide v8, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->clickCount:J

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    move-object/from16 v3, v16

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-virtual {v8, v3}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto/16 :goto_6

    .line 381
    .restart local v14       #cn:Landroid/content/ComponentName;
    :cond_10
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 405
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v1, v4, :cond_0

    move v4, v0

    .line 422
    :goto_0
    return v4

    .line 408
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    move v4, v0

    .line 409
    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 413
    .local v3, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    if-eqz v3, :cond_2

    .line 414
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v8

    .line 415
    .local v8, viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v5

    move-object v1, p2

    move-object v2, p0

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    .line 416
    iput-object v3, p0, Lcom/baidu/launcher/ui/folder/Folder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 417
    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/Folder;->mDragView:Landroid/view/View;

    .line 418
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/folder/Folder;->mIsDragging:Z

    .line 419
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/Folder;->startDrag()V

    goto :goto_0

    .end local v8           #viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    :cond_2
    move v4, v0

    .line 422
    goto :goto_0
.end method

.method public onOpen(Z)V
    .locals 1
    .parameter "edit"

    .prologue
    .line 466
    if-eqz p1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->requestFocus()Z

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->folderTitleLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 122
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 450
    return-void
.end method

.method public setDragController(Lcom/baidu/launcher/ui/dragdrop/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 432
    return-void
.end method

.method public setFolderListener(Lcom/baidu/launcher/ui/folder/IFolderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderListener:Lcom/baidu/launcher/ui/folder/IFolderListener;

    .line 560
    return-void
.end method

.method public showOnDropFailureAnimation(Ljava/lang/Object;[I)Z
    .locals 1
    .parameter "mDragInfo"
    .parameter "mOriginatorXY"

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method protected startDrag()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/folder/Folder;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_0
    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderListener:Lcom/baidu/launcher/ui/folder/IFolderListener;

    .line 539
    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    .line 540
    iput-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    goto :goto_0
.end method
