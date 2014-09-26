.class public Lcom/baidu/bulletin/ui/BulletinLayout;
.super Lcom/baidu/launcher/ui/homeview/CellLayout;
.source "BulletinLayout.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction;
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Launcher.BulletinLayout"

.field public static sIsOpenTestEmpty:Z


# instance fields
.field private emptyTestButton:Landroid/widget/Button;

.field private mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

.field private mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

.field private mChannelListAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

.field private mChannleView:Landroid/view/View;

.field private mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

.field private mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

.field private mGuideView:Landroid/view/View;

.field private mHistoryTodayComponent:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

.field private mIsInOpWebView:Z

.field private mIsInSetting:Z

.field private mNavigator:Lcom/baidu/bulletin/ui/navigator/Navigator;

.field private mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

.field private mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

.field private mTestAutoSyncerButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/bulletin/ui/BulletinLayout;->sIsOpenTestEmpty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bulletin/ui/BulletinLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/homeview/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 528
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mIsInSetting:Z

    .line 553
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mIsInOpWebView:Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/BulletinLayout;)Lcom/inveno/newpiflow/widget/PiMainView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/BulletinLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    return-object v0
.end method

.method private addView(Landroid/view/View;IIII)V
    .locals 2
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 403
    .local v0, params:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .end local v0           #params:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    invoke-direct {v0, p2, p3, p4, p5}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;-><init>(IIII)V

    .line 411
    .restart local v0       #params:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :goto_0
    const/4 v1, -0x1

    invoke-super {p0, p1, v1, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 412
    return-void

    .line 406
    :cond_0
    iput p2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    .line 407
    iput p3, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .line 408
    iput p4, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 409
    iput p5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_0
.end method

.method private getEmptyPage(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)Landroid/view/View;
    .locals 4
    .parameter "type"

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03002a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/bulletin/ui/BulletinLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 617
    .local v0, emptyPage:Landroid/view/View;
    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1}, Lcom/baidu/bulletin/ui/BulletinLayout;->initEmptyButton(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;Landroid/widget/ImageView;)V

    .line 618
    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lcom/baidu/bulletin/ui/BulletinLayout;->initEmptyHint(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;Landroid/widget/TextView;)V

    .line 620
    invoke-direct {p0, p1, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->initHistoryToday(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;Landroid/view/View;)V

    .line 622
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, context:Landroid/content/Context;
    return-void
.end method

.method private initBulletinScreen()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 355
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/newpiflow/biz/OpDataUtil;->deleteIQIYI(Landroid/content/Context;)V

    .line 356
    new-instance v2, Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/logic/UIController;->getLauncher()Lcom/baidu/launcher/app/Launcher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inveno/newpiflow/widget/PiMainView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    .line 357
    iget-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    new-instance v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v3, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2, v3}, Lcom/baidu/bulletin/ui/BulletinLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isGuideShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 362
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    .line 363
    iget-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    const v3, 0x7f0800bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 364
    .local v0, guideImage:Landroid/widget/ImageView;
    const v2, 0x7f0200b6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    const v3, 0x7f0800c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/BulletinLayout;->initStartButton(Landroid/view/View;)V

    .line 366
    iget-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    new-instance v3, Lcom/baidu/bulletin/ui/BulletinLayout$1;

    invoke-direct {v3, p0}, Lcom/baidu/bulletin/ui/BulletinLayout$1;-><init>(Lcom/baidu/bulletin/ui/BulletinLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 373
    iget-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    new-instance v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v3, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2, v3}, Lcom/baidu/bulletin/ui/BulletinLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/widget/PiMainView;->setVisibility(I)V

    .line 378
    .end local v0           #guideImage:Landroid/widget/ImageView;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->invalidate()V

    .line 379
    return-void
.end method

