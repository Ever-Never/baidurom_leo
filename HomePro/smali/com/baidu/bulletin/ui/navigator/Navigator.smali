.class public Lcom/baidu/bulletin/ui/navigator/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/IViewComponent;
.implements Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/navigator/Navigator$7;,
        Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Navigator"


# instance fields
.field hideNavigatorRunnable:Ljava/lang/Runnable;

.field private mChannelImageView:Landroid/widget/ImageView;

.field private mChannelNameTextView:Landroid/widget/TextView;

.field private mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

.field mFadeIn:Landroid/view/animation/Animation;

.field mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorImageView:Landroid/widget/ImageView;

.field private mLoadingProgressBar:Landroid/widget/ProgressBar;

.field private mNavigatorView:Landroid/view/View;

.field private mRefreshButton:Landroid/widget/ImageView;

.field private mSubscribChannelIndex:I

.field private mSubscribedChannelID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private menuGrid:Landroid/widget/GridView;

.field private popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)V
    .locals 5
    .parameter "navigatorView"
    .parameter "dragListViewComponent"

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeOut:Landroid/view/animation/Animation;

    .line 69
    iput-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeIn:Landroid/view/animation/Animation;

    .line 214
    new-instance v0, Lcom/baidu/bulletin/ui/navigator/Navigator$4;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/navigator/Navigator$4;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->hideNavigatorRunnable:Ljava/lang/Runnable;

    .line 376
    iput-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    .line 73
    iput-object p2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    .line 77
    const v0, 0x7f080052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f080053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mIndicatorImageView:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f080051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelImageView:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f080054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bulletin/ui/navigator/Navigator$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/navigator/Navigator$1;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->registStateChangeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;

    invoke-direct {v1, p0, v3}, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;Lcom/baidu/bulletin/ui/navigator/Navigator$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;

    invoke-direct {v1, p0, v3}, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;Lcom/baidu/bulletin/ui/navigator/Navigator$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mIndicatorImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;

    invoke-direct {v1, p0, v3}, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;Lcom/baidu/bulletin/ui/navigator/Navigator$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->initSubscribedChannelIfo()V

    .line 128
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    .line 131
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_NAME:[I

    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 134
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeOut:Landroid/view/animation/Animation;

    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/baidu/bulletin/ui/navigator/Navigator$2;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/navigator/Navigator$2;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeIn:Landroid/view/animation/Animation;

    .line 169
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Lcom/baidu/bulletin/ui/navigator/Navigator$3;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/navigator/Navigator$3;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0282

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    .line 139
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/navigator/Navigator;)Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/navigator/Navigator;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/navigator/Navigator;->openPopupwin(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/navigator/Navigator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->hideNavigatorBar()V

    return-void
.end method

.method private getMenuAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ListAdapter;
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/widget/ListAdapter;"
        }
    .end annotation

    .prologue
    .local p2, subScribed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x2

    .line 308
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    .line 310
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 312
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "itemImage"

    sget-object v4, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ICON_NORM:[I

    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v3, "itemText"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_NAME:[I

    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v5, v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 317
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030074

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "itemImage"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "itemText"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 320
    .local v0, simperAdapter:Landroid/widget/SimpleAdapter;
    goto :goto_0

    .line 317
    nop

    :array_0
    .array-data 0x4
        0x71t 0x1t 0x8t 0x7ft
        0x72t 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method private hideNavigatorBar()V
    .locals 4

    .prologue
    .line 413
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->hideNavigatorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->hideNavigatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->hideNavigatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    :cond_0
    return-void
.end method

.method private initSubscribedChannelIfo()V
    .locals 4

    .prologue
    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    .line 379
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    .line 380
    .local v1, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 381
    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    sget-object v3, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_1
    return-void
.end method

.method private openPopupwin(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 326
    .local v0, context:Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 327
    .local v1, mLayoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030059

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 329
    .local v2, menuView:Landroid/view/ViewGroup;
    const v3, 0x7f080134

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->menuGrid:Landroid/widget/GridView;

    .line 330
    iget-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->menuGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v4}, Lcom/baidu/bulletin/ui/navigator/Navigator;->getMenuAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    iget-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->menuGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->requestFocus()Z

    .line 332
    iget-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->menuGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 334
    iget-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->menuGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/baidu/bulletin/ui/navigator/Navigator$5;

    invoke-direct {v4, p0}, Lcom/baidu/bulletin/ui/navigator/Navigator$5;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 343
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    .line 345
    iget-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 348
    iget-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 349
    iget-object v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/baidu/bulletin/ui/navigator/Navigator$6;

    invoke-direct {v4, p0}, Lcom/baidu/bulletin/ui/navigator/Navigator$6;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 357
    return-void
.end method


# virtual methods
.method public dismissPopupWindow()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 375
    :cond_0
    return-void
.end method

.method public getCurrentTopicId()I
    .locals 2

    .prologue
    .line 199
    iget v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    invoke-static {v1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelInfoId(I)I

    move-result v0

    .line 201
    .local v0, topicId:I
    return v0
.end method

.method public getSubscribChannelIndex()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    .line 363
    iget v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    invoke-static {v1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelInfoId(I)I

    move-result v0

    .line 364
    .local v0, topicId:I
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 366
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->setNewTopicIdAndRefresh(I)V

    .line 367
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_NAME:[I

    iget v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 368
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ICON_NORM:[I

    iget v3, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 369
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 295
    .local v0, channelId:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelInfoId(I)I

    move-result v1

    .line 298
    .local v1, topicId:I
    const-string v2, "Navigator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topicId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", channelId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v2, v1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->setNewTopicIdAndRefresh(I)V

    .line 300
    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    const/4 v2, 0x0

    return v2
.end method

.method public onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    .locals 6
    .parameter "dragListViewComponent"
    .parameter "preState"
    .parameter "curState"

    .prologue
    const v5, 0x7f020095

    const/4 v4, 0x1

    .line 227
    const-string v1, "pull"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 231
    :cond_1
    sget-object v1, Lcom/baidu/bulletin/ui/navigator/Navigator$7;->$SwitchMap$com$baidu$bulletin$ui$draglist$IOnStateChangeListener$State:[I

    invoke-virtual {p3}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 240
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 247
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 250
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 254
    :pswitch_3
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 257
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 264
    :pswitch_4
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 266
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_0

    .line 271
    .end local v0           #animation:Landroid/view/animation/Animation;
    :pswitch_5
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 273
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 275
    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    if-ne p2, v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 278
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->hideNavigatorBar()V

    goto/16 :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public removeNavigator()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_0
    return-void
.end method

.method public updateNavigator()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 387
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->initSubscribedChannelIfo()V

    .line 388
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    iget v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    .line 394
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    invoke-static {v1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelInfoId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->setNewTopicIdAndRefresh(I)V

    .line 395
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_NAME:[I

    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ICON_NORM:[I

    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribedChannelID:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 397
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 398
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    .line 403
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mSubscribChannelIndex:I

    invoke-static {v1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelInfoId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->setNewTopicIdAndRefresh(I)V

    .line 404
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0282

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 406
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator;->mIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
