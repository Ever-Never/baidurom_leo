.class public Lcom/baidu/bulletin/ui/detail/DetailView;
.super Landroid/widget/RelativeLayout;
.source "DetailView.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/logic/UIController$IDetialAction;
.implements Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;


# static fields
.field private static mDetailViewInstance:Lcom/baidu/bulletin/ui/detail/DetailView;


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mDataManager:Lcom/baidu/bulletin/DataManager;

.field private mDetailContenViewGroup:Landroid/view/ViewGroup;

.field private mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

.field private mDetailDate:Landroid/widget/TextView;

.field private mDetailIcon:Landroid/widget/ImageView;

.field private mDetailType:Landroid/widget/TextView;

.field private mOpInfoCallback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

.field private mRefeshingView:Landroid/widget/ImageView;

.field private mShareButton:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mdividLine:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 273
    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailView$3;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/DetailView$3;-><init>(Lcom/baidu/bulletin/ui/detail/DetailView;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mOpInfoCallback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    .line 69
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataManager:Lcom/baidu/bulletin/DataManager;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/detail/DetailView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/detail/DetailView;)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/detail/DetailView;)Lcom/baidu/bulletin/ui/detail/IDetailContentView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/detail/DetailView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/DetailView;->disableAndBuildHardwareLayer()V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/detail/DetailView;Ljava/util/List;)Lcom/baidu/bulletin/db/entity/OpItemInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailView;->getNoExistItem(Ljava/util/List;)Lcom/baidu/bulletin/db/entity/OpItemInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/detail/DetailView;Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailView;->updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/ui/detail/DetailView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContenViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private close(Z)V
    .locals 6
    .parameter "animate"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/DetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/bulletin/ui/Utilities;->getHeightPixels(Landroid/content/Context;)I

    move-result v0

    .line 138
    .local v0, offset:I
    const-string v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v0

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    move-result-object v1

    .line 140
    .local v1, tyuAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 141
    new-instance v2, Lcom/baidu/bulletin/ui/detail/DetailView$2;

    invoke-direct {v2, p0}, Lcom/baidu/bulletin/ui/detail/DetailView$2;-><init>(Lcom/baidu/bulletin/ui/detail/DetailView;)V

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 154
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 159
    .end local v0           #offset:I
    .end local v1           #tyuAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    :goto_0
    return-void

    .line 156
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/detail/DetailView;->setVisibility(I)V

    .line 157
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/DetailView;->disableAndBuildHardwareLayer()V

    goto :goto_0
.end method

.method private disableAndBuildHardwareLayer()V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method public static declared-synchronized getDetailViewInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/detail/DetailView;
    .locals 5
    .parameter "context"

    .prologue
    .line 74
    const-class v1, Lcom/baidu/bulletin/ui/detail/DetailView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailViewInstance:Lcom/baidu/bulletin/ui/detail/DetailView;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailView;

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailViewInstance:Lcom/baidu/bulletin/ui/detail/DetailView;

    .line 76
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailViewInstance:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-virtual {v0, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->addAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V

    .line 79
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailViewInstance:Lcom/baidu/bulletin/ui/detail/DetailView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNoExistItem(Ljava/util/List;)Lcom/baidu/bulletin/db/entity/OpItemInfo;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;)",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    .line 299
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    iget-object v2, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/detail/DetailView;->getPackageNoExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPackageNoExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 309
    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 313
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 314
    const/4 v2, 0x1

    .line 316
    :cond_0
    return v2

    .line 310
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    goto :goto_0
.end method

