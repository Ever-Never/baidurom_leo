.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;
.super Landroid/app/Activity;
.source "PopupActivity.java"


# static fields
.field public static final MODE_EDITMODE:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field private static final NO_PROGRESS_ANIMATION:I = 0x0

.field private static final PROGRESS_ANIMATION_DOWN:I = 0x1

.field private static final PROGRESS_ANIMATION_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PopupActivity"


# instance fields
.field private mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCleanAllOperationOver:Z

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mLockedAppCounter:I

.field private mMemoryBar:Landroid/widget/ImageView;

.field private mMemoryFreeSize:I

.field private mMemoryUsedSize:I

.field private mMode:I

.field private mModeBtn:Landroid/widget/ImageView;

.field private mOneKeyBtn:Landroid/widget/ImageButton;

.field private mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

.field private mProgressAnimationStatus:I

.field private mProgressBitmap:Landroid/graphics/Bitmap;

.field private mProgressDeltaInAnimation:I

.field private mProgressInAnimation:I

.field private mProgressLayout:Landroid/view/View;

.field private mProgressPanel:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemainText:Landroid/widget/TextView;

.field private mShowPercentTips:Z

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTipsText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mUsedText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMode:I

    .line 44
    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mLockedAppCounter:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 80
    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressDeltaInAnimation:I

    .line 84
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mCleanAllOperationOver:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mShowPercentTips:Z

    .line 87
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    .line 595
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateBarinAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateWidgetBar()V

    return-void
.end method

