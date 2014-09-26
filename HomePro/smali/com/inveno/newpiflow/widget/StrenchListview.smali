.class public Lcom/inveno/newpiflow/widget/StrenchListview;
.super Landroid/view/ViewGroup;
.source "StrenchListview.java"


# static fields
.field public static final CACHECOUNT:I = 0x3

.field private static final CAN_REMOVE:I = 0x0

.field private static final MAX_CHILD_INDEX:I = 0xc

.field private static final MSG_SHOW_NOCONN:I = 0x64

.field private static final MSG_SHOW_WAITING:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "StrenchListview"


# instance fields
.field private addHeight:I

.field private childIndex:I

.field private loadMoreView:Landroid/view/View;

.field private mBeginY:I

.field private mBitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

.field private mContext:Landroid/content/Context;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mIsDetached:Z

.field private mIsDrawing:Z

.field public mIsRoaming:Z

.field private mIsStartMoveSetting:Z

.field private mLastScrollY:I

.field public mLastValueIndex:I

.field private mLoadMoreText:Landroid/widget/TextView;

.field public mLoadMoreViewHeight:I

.field public mLoading:Z

.field private mNoConnBtn:Landroid/widget/Button;

.field private mNoConnImage:Landroid/widget/ImageView;

.field private mNoConnText:Landroid/widget/TextView;

.field private mParent:Lcom/inveno/newpiflow/widget/PiScrollView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mRemoveChild:Landroid/os/Handler;

.field public mScrollingHandler:Landroid/os/Handler;

.field public mSettingHeight:I

.field public mShowDragHeader:Z

.field public mShowLoadmore:Z

.field public mShowSetting:Z

.field public mShowWelcome:Z

.field public mTotalHeight:I

.field private mUIHandler:Landroid/os/Handler;

.field private mWaiting:Landroid/widget/ProgressBar;

.field public mWindowView:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/inveno/newpiflow/widget/PiWindowView;",
            ">;"
        }
    .end annotation
.end field

