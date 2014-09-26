.class public Lcom/baidu/launcher/ui/folder/FillFolder;
.super Landroid/app/Activity;
.source "FillFolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sTargetFolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/data/item/IFolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEditBtn:Landroid/widget/ImageView;

.field private mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

.field private mFolderHint:Ljava/lang/String;

.field private mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

.field private mFolderTitleLayout:Landroid/view/View;

.field private mFolerName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsEdittingTitle:Z

.field private mSelectedCount:I

.field private mTotalItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/folder/FillFolder;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mHandler:Landroid/os/Handler;

    .line 60
    iput v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mTotalItemCount:I

    .line 61
    iput v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mSelectedCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/folder/FillFolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mIsEdittingTitle:Z

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/launcher/ui/folder/FillFolder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mIsEdittingTitle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/folder/FillFolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/folder/FillFolder;)Lcom/baidu/launcher/ui/folder/FolderEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/folder/FillFolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mEditBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/folder/FillFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->showIME()V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/folder/FillFolder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/folder/FillFolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/folder/FillFolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/folder/FillFolder;->buildTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    iget v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mSelectedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 333
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    iget v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mTotalItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 335
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private changeTitle()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderHint:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/folder/FillFolder;->buildTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolerName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/folder/FillFolder;->buildTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private doFillFolder()V
    .locals 3

    .prologue
    .line 340
    sget-object v2, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 341
    .local v0, folder:Lcom/baidu/launcher/data/item/IFolderInfo;
    if-eqz v0, :cond_3

    .line 343
    instance-of v2, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 344
    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v2}, Lcom/baidu/launcher/data/item/ListFolderInfo;->removeAllDisplayItem()V

    .line 349
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolerName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->setTitle(Ljava/lang/String;)V

    .line 350
    invoke-interface {v0}, Lcom/baidu/launcher/data/item/IFolderInfo;->getItemType()I

    move-result v1

    .line 351
    .local v1, itemType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 352
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->fillHomeFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V

    .line 357
    :cond_0
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/folder/FillFolder;->setResult(I)V

    .line 361
    .end local v1           #itemType:I
    :goto_2
    return-void

    .line 346
    :cond_1
    invoke-interface {v0}, Lcom/baidu/launcher/data/item/IFolderInfo;->removeAll()V

    goto :goto_0

    .line 353
    .restart local v1       #itemType:I
    :cond_2
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 354
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->fillListFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V

    goto :goto_1

    .line 359
    .end local v1           #itemType:I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/folder/FillFolder;->setResult(I)V

    goto :goto_2
.end method

.method private fillHomeFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 7
    .parameter "folder"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, index:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getAllItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;

    .line 381
    .local v3, item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    iget-boolean v5, v3, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->selected:Z

    if-eqz v5, :cond_0

    .line 383
    iget-object v5, v3, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->app:Lcom/baidu/launcher/data/item/BaseItemInfo;

    instance-of v5, v5, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v5, :cond_1

    .line 384
    new-instance v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v5, v3, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->app:Lcom/baidu/launcher/data/item/BaseItemInfo;

    check-cast v5, Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct {v4, v5}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 388
    .local v4, shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :goto_1
    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->id:J

    .line 389
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    iput v1, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    .line 390
    invoke-interface {p1}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->container:J

    .line 391
    invoke-interface {p1, v4}, Lcom/baidu/launcher/data/item/IFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 386
    .end local v4           #shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_1
    iget-object v4, v3, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->app:Lcom/baidu/launcher/data/item/BaseItemInfo;

    check-cast v4, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .restart local v4       #shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    goto :goto_1

    .line 394
    .end local v3           #item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    .end local v4           #shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v5

    check-cast p1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .end local p1
    invoke-virtual {v5, p1}, Lcom/baidu/launcher/data/HomeDataManager;->updateFolderContentsInDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;)V

    .line 395
    return-void
.end method