.method static synthetic access$1500(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->changeMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->processOneKeyClear()V

    return-void
.end method

.method static synthetic access$1700(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryBar(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mShowPercentTips:Z

    return p1
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryTips()V

    return-void
.end method

.method static synthetic access$502(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mCleanAllOperationOver:Z

    return p1
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    return v0
.end method

.method static synthetic access$802(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateUI()V

    return-void
.end method

.method private changeLockedModeTips()V
    .locals 4

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->loadLockedAppCount()V

    .line 398
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mLockedAppCounter:I

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mTitleText:Landroid/widget/TextView;

    const v1, 0x7f0c014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mTitleText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mLockedAppCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private changeMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 297
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateUI()V

    .line 298
    return-void

    .line 281
    :pswitch_0
    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMode:I

    .line 282
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mModeBtn:Landroid/widget/ImageView;

    const v1, 0x7f0202ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->changeLockedModeTips()V

    .line 284
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOneKeyBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 288
    :pswitch_1
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMode:I

    .line 289
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mModeBtn:Landroid/widget/ImageView;

    const v1, 0x7f0202e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mTitleText:Landroid/widget/TextView;

    const v1, 0x7f0c014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOneKeyBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 292
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->lockAppList()V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadLockedAppCount()V
    .locals 3

    .prologue
    .line 387
    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mLockedAppCounter:I

    .line 388
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    .line 389
    .local v0, appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->isLocked()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mLockedAppCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mLockedAppCounter:I

    goto :goto_0

    .line 394
    .end local v0           #appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    :cond_1
    return-void
.end method

.method private lockAppList()V
    .locals 4

    .prologue
    .line 430
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    .line 431
    .local v0, app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->isLocked()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->getMergedItem()Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->lockApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->getMergedItem()Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->unlockApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    goto :goto_0

    .line 437
    .end local v0           #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 438
    return-void
.end method

.method private processOneKeyClear()V
    .locals 4

    .prologue
    const/16 v3, 0x3ed

    .line 361
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2714

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isSystemClean()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mTipsText:Landroid/widget/TextView;

    const v2, 0x7f0c0155

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 369
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 372
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mCleanAllOperationOver:Z

    .line 373
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->resetSystemCleanDelayed()V

    .line 374
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->cleanAllApps(Landroid/os/Handler;)V

    .line 375
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->startProgressAnimation()V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;

    .line 199
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    .line 201
    const v0, 0x7f08026e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mTitleText:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f08026f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mModeBtn:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressPanel:Landroid/view/View;

    .line 204
    const v0, 0x7f080269

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mGridView:Landroid/widget/GridView;

    .line 206
    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryBar:Landroid/widget/ImageView;

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryBar:Landroid/widget/ImageView;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 209
    const v0, 0x7f08026d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOneKeyBtn:Landroid/widget/ImageButton;

    .line 210
    const v0, 0x7f080277

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mTipsText:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f08027b

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mRemainText:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mUsedText:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f080278

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressLayout:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mModeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOneKeyBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void
.end method

.method private startProgressAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 551
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 552
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x2714

    iput v1, v0, Landroid/os/Message;->what:I

    .line 553
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 555
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOneKeyBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 556
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    .line 560
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    .line 561
    return-void
.end method

.method private stopProgressAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 565
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getAppslistFromProcessManager(Landroid/os/Handler;)V

    .line 566
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2714

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOneKeyBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 571
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOneKeyBtn:Landroid/widget/ImageButton;

    const v3, 0x7f0202dd

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 573
    iput v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    .line 574
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mShowPercentTips:Z

    .line 576
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryTips()V

    .line 578
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getReleasedSize()I

    move-result v0

    .line 580
    .local v0, memorySizeReleased:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 581
    if-nez v0, :cond_0

    .line 582
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mStringBuilder:Ljava/lang/StringBuilder;

    const v3, 0x7f0c0154

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mTipsText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 591
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3ed

    iput v2, v1, Landroid/os/Message;->what:I

    .line 592
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 593
    return-void

    .line 584
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0152

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c0153

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private toggleAppLocked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    .line 415
    .local v0, appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->isLocked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v1, 0x7f0202b2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->setLocked(Ljava/lang/Boolean;)V

    .line 422
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->changeLockedModeTips()V

    .line 424
    return-void

    .line 419
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v1, 0x7f0202b3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->setLocked(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private updateBarinAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 480
    const/4 v1, 0x1

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    if-ne v1, v2, :cond_2

    .line 482
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressDeltaInAnimation:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    .line 484
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    if-gez v1, :cond_0

    .line 485
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    .line 486
    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    .line 489
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateTipsText(I)V

    .line 490
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryBar(I)V

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    if-ne v3, v1, :cond_1

    .line 494
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressDeltaInAnimation:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    .line 497
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    .line 498
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v1

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    .line 500
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 503
    .local v0, newProgress:I
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    if-le v1, v0, :cond_3

    .line 504
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    .line 506
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mCleanAllOperationOver:Z

    if-eqz v1, :cond_3

    .line 507
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->stopProgressAnimation()V

    goto :goto_0

    .line 512
    :cond_3
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateTipsText(I)V

    .line 513
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressInAnimation:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryBar(I)V

    goto :goto_0
.end method

.method private updateMemoryBar(I)V
    .locals 3
    .parameter "progress"

    .prologue
    const v2, 0x7f0202f1

    .line 518
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 522
    :cond_0
    const/16 v1, 0x50

    if-ge p1, v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 536
    .local v0, width:I
    if-eqz v0, :cond_4

    .line 537
    int-to-float v1, p1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 538
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 543
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 544
    return-void

    .line 524
    .end local v0           #width:I
    :cond_1
    const/16 v1, 0x5a

    if-ge p1, v1, :cond_2

    .line 525
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryBar:Landroid/widget/ImageView;

    const v2, 0x7f0202f2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryBar:Landroid/widget/ImageView;

    const v2, 0x7f0202f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 538
    .restart local v0       #width:I
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_1

    .line 540
    :cond_4
    const/16 v0, 0xfa

    goto :goto_1
.end method

.method private updateMemoryTips()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 451
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    if-eqz v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mUsedText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mRemainText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 464
    .local v1, remainWidth:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mRemainText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mShowPercentTips:Z

    if-eqz v2, :cond_0

    .line 468
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    add-int/2addr v3, v4

    div-int v0, v2, v3

    .line 469
    .local v0, progress:I
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateTipsText(I)V

    goto :goto_0
.end method

.method private updateTipsText(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0151

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mTipsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    return-void
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateWidgetBar()V

    .line 353
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->setList(Ljava/util/List;)V

    .line 354
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 355
    return-void
.end method

.method private updateWidgetBar()V
    .locals 5

    .prologue
    .line 441
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v1

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    .line 443
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    .line 445
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 446
    .local v0, rate:I
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryBar(I)V

    .line 447
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryTips()V

    .line 448
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 263
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 264
    .local v0, dialogBounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->finish()V

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMode:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const v3, 0x7f0300c2

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->setContentView(I)V

    .line 171
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->setupViews()V

    .line 173
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    .line 175
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 176
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 177
    const-string v3, "com.baidu.launcher.memoryUsedSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    .line 178
    const-string v3, "com.baidu.launcher.memoryFreeSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    .line 185
    :goto_0
    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    add-int/2addr v4, v5

    div-int v2, v3, v4

    .line 186
    .local v2, rate:I
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryBar(I)V

    .line 187
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryTips()V

    .line 192
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.baidu.launcher.action.UPDATE_WIDGET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void

    .line 180
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #rate:I
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I

    .line 182
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->saveLockApps()V

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I

    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 259
    return-void
.end method

.method public onItemClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    .line 305
    .local v1, appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 306
    .local v2, gridItem:Landroid/view/View;
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 309
    :pswitch_0
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->getMergedItem()Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    if-eqz v4, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04001a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 313
    .local v3, shake:Landroid/view/animation/Animation;
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 316
    .end local v3           #shake:Landroid/view/animation/Animation;
    :cond_0
    const-string v4, "PopupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUI delete:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->getMergedItem()Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->cleanOneApp(Landroid/os/Handler;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    .line 320
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04000f

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 322
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 340
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 344
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->toggleAppLocked(Landroid/view/View;)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mCleanAllOperationOver:Z

    .line 251
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 241
    const/4 v0, 0x1

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMode:I

    if-eq v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getAppslistFromProcessManager(Landroid/os/Handler;)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateUI()V

    .line 245
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->finish()V

    .line 276
    return-void
.end method