.method private setLoading(Z)V
    .locals 4
    .parameter "isLoading"

    .prologue
    const/4 v3, 0x0

    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mdividLine:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mRefeshingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/DetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 242
    .local v0, animation1:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mRefeshingView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    .end local v0           #animation1:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mdividLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mRefeshingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mRefeshingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mRefeshingView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private show(Z)V
    .locals 6
    .parameter "animate"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 118
    invoke-virtual {p0, v5}, Lcom/baidu/bulletin/ui/detail/DetailView;->setVisibility(I)V

    .line 119
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/DetailView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0, v3}, Lcom/baidu/bulletin/ui/detail/DetailView;->setFocusable(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/DetailView;->requestFocus()Z

    .line 122
    invoke-virtual {p0, v3}, Lcom/baidu/bulletin/ui/detail/DetailView;->setClickable(Z)V

    .line 123
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/baidu/bulletin/ui/detail/DetailView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/DetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/bulletin/ui/Utilities;->getHeightPixels(Landroid/content/Context;)I

    move-result v0

    .line 126
    .local v0, offset:I
    int-to-float v2, v0

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/detail/DetailView;->setY(F)V

    .line 127
    const-string v2, "translationY"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    move-result-object v1

    .line 129
    .local v1, tyuAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 130
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 131
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 133
    .end local v0           #offset:I
    .end local v1           #tyuAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    :cond_0
    return-void
.end method

.method private updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 1
    .parameter "opItemInfo"

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/detail/IDetailContentView;->updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V

    .line 295
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanDownloadDialog()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->cleanDownloadDialog()V

    .line 65
    return-void
.end method

.method public cleanSharedDialog()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->cleanSharedDialog()V

    .line 61
    return-void
.end method

.method public getDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 12
    .parameter "data"

    .prologue
    const/16 v11, 0x3e8

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 174
    invoke-direct {p0, v10}, Lcom/baidu/bulletin/ui/detail/DetailView;->setLoading(Z)V

    .line 175
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 176
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v0, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 177
    .local v0, channelId:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelIdUseTopic(I)I

    move-result v1

    .line 178
    .local v1, channelListID:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelNameRes(I)I

    move-result v5

    .line 179
    .local v5, typeTextId:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelIconRes(I)I

    move-result v4

    .line 181
    .local v4, typeIconId:I
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mShareButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    sget-object v6, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailViewInstance:Lcom/baidu/bulletin/ui/detail/DetailView;

    const v7, 0x7f08009b

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContenViewGroup:Landroid/view/ViewGroup;

    .line 187
    if-lez v0, :cond_1

    if-ge v0, v11, :cond_1

    .line 188
    new-instance v6, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContenViewGroup:Landroid/view/ViewGroup;

    invoke-direct {v6, v7}, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    .line 210
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailType:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    invoke-interface {v6}, Lcom/baidu/bulletin/ui/detail/IDetailContentView;->init()V

    .line 214
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    invoke-interface {v6, p0}, Lcom/baidu/bulletin/ui/detail/IDetailContentView;->setContentListener(Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;)V

    .line 215
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v6, v7}, Lcom/baidu/bulletin/ui/detail/IDetailContentView;->updateDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 216
    invoke-direct {p0, v10}, Lcom/baidu/bulletin/ui/detail/DetailView;->show(Z)V

    .line 218
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForDetailPageClick()V

    .line 220
    return-void

    .line 190
    :cond_1
    if-lt v0, v11, :cond_2

    const/16 v6, 0x7d0

    if-ge v0, v6, :cond_2

    .line 191
    new-instance v6, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContenViewGroup:Landroid/view/ViewGroup;

    invoke-direct {v6, v7}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    .line 192
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mShareButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v7, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailDate:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_2
    const/16 v6, 0xbb9

    if-lt v0, v6, :cond_3

    const/16 v6, 0xbbc

    if-gt v0, v6, :cond_3

    .line 197
    new-instance v6, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContenViewGroup:Landroid/view/ViewGroup;

    invoke-direct {v6, v7}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    .line 198
    const v6, 0x7f080092

    invoke-virtual {p0, v6}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 199
    .local v3, rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 204
    .end local v3           #rl:Landroid/widget/RelativeLayout;
    :cond_3
    const/16 v6, 0xfa0

    if-ne v0, v6, :cond_0

    .line 205
    new-instance v6, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContenViewGroup:Landroid/view/ViewGroup;

    invoke-direct {v6, v7}, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    .line 206
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mShareButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    new-instance v6, Lcom/baidu/bulletin/ui/detail/HistoryTodayGennerateTime;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v7, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/baidu/bulletin/ui/detail/HistoryTodayGennerateTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/baidu/bulletin/ui/detail/HistoryTodayGennerateTime;->generate()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, dateString:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailDate:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 87
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mCloseButton:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mShareButton:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mCloseButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mShareButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bulletin/ui/detail/DetailView$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/DetailView$1;-><init>(Lcom/baidu/bulletin/ui/detail/DetailView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailType:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailDate:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailIcon:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mTitleTextView:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mRefeshingView:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mdividLine:Landroid/widget/ImageView;

    .line 108
    return-void
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/DetailView;->onClose()V

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onChannelItemChanged(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 323
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v1, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/TimeUtils;->getInterval(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->close(Z)V

    .line 225
    return-void
.end method

.method public onContentUpdateFinish(Lcom/baidu/bulletin/ui/detail/IDetailContentView;Z)V
    .locals 4
    .parameter "detailContentView"
    .parameter "isLoaded"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->setLoading(Z)V

    .line 262
    if-eqz p2, :cond_0

    .line 263
    instance-of v0, p1, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataManager:Lcom/baidu/bulletin/DataManager;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mOpInfoCallback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    const-string v2, "news"

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/DataManager;->requestOpInfo(Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;Ljava/lang/String;I)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    instance-of v0, p1, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataManager:Lcom/baidu/bulletin/DataManager;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mOpInfoCallback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    const-string v2, "history"

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/DataManager;->requestOpInfo(Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;Ljava/lang/String;I)V

    goto :goto_0

    .line 267
    :cond_2
    instance-of v0, p1, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataManager:Lcom/baidu/bulletin/DataManager;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mOpInfoCallback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    const-string v2, "picture"

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/DataManager;->requestOpInfo(Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onContentUpdateStart(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->setLoading(Z)V

    .line 329
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 330
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v1, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/TimeUtils;->getInterval(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/detail/IDetailContentView;->invalidate()V

    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 115
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/ui/logic/UIController;->releaseAction(Lcom/baidu/bulletin/ui/logic/UIController$IAction;)V

    .line 256
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailViewInstance:Lcom/baidu/bulletin/ui/detail/DetailView;

    .line 257
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    return-void
.end method