.method private fillListFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 9
    .parameter "folder"

    .prologue
    const-wide/16 v7, -0x3e8

    .line 364
    const/4 v2, 0x0

    .line 365
    .local v2, index:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getAllItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;

    .line 366
    .local v4, item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    iget-object v0, v4, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->app:Lcom/baidu/launcher/data/item/BaseItemInfo;

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 367
    .local v0, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v5, v4, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->selected:Z

    if-eqz v5, :cond_1

    .line 368
    invoke-interface {p1}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 369
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iput v2, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 370
    invoke-interface {p1, v0}, Lcom/baidu/launcher/data/item/IFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 371
    :cond_1
    iget-wide v5, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 372
    iput-wide v7, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    goto :goto_0

    .line 375
    .end local v0           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v4           #item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v5

    check-cast p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local p1
    invoke-virtual {v5, p1}, Lcom/baidu/launcher/data/AppsDataManager;->updateFolderContentsInDatabase(Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    .line 376
    return-void
.end method

.method private hideIME()V
    .locals 3

    .prologue
    .line 236
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/folder/FillFolder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 237
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 238
    return-void
.end method

.method public static setTarget(Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 67
    sget-object v1, Lcom/baidu/launcher/ui/folder/FillFolder;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 71
    :cond_0
    if-eqz p0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    .line 74
    :cond_1
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showIME()V
    .locals 3

    .prologue
    .line 231
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/folder/FillFolder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 232
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 233
    return-void
.end method


# virtual methods
.method protected doneEditTitle()V
    .locals 2

    .prologue
    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mIsEdittingTitle:Z

    .line 221
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->hideIME()V

    .line 222
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/folder/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, newName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolerName:Ljava/lang/String;

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->changeTitle()V

    .line 227
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitleLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 228
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 282
    sget-object v0, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 285
    :cond_0
    return-void
.end method

.method protected onAppsLoaded()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getAllItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mTotalItemCount:I

    .line 215
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->changeTitle()V

    .line 216
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 289
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mIsEdittingTitle:Z

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->doneEditTitle()V

    .line 318
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 294
    .local v0, id:I
    const v2, 0x7f08012f

    if-ne v0, v2, :cond_2

    .line 295
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->doFillFolder()V

    .line 296
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->finish()V

    goto :goto_0

    .line 297
    :cond_2
    const v2, 0x7f080130

    if-ne v0, v2, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->finish()V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mEditBtn:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderEditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderEditText;->requestFocus()Z

    .line 302
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->showIME()V

    goto :goto_0

    .line 304
    :cond_4
    instance-of v2, p1, Lcom/baidu/launcher/ui/folder/FillFolderTextView;

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;

    .line 306
    .local v1, item:Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;
    iget-boolean v2, v1, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->selected:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->selected:Z

    .line 307
    check-cast p1, Lcom/baidu/launcher/ui/folder/FillFolderTextView;

    .end local p1
    iget-boolean v2, v1, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->selected:Z

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/folder/FillFolderTextView;->setItemSelected(Z)V

    .line 308
    iget-boolean v2, v1, Lcom/baidu/launcher/ui/folder/FillFolderView$SelectItem;->selected:Z

    if-eqz v2, :cond_7

    .line 309
    iget v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mSelectedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mSelectedCount:I

    .line 313
    :goto_2
    iget v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mTotalItemCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 314
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FillFolderView;->getAllItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mTotalItemCount:I

    .line 316
    :cond_5
    invoke-direct {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->changeTitle()V

    goto :goto_0

    .line 306
    .restart local p1
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 311
    .end local p1
    :cond_7
    iget v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mSelectedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mSelectedCount:I

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget-object v5, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->finish()V

    .line 188
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-boolean v5, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/folder/FillFolder;->setRequestedOrientation(I)V

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderHint:Ljava/lang/String;

    .line 92
    const v5, 0x7f030056

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/folder/FillFolder;->setContentView(I)V

    .line 93
    sget-object v5, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 95
    .local v2, folder:Lcom/baidu/launcher/data/item/IFolderInfo;
    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolerName:Ljava/lang/String;

    .line 97
    const v5, 0x7f08012a

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/folder/FillFolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/folder/FolderEditText;

    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    .line 98
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/folder/FolderEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitleLayout:Landroid/view/View;

    .line 100
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitleLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 102
    const v5, 0x7f08012d

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/folder/FillFolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/Indicator;

    .line 103
    .local v3, indicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    const v5, 0x7f08012c

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/folder/FillFolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/folder/FillFolderView;

    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    .line 104
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v5, v3}, Lcom/baidu/launcher/ui/folder/FillFolderView;->setIndicator(Lcom/baidu/launcher/ui/homeview/Indicator;)V

    .line 105
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v5, p0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v5, 0x7f08012b

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/folder/FillFolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mEditBtn:Landroid/widget/ImageView;

    .line 108
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mEditBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v5, 0x7f08012f

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/folder/FillFolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 111
    .local v4, okBtn:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v5, 0x7f080130

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/folder/FillFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, cancelBtn:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setHapticFeedbackEnabled(Z)V

    .line 116
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v5, p0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v5, v8}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 118
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    iget-object v6, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/folder/FolderEditText;->getInputType()I

    move-result v6

    const/high16 v7, 0x8

    or-int/2addr v6, v7

    or-int/lit16 v6, v6, 0x2000

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setInputType(I)V

    .line 120
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    new-instance v6, Lcom/baidu/launcher/ui/folder/FillFolder$1;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/ui/folder/FillFolder$1;-><init>(Lcom/baidu/launcher/ui/folder/FillFolder;)V

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    new-instance v6, Lcom/baidu/launcher/ui/folder/FillFolder$2;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/ui/folder/FillFolder$2;-><init>(Lcom/baidu/launcher/ui/folder/FillFolder;)V

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 150
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    new-instance v6, Lcom/baidu/launcher/ui/folder/FillFolder$3;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/ui/folder/FillFolder$3;-><init>(Lcom/baidu/launcher/ui/folder/FillFolder;)V

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/folder/FolderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 186
    .local v1, content:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mSelectedCount:I

    .line 187
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getItemType()I

    move-result v6

    invoke-virtual {v5, v1, v6, v8}, Lcom/baidu/launcher/ui/folder/FillFolderView;->updateApps(Ljava/util/ArrayList;IZ)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 270
    sget-object v0, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFillFolderView:Lcom/baidu/launcher/ui/folder/FillFolderView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FillFolderView;->release()V

    .line 277
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 206
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/FillFolder;->doneEditTitle()V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 264
    const/4 v0, 0x0

    const v1, 0x7f040020

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/folder/FillFolder;->overridePendingTransition(II)V

    .line 265
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 243
    const v0, 0x7f04001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/folder/FillFolder;->overridePendingTransition(II)V

    .line 244
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 249
    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitleLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 250
    const/4 v0, 0x1

    .line 251
    .local v0, enable:Z
    sget-object v3, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FillFolder;->mFolderTitle:Lcom/baidu/launcher/ui/folder/FolderEditText;

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/folder/FolderEditText;->setEnabled(Z)V

    .line 259
    return-void

    .line 254
    :cond_0
    sget-object v3, Lcom/baidu/launcher/ui/folder/FillFolder;->sTargetFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 255
    .local v1, folder:Lcom/baidu/launcher/data/item/IFolderInfo;
    if-nez v1, :cond_1

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/baidu/launcher/data/item/IFolderInfo;->isPreset()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public sendStatusBarTransparentBroadcast(Z)V
    .locals 2
    .parameter "transparent"

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.statusbar.ACTION_TRANSPARENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "transparent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method public setStatusBarTransparent(Z)V
    .locals 2
    .parameter "transparent"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.bulletin.monitor.release"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/FillFolder;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/folder/FillFolder;->sendStatusBarTransparentBroadcast(Z)V

    .line 196
    return-void
.end method