.method private initEmptyButton(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "type"
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 640
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_CHANNEL:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    if-ne p1, v0, :cond_0

    .line 641
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 643
    new-instance v0, Lcom/baidu/bulletin/ui/BulletinLayout$3;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/BulletinLayout$3;-><init>(Lcom/baidu/bulletin/ui/BulletinLayout;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    :goto_0
    return-void

    .line 660
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_NETWORK:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    if-ne p1, v0, :cond_1

    .line 661
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 663
    const v0, 0x7f020069

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 664
    new-instance v0, Lcom/baidu/bulletin/ui/BulletinLayout$4;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/BulletinLayout$4;-><init>(Lcom/baidu/bulletin/ui/BulletinLayout;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 674
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEmptyHint(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;Landroid/widget/TextView;)V
    .locals 1
    .parameter "type"
    .parameter "message"

    .prologue
    .line 679
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_CHANNEL:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    if-ne p1, v0, :cond_1

    .line 680
    const v0, 0x7f0c0222

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_NETWORK:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    if-ne p1, v0, :cond_2

    .line 682
    const v0, 0x7f0c0223

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 683
    :cond_2
    sget-object v0, Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;->NO_MESSAGE:Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;

    if-ne p1, v0, :cond_0

    .line 684
    const v0, 0x7f0c0224

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initHistoryToday(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;Landroid/view/View;)V
    .locals 3
    .parameter "type"
    .parameter "emptyPage"

    .prologue
    .line 628
    const v2, 0x7f08008d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;

    .line 631
    .local v1, historyTodayCell:Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/BulletinPresentation;->getHistoryToday()Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 634
    .local v0, historyChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-virtual {v1, p2, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinHistoryTodayCell;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    .line 637
    return-void
.end method

.method private initStartButton(Landroid/view/View;)V
    .locals 1
    .parameter "startButton"

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    new-instance v0, Lcom/baidu/bulletin/ui/BulletinLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/ui/BulletinLayout$2;-><init>(Lcom/baidu/bulletin/ui/BulletinLayout;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    return-void
.end method

.method private measureMain(Landroid/view/View;IIF)V
    .locals 4
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "density"

    .prologue
    const/high16 v3, 0x4000

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/BulletinLayout;->bringChildToFront(Landroid/view/View;)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 196
    .local v0, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iput p2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    .line 197
    iput p3, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->height:I

    .line 198
    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    .line 199
    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    .line 201
    iget v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->height:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 204
    return-void
.end method


# virtual methods
.method public declared-synchronized addSettingsView(Z)V
    .locals 1
    .parameter "needAdd"

    .prologue
    .line 516
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 517
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/ui/settings/Settings;->getSettingsInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/settings/Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    .line 518
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 520
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->removeView(Landroid/view/View;)V

    .line 522
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/settings/Settings;->release()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 6
    .parameter "child"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 416
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/BulletinLayout;->addView(Landroid/view/View;IIII)V

    .line 417
    return-void
.end method

.method public cleanPopUpWindow()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mNavigator:Lcom/baidu/bulletin/ui/navigator/Navigator;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mNavigator:Lcom/baidu/bulletin/ui/navigator/Navigator;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->dismissPopupWindow()V

    .line 713
    :cond_0
    return-void
.end method

.method public closeOpWebView()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->removeView(Landroid/view/View;)V

    .line 567
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->release()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    .line 570
    :cond_0
    return-void
.end method

.method public detailClean()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->cleanSharedDialog()V

    .line 705
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->cleanDownloadDialog()V

    .line 707
    :cond_0
    return-void
.end method

.method public getSlotForSpan([III)Z
    .locals 1
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isOpWebViewShown()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mIsInOpWebView:Z

    return v0
.end method

.method public isSettingsShown()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mIsInSetting:Z

    return v0
.end method

.method public isShowingAnimation()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 0
    .parameter "event"
    .parameter "data"

    .prologue
    .line 121
    return-void
.end method

.method public onClicked()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 421
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->setVisibility(I)V

    .line 430
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->removeAllViews()V

    .line 431
    iput-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    .line 432
    iput-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mChannleView:Landroid/view/View;

    .line 433
    iput-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    .line 434
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->release()V

    .line 436
    iput-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/settings/Settings;->release()V

    .line 440
    iput-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    .line 441
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mIsInSetting:Z

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mHistoryTodayComponent:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mHistoryTodayComponent:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->release()V

    .line 445
    iput-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mHistoryTodayComponent:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->release()V

    .line 449
    iput-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    .line 450
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mIsInOpWebView:Z

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->onClose()V

    .line 453
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 724
    invoke-super {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->onDetachedFromWindow()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    .line 726
    return-void
.end method

.method public onEnter()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->onShow()V

    .line 469
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->onHide()V

    .line 719
    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->init()V

    .line 473
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getChildCount()I

    move-result v1

    .line 131
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 132
    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/BulletinLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mSettings:Lcom/baidu/bulletin/ui/settings/Settings;

    if-eq v0, v4, :cond_0

    iget-object v4, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    if-ne v0, v4, :cond_1

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 136
    .local v3, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget v4, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    iget v5, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    iget v6, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    iget v7, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    iget v8, v3, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v3           #lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void

    .line 137
    .restart local v0       #child:Landroid/view/View;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 148
    .local v3, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 150
    .local v1, heightSpecMode:I
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 151
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "BulletinLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 155
    .local v4, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 157
    .local v2, heightSpecSize:I
    invoke-virtual {p0, v4, v2}, Lcom/baidu/bulletin/ui/BulletinLayout;->setMeasuredDimension(II)V

    .line 159
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 190
    :cond_2
    :goto_0
    return-void

    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/bulletin/ui/Utilities;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 182
    .local v0, density:F
    iget-object v5, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 183
    iget-object v5, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mGuideView:Landroid/view/View;

    invoke-direct {p0, v5, v4, v2, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->measureMain(Landroid/view/View;IIF)V

    .line 186
    :cond_4
    iget-object v5, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    if-eqz v5, :cond_2

    .line 187
    iget-object v5, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinView:Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-direct {p0, v5, v4, v2, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->measureMain(Landroid/view/View;IIF)V

    goto :goto_0
.end method

.method public onNotifyNewMessage(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 495
    return-void
.end method

.method public onNotifyPageChanged()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public onProcessing()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public onRest()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public onServiceStarted()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->setVisibility(I)V

    .line 463
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->initBulletinScreen()V

    .line 464
    return-void
.end method

.method public showBulletinSpace(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    if-eqz v0, :cond_0

    .line 580
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->setVisibility(I)V

    .line 582
    :cond_0
    return-void

    .line 580
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showDetailing(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 586
    if-eqz p1, :cond_1

    .line 587
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->getDetailViewInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/detail/DetailView;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    .line 589
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->init()V

    .line 591
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->addView(Landroid/view/View;)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->removeView(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->release()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mDetailView:Lcom/baidu/bulletin/ui/detail/DetailView;

    goto :goto_0
.end method

.method public showEmptyPage(ZLcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)V
    .locals 2
    .parameter "show"
    .parameter "type"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    if-nez v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 608
    :cond_0
    if-eqz p1, :cond_1

    .line 609
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    invoke-direct {p0, p2}, Lcom/baidu/bulletin/ui/BulletinLayout;->getEmptyPage(Lcom/baidu/bulletin/ui/logic/UIController$IBulletinAction$ContentState;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->setDisabledPage(Landroid/view/View;)V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->setDisabledPage(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showOpWebView()V
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->getOperationWebViewInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/op/OperationWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    .line 558
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mOpWebView:Lcom/baidu/bulletin/ui/op/OperationWebView;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->addView(Landroid/view/View;)V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mIsInOpWebView:Z

    .line 560
    return-void
.end method

.method public showPageImages(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->setPageImages(I)V

    .line 693
    :cond_0
    return-void
.end method

.method public showSettings(Z)Z
    .locals 2
    .parameter "show"

    .prologue
    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinLayout;->isShowingAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    :goto_0
    return v0

    .line 535
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mIsInSetting:Z

    .line 536
    if-nez p1, :cond_1

    .line 537
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinLayout;->addSettingsView(Z)V

    .line 539
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public syncCurrentPage()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinLayout;->mBulletinSpace:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->syncCurrentPage()V

    .line 700
    :cond_0
    return-void
.end method