.field private settingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;Lcom/inveno/newpiflow/widget/PiScrollView;)V
    .locals 6
    .parameter "context"
    .parameter "bitmapUtils"
    .parameter "anim3DBoxControl"
    .parameter "piScrollView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x4

    .line 244
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 82
    iput v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLastValueIndex:I

    .line 129
    new-instance v0, Lcom/inveno/newpiflow/widget/StrenchListview$1;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/widget/StrenchListview$1;-><init>(Lcom/inveno/newpiflow/widget/StrenchListview;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mRemoveChild:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/inveno/newpiflow/widget/StrenchListview$2;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/widget/StrenchListview$2;-><init>(Lcom/inveno/newpiflow/widget/StrenchListview;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mUIHandler:Landroid/os/Handler;

    .line 231
    new-instance v0, Lcom/inveno/newpiflow/widget/StrenchListview$3;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/widget/StrenchListview$3;-><init>(Lcom/inveno/newpiflow/widget/StrenchListview;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mScrollingHandler:Landroid/os/Handler;

    .line 245
    iput-object p4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mParent:Lcom/inveno/newpiflow/widget/PiScrollView;

    .line 246
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mContext:Landroid/content/Context;

    .line 247
    iput-object p2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mBitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    .line 248
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    .line 249
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f7ae148

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 250
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLoadMoreViewHeight:I

    .line 255
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->loadMoreView:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->loadMoreView:Landroid/view/View;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLoadMoreText:Landroid/widget/TextView;

    .line 258
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->loadMoreView:Landroid/view/View;

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mProgressBar:Landroid/widget/ProgressBar;

    .line 259
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->loadMoreView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->addView(Landroid/view/View;)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowWelcome:Z

    .line 263
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->addView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    .line 268
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 269
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    const v1, 0x7f0c02f9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    new-instance v1, Lcom/inveno/newpiflow/widget/StrenchListview$4;

    invoke-direct {v1, p0}, Lcom/inveno/newpiflow/widget/StrenchListview$4;-><init>(Lcom/inveno/newpiflow/widget/StrenchListview;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->addView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 284
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    .line 285
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    const v1, 0x7f0c02fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 287
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    const v1, -0x515253

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->addView(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    .line 292
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->addView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 297
    invoke-virtual {p0, v5}, Lcom/inveno/newpiflow/widget/StrenchListview;->setLayoutDirection(I)V

    .line 300
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mQueue:Lcom/android/volley/RequestQueue;

    .line 301
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/inveno/newpiflow/tools/BitmapCache;

    invoke-direct {v2}, Lcom/inveno/newpiflow/tools/BitmapCache;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/inveno/newpiflow/widget/StrenchListview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLastScrollY:I

    return v0
.end method

.method static synthetic access$100(Lcom/inveno/newpiflow/widget/StrenchListview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mIsDrawing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/inveno/newpiflow/widget/StrenchListview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mIsDrawing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mRemoveChild:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/inveno/newpiflow/widget/StrenchListview;)Lcom/inveno/newpiflow/widget/PiScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mParent:Lcom/inveno/newpiflow/widget/PiScrollView;

    return-object v0
.end method

.method private release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 677
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 678
    .local v1, windowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiWindowView;->release()V

    goto :goto_0

    .line 680
    .end local v1           #windowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    :cond_0
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 681
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mBitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    invoke-virtual {v2}, Lcom/inveno/flyshare/BitmapUtils;->closeCache()V

    .line 682
    iput-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mQueue:Lcom/android/volley/RequestQueue;

    .line 683
    iput-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 684
    return-void
.end method


# virtual methods
.method public checkFailBitmap(I)V
    .locals 10
    .parameter "scrollY"

    .prologue
    .line 599
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 600
    .local v5, windowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    iget-object v6, v5, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    invoke-virtual {v6, p1}, Lcom/inveno/newpiflow/model/PiData;->isContain(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 601
    iget-object v6, v5, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    iget-object v4, v6, Lcom/inveno/newpiflow/model/PiData;->items:Ljava/util/List;

    .line 602
    .local v4, items:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 603
    .local v3, item:Lcom/inveno/newpiflow/model/PiDataItem;
    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiDataItem;->getIv()Lcom/inveno/newpiflow/widget/PiImageView;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiDataItem;->getIv()Lcom/inveno/newpiflow/widget/PiImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inveno/newpiflow/widget/PiImageView;->isLoadBitmapOk()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiDataItem;->getIv()Lcom/inveno/newpiflow/widget/PiImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inveno/newpiflow/widget/PiImageView;->isLoading()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6709\u88ab\u5305\u542b\u7684\u91cd\u65b0\u4e0b\u8f7d\u56fe\u7247\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 608
    new-instance v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;-><init>()V

    .line 609
    .local v0, config:Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setSaveToSdcard(Z)V

    .line 610
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mBitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiDataItem;->getIv()Lcom/inveno/newpiflow/widget/PiImageView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&width="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiDataItem;->getIv()Lcom/inveno/newpiflow/widget/PiImageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/inveno/newpiflow/widget/PiImageView;->getCallBack()Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/inveno/flyshare/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V

    goto/16 :goto_0

    .line 619
    .end local v0           #config:Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v4           #items:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/newpiflow/model/PiDataItem;>;"
    .end local v5           #windowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "paramCanvas"

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mIsDetached:Z

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 192
    const/4 v3, 0x0

    invoke-virtual {p2, v6, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 193
    const/high16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 195
    iget v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->childIndex:I

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    .line 196
    iget v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->childIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->childIndex:I

    .line 197
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 198
    .local v2, piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2}, Lcom/inveno/newpiflow/model/PiDataItem;->isBanner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, "translationX"

    new-array v4, v5, [F

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v5, v5, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    aput v7, v4, v8

    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v4, v2, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    iget v5, v2, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x1f4

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v5, v5, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    div-int/2addr v4, v5

    add-int/lit16 v4, v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 206
    .local v1, anim:Landroid/animation/Animator;
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 228
    .end local v1           #anim:Landroid/animation/Animator;
    .end local v2           #piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    return v3

    .line 208
    .restart local v2       #piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    :cond_1
    iget v3, v2, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v4, v4, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    if-gt v3, v4, :cond_0

    .line 210
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v3, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v0, v3, 0x3

    .line 212
    .local v0, X:I
    iget v3, v2, Lcom/inveno/newpiflow/model/PiDataItem;->x:I

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v4, v4, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_2

    .line 213
    neg-int v0, v0

    .line 216
    :cond_2
    const-string v3, "translationX"

    new-array v4, v5, [F

    int-to-float v5, v0

    aput v5, v4, v6

    aput v7, v4, v8

    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v4, v2, Lcom/inveno/newpiflow/model/PiDataItem;->y:I

    iget v5, v2, Lcom/inveno/newpiflow/model/PiDataItem;->height:I

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x12c

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v5, v5, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    div-int/2addr v4, v5

    add-int/lit16 v4, v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 220
    .restart local v1       #anim:Landroid/animation/Animator;
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public getProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getWindowSize()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mIsDetached:Z

    .line 355
    return-void
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/StrenchListview;->release()V

    .line 692
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mIsDetached:Z

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mParent:Lcom/inveno/newpiflow/widget/PiScrollView;

    .line 361
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/StrenchListview;->release()V

    .line 363
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "paramBoolean"
    .parameter "paramInt1"
    .parameter "paramInt2"
    .parameter "paramInt3"
    .parameter "paramInt4"

    .prologue
    const/4 v9, 0x0

    .line 384
    const-string v6, "StrenchListview"

    const-string v7, "onLayout"

    invoke-static {v6, v7}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, i:I
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 388
    .local v1, j:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 389
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 390
    .local v4, piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    iget v6, v4, Lcom/inveno/newpiflow/widget/PiWindowView;->mWidth:I

    iget v7, v4, Lcom/inveno/newpiflow/widget/PiWindowView;->mHeight:I

    add-int/2addr v7, v0

    invoke-virtual {v4, v9, v0, v6, v7}, Lcom/inveno/newpiflow/widget/PiWindowView;->Layout(IIII)V

    .line 392
    iget v6, v4, Lcom/inveno/newpiflow/widget/PiWindowView;->mHeight:I

    add-int/2addr v0, v6

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v4           #piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    :cond_0
    iget-boolean v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowWelcome:Z

    if-eqz v6, :cond_1

    .line 396
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v6, v6, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 397
    .local v3, left:I
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v6, v6, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    div-int/lit8 v6, v6, 0x4

    add-int/lit8 v5, v6, -0xa

    .line 398
    .local v5, top:I
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 401
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v6, v6, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 402
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 403
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 406
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v6, v6, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 407
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v6, v6, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v5, v6, 0x4

    .line 408
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/Button;->layout(IIII)V

    .line 411
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v6, v6, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 412
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v6, v6, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    div-int/lit8 v5, v6, 0x3

    .line 413
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 416
    .end local v3           #left:I
    .end local v5           #top:I
    :cond_1
    iget-boolean v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowLoadmore:Z

    if-eqz v6, :cond_2

    .line 417
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->loadMoreView:Landroid/view/View;

    iget v7, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    invoke-virtual {v6, v9, v7, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 418
    :cond_2
    return-void
.end method

.method public onLoadFailed()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 422
    const-string v3, "StrenchListview"

    const-string v4, "onMeasure"

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v3, 0x0

    iput v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    .line 424
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 425
    .local v2, piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    const/4 v0, 0x0

    .line 426
    .local v0, h:I
    iget-object v3, v2, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, v2, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiData;->getHeight()I

    move-result v0

    .line 428
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/inveno/newpiflow/widget/PiWindowView;->Measure(II)V

    .line 429
    iget v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    goto :goto_0

    .line 432
    .end local v0           #h:I
    .end local v2           #piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    :cond_1
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->loadMoreView:Landroid/view/View;

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 436
    iget-boolean v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowWelcome:Z

    if-eqz v3, :cond_2

    .line 437
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 438
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/Button;->measure(II)V

    .line 439
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 440
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ProgressBar;->measure(II)V

    .line 441
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mDeviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v3, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, p1, v3}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 450
    :goto_1
    return-void

    .line 446
    :cond_2
    iget v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->addHeight:I

    iget v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLoadMoreViewHeight:I

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, p1, v3}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_1
.end method

.method public onScrolling(I)V
    .locals 4
    .parameter "scrollY"

    .prologue
    const/4 v3, 0x0

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mIsDrawing:Z

    .line 623
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mScrollingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mScrollingHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 625
    iget v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mSettingHeight:I

    if-lt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowSetting:Z

    if-eqz v0, :cond_0

    .line 651
    :cond_0
    iput p1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLastScrollY:I

    .line 652
    return-void
.end method

.method public removeAllItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 666
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 674
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 670
    .local v1, windowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiWindowView;->onDetacheFromWindow()V

    goto :goto_1

    .line 672
    .end local v1           #windowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    :cond_1
    iput v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    .line 673
    iput v3, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->childIndex:I

    goto :goto_0
.end method

.method public removeAllItemAndClear()V
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeAllItem()V

    .line 659
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 660
    return-void
.end method

.method public setData(Lcom/inveno/newpiflow/model/PiData;)V
    .locals 5
    .parameter "piData"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 311
    if-nez p1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-boolean v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowWelcome:Z

    if-eqz v1, :cond_1

    .line 314
    iput-boolean v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowWelcome:Z

    .line 315
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeView(Landroid/view/View;)V

    .line 316
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeView(Landroid/view/View;)V

    .line 317
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeView(Landroid/view/View;)V

    .line 318
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeView(Landroid/view/View;)V

    .line 319
    iput-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;

    .line 320
    iput-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;

    .line 321
    iput-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;

    .line 322
    iput-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;

    .line 325
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowLoadmore:Z

    .line 327
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mQueue:Lcom/android/volley/RequestQueue;

    if-nez v1, :cond_3

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mQueue:Lcom/android/volley/RequestQueue;

    .line 329
    new-instance v1, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v3, Lcom/inveno/newpiflow/tools/BitmapCache;

    invoke-direct {v3}, Lcom/inveno/newpiflow/tools/BitmapCache;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 331
    :cond_3
    new-instance v0, Lcom/inveno/newpiflow/widget/PiWindowView;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mBitmapUtils:Lcom/inveno/flyshare/BitmapUtils;

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-direct {v0, p0, v1, v2}, Lcom/inveno/newpiflow/widget/PiWindowView;-><init>(Lcom/inveno/newpiflow/widget/StrenchListview;Lcom/inveno/flyshare/BitmapUtils;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 333
    .local v0, window:Lcom/inveno/newpiflow/widget/PiWindowView;
    invoke-virtual {v0, p1}, Lcom/inveno/newpiflow/widget/PiWindowView;->setTTData(Lcom/inveno/newpiflow/model/PiData;)V

    .line 334
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mRemoveChild:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateLoadMoreView(I)V
    .locals 2
    .parameter "footerState"

    .prologue
    .line 453
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLoadMoreText:Landroid/widget/TextView;

    const v1, 0x7f0c02ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 455
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLoadMoreText:Landroid/widget/TextView;

    const v1, 0x7f0c02ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 458
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mLoadMoreText:Landroid/widget/TextView;

    const v1, 0x7f0c02f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 460
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
