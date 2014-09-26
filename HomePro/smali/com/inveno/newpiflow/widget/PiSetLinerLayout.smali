.class public Lcom/inveno/newpiflow/widget/PiSetLinerLayout;
.super Landroid/widget/LinearLayout;
.source "PiSetLinerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final CHANNEL_REQUEST_CODE:I = 0x62

.field private static final SETTING_LINE:[I

.field private static final SETTING_TEXTVIEW:[I

.field private static channelSet:Landroid/widget/LinearLayout;

.field private static imgChannel:Landroid/widget/ImageView;

.field private static tvChannel:Landroid/widget/TextView;


# instance fields
.field private blueLine:Landroid/view/View;

.field private clickTime:J

.field private context:Landroid/content/Context;

.field private imgList:Landroid/widget/ImageView;

.field private imgMode:Landroid/widget/ImageView;

.field private imgMycollection:Landroid/widget/ImageView;

.field private imgVersion:Landroid/widget/ImageView;

.field private imgWhite:Landroid/widget/ImageView;

.field private list:Landroid/widget/LinearLayout;

.field private listId:I

.field private mAnimation3DBoxControl:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

.field private mPopMenu:Lcom/inveno/newpiflow/channel/PopMenu;

.field private mode:Landroid/widget/LinearLayout;

.field private modeId:I

.field private myCollection:Landroid/widget/LinearLayout;

.field private setting:Landroid/widget/FrameLayout;

.field private settingView:Landroid/view/View;

.field private settingView1:Landroid/view/View;

.field private settingView2:Landroid/view/View;

.field private themeId:I

.field private touchTime:J

.field private tvList:Landroid/widget/TextView;

.field private tvMode:Landroid/widget/TextView;

.field private tvMycollection:Landroid/widget/TextView;

.field private tvVersion:Landroid/widget/TextView;

.field private tvWhite:Landroid/widget/TextView;

.field private versionControl:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

.field private versionUp:Landroid/widget/LinearLayout;

.field private white:Landroid/widget/LinearLayout;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0xe3

    const/16 v5, 0xaa

    const/16 v4, 0x96

    const/16 v3, 0x66

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xdc

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_LINE:[I

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {v7, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v7, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x33

    const/16 v3, 0xb5

    const/16 v4, 0xe5

    invoke-static {v7, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V
    .locals 0
    .parameter "context"
    .parameter "animation3DBoxControl"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->init(Landroid/content/Context;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V

    .line 69
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 681
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 682
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getInformain(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 126
    const-string v0, "theme"

    invoke-static {v0, v1, p1}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    .line 128
    const-string v0, "list"

    invoke-static {v0, v1, p1}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    .line 130
    const-string v0, "mode"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    .line 132
    return-void
.end method

.method private init(Landroid/content/Context;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V
    .locals 4
    .parameter "context"
    .parameter "animation3DBoxControl"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getInformain(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->initViewAndAnimation(Landroid/content/Context;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V

    .line 87
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->findViewAndSetState()V

    .line 88
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setToolsState()V

    .line 89
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setListener()V

    .line 91
    new-instance v0, Lcom/inveno/newpiflow/channel/PopMenu;

    const-string v1, "http://baiyixun.lem88.com/selCategory"

    const-string v2, "http://baiyixun.lem88.com/getCategory"

    const-string v3, "1.0.2.53.2.0"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/inveno/newpiflow/channel/PopMenu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mPopMenu:Lcom/inveno/newpiflow/channel/PopMenu;

    .line 94
    return-void
.end method

.method private initViewAndAnimation(Landroid/content/Context;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V
    .locals 6
    .parameter "context"
    .parameter "animation3DBoxControl"

    .prologue
    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03006d

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, view:Landroid/view/View;
    const v3, 0x7f080159

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    .line 107
    const v3, 0x7f080158

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    .line 108
    const v3, 0x7f080157

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->blueLine:Landroid/view/View;

    .line 110
    iput-object p2, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mAnimation3DBoxControl:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    .line 111
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    invoke-virtual {p2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->addView(Landroid/view/View;)Z

    .line 112
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    invoke-virtual {p2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->addView(Landroid/view/View;)Z

    .line 113
    invoke-virtual {p2, v2}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->addViewDone(Landroid/view/View;)V

    .line 114
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;

    move-result-object v0

    .line 115
    .local v0, config:Lcom/inveno/newpiflow/tools/DeviceConfig;
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 117
    .local v1, settingHeight:I
    iget v3, v0, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p2, v3, v4}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->setCenterXY(II)V

    .line 119
    return-void
.end method

.method private listState(II)V
    .locals 2
    .parameter "card"
    .parameter "list"

    .prologue
    .line 463
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private modeState(III)V
    .locals 2
    .parameter "mode"
    .parameter "pictureMode"
    .parameter "textMode"

    .prologue
    .line 383
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 386
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 387
    :cond_2
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setBlackMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 658
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->blueLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setting:Landroid/widget/FrameLayout;

    const v1, 0x7f0202a5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 664
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvChannel:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMycollection:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 666
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvVersion:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvWhite:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgChannel:Landroid/widget/ImageView;

    const v1, 0x7f020270

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 671
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMycollection:Landroid/widget/ImageView;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 672
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgVersion:Landroid/widget/ImageView;

    const v1, 0x7f0202a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 673
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgWhite:Landroid/widget/ImageView;

    const v1, 0x7f0202ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 674
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvWhite:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->channelSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->myCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->versionUp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->white:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    return-void
.end method

.method private setMoseList(IIIII)V
    .locals 6
    .parameter "card"
    .parameter "list"
    .parameter "mode"
    .parameter "pictureMode"
    .parameter "textMode"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 608
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-nez v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 610
    const-string v0, "list"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    .line 616
    :cond_0
    :goto_0
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v3, :cond_3

    .line 617
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 618
    const-string v0, "mode"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v3, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    .line 629
    :cond_1
    :goto_1
    return-void

    .line 612
    :cond_2
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-ne v0, v2, :cond_0

    .line 613
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 614
    const-string v0, "list"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    .line 620
    :cond_3
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v4, :cond_4

    .line 621
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 622
    const-string v0, "mode"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_1

    .line 624
    :cond_4
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v5, :cond_1

    .line 625
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 626
    const-string v0, "mode"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v5, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_1
.end method

.method private setToolsState()V
    .locals 7

    .prologue
    const v6, 0x7f0c02ba

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 201
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-nez v0, :cond_5

    .line 202
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setWhiteMode()V

    .line 203
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    const v1, 0x7f02026f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 210
    :cond_0
    :goto_0
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v3, :cond_3

    .line 211
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f02029a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 240
    :cond_1
    :goto_1
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->channelSet:Landroid/widget/LinearLayout;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 241
    return-void

    .line 206
    :cond_2
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-ne v0, v2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    const v1, 0x7f020299

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 213
    :cond_3
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v4, :cond_4

    .line 214
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f02029e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 216
    :cond_4
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v5, :cond_1

    .line 217
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f0202a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 220
    :cond_5
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setBlackMode()V

    .line 222
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-nez v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    const v1, 0x7f020268

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 229
    :cond_6
    :goto_2
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v3, :cond_8

    .line 230
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f02026a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 225
    :cond_7
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-ne v0, v2, :cond_6

    .line 226
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    const v1, 0x7f020269

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 232
    :cond_8
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v4, :cond_9

    .line 233
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f02026b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 235
    :cond_9
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v5, :cond_1

    .line 236
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f02026c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private setWhiteMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->blueLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setting:Landroid/widget/FrameLayout;

    const v1, 0x7f0202a6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 641
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvChannel:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMycollection:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvVersion:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 645
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvWhite:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 647
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgChannel:Landroid/widget/ImageView;

    const v1, 0x7f020270

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 648
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMycollection:Landroid/widget/ImageView;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 649
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgVersion:Landroid/widget/ImageView;

    const v1, 0x7f0202a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 650
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgWhite:Landroid/widget/ImageView;

    const v1, 0x7f0202ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 651
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvWhite:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    return-void
.end method

.method public static setfinishstate()V
    .locals 3

    .prologue
    .line 686
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->channelSet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgChannel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvChannel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->channelSet:Landroid/widget/LinearLayout;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 688
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgChannel:Landroid/widget/ImageView;

    const v1, 0x7f020277

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 690
    sget-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvChannel:Landroid/widget/TextView;

    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 692
    :cond_0
    return-void
.end method


# virtual methods
.method public addClickListener(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x3

    const/4 v9, 0x0

    .line 476
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getInformain(Landroid/content/Context;)V

    .line 477
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mAnimation3DBoxControl:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_5

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 480
    .local v7, id:I
    const v0, 0x7f08015b

    if-ne v7, v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mPopMenu:Lcom/inveno/newpiflow/channel/PopMenu;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mPopMenu:Lcom/inveno/newpiflow/channel/PopMenu;

    invoke-virtual {v0, p1}, Lcom/inveno/newpiflow/channel/PopMenu;->showAsDropDown(Landroid/view/View;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const v0, 0x7f080161

    if-ne v7, v0, :cond_2

    .line 489
    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.inveno.flow"

    const-string v1, "com.inveno.flow.activity.CollectionActivity"

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v6, componentName2:Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 493
    .local v8, intent2:Landroid/content/Intent;
    const-string v0, "theme"

    const-string v1, "theme"

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v1, v9, v2}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string v0, "mode"

    const-string v1, "mode"

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v1, v3, v2}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 498
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 499
    .end local v6           #componentName2:Landroid/content/ComponentName;
    .end local v8           #intent2:Landroid/content/Intent;
    :cond_2
    const v0, 0x7f08015e

    if-ne v7, v0, :cond_0

    .line 501
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v3, :cond_3

    .line 503
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f02029e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 511
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-virtual {v0, v5}, Lcom/inveno/newpiflow/widget/PiMainView;->changeMode(I)V

    .line 513
    const-string v0, "mode"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v5, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    .line 514
    :cond_3
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    if-ne v0, v5, :cond_4

    .line 516
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f0202a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 522
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiMainView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiMainView;->changeMode(I)V

    .line 524
    const-string v0, "mode"

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 525
    :cond_4
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    const v1, 0x7f02029a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 533
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-virtual {v0, v3}, Lcom/inveno/newpiflow/widget/PiMainView;->changeMode(I)V

    .line 535
    const-string v0, "mode"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v3, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 539
    .end local v7           #id:I
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 540
    .restart local v7       #id:I
    const v0, 0x7f08016b

    if-ne v7, v0, :cond_7

    .line 542
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->versionControl:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    if-nez v0, :cond_6

    .line 543
    new-instance v0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->versionControl:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->versionControl:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->checkVersion()V

    goto/16 :goto_0

    .line 546
    :cond_7
    const v0, 0x7f080165

    if-ne v7, v0, :cond_9

    .line 548
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-nez v0, :cond_8

    .line 549
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setBlackMode()V

    .line 550
    const v1, 0x7f02026f

    const v2, 0x7f020299

    const v3, 0x7f02029a

    const v4, 0x7f02029e

    const v5, 0x7f0202a3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setMoseList(IIIII)V

    .line 553
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v10}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeThemeAndReset(Landroid/content/Context;I)V

    .line 556
    const-string v0, "theme"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v10, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 558
    :cond_8
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-ne v0, v10, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setWhiteMode()V

    .line 560
    const v1, 0x7f02026f

    const v2, 0x7f020299

    const v3, 0x7f02029a

    const v4, 0x7f02029e

    const v5, 0x7f0202a3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setMoseList(IIIII)V

    .line 563
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v9}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeThemeAndReset(Landroid/content/Context;I)V

    .line 566
    const-string v0, "theme"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v9, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 569
    :cond_9
    const v0, 0x7f080168

    if-ne v7, v0, :cond_0

    .line 571
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-ne v0, v4, :cond_a

    .line 572
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    const v1, 0x7f02026f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 578
    const-string v0, "list"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v9, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    .line 579
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v0, v9}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeStyle(I)V

    goto/16 :goto_0

    .line 582
    :cond_a
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    const v1, 0x7f020299

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 589
    const-string v0, "list"

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;ILandroid/content/Context;)V

    .line 590
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v0, v4}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeStyle(I)V

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 263
    return-void
.end method

.method public findViewAndSetState()V
    .locals 2

    .prologue
    .line 138
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setting:Landroid/widget/FrameLayout;

    .line 139
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->channelSet:Landroid/widget/LinearLayout;

    .line 141
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f080161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->myCollection:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->versionUp:Landroid/widget/LinearLayout;

    .line 145
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mode:Landroid/widget/LinearLayout;

    .line 147
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->list:Landroid/widget/LinearLayout;

    .line 149
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->white:Landroid/widget/LinearLayout;

    .line 159
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f08015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvChannel:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMycollection:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f08016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvVersion:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f080160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvWhite:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f08015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgChannel:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMycollection:Landroid/widget/ImageView;

    .line 175
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgVersion:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView1:Landroid/view/View;

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMode:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgWhite:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->settingView2:Landroid/view/View;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    .line 183
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 258
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mPopMenu:Lcom/inveno/newpiflow/channel/PopMenu;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mPopMenu:Lcom/inveno/newpiflow/channel/PopMenu;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/channel/PopMenu;->onClose()V

    .line 698
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 250
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 252
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 246
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v2, 0x4120

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 271
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->x:F

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->y:F

    .line 274
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setPressState(Landroid/view/View;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->touchTime:J

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setDefaultState(Landroid/view/View;)V

    .line 284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v2}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v2}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->touchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->touchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->clickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->clickTime:J

    .line 292
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->addClickListener(Landroid/view/View;)V

    goto :goto_0

    .line 300
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setDefaultState(Landroid/view/View;)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setDefaultState(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f09002f

    const/4 v4, 0x0

    .line 399
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getInformain(Landroid/content/Context;)V

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 401
    .local v0, id:I
    const v1, 0x7f08015b

    if-ne v0, v1, :cond_1

    .line 404
    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgChannel:Landroid/widget/ImageView;

    const v2, 0x7f020277

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 406
    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvChannel:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->channelSet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const v1, 0x7f080161

    if-ne v0, v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMycollection:Landroid/widget/ImageView;

    const v2, 0x7f020282

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 418
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMycollection:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->myCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 420
    :cond_2
    const v1, 0x7f08016b

    if-ne v0, v1, :cond_3

    .line 422
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgVersion:Landroid/widget/ImageView;

    const v2, 0x7f02028b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 424
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvVersion:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->versionUp:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 426
    :cond_3
    const v1, 0x7f08015e

    if-ne v0, v1, :cond_4

    .line 429
    const v1, 0x7f02029a

    const v2, 0x7f02029e

    const v3, 0x7f0202a3

    invoke-direct {p0, v1, v2, v3}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeState(III)V

    .line 431
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mode:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 433
    :cond_4
    const v1, 0x7f080165

    if-ne v0, v1, :cond_5

    .line 436
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgWhite:Landroid/widget/ImageView;

    const v2, 0x7f0202ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 437
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvWhite:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->white:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 444
    :cond_5
    const v1, 0x7f080168

    if-ne v0, v1, :cond_0

    .line 447
    const v1, 0x7f02026f

    const v2, 0x7f020299

    invoke-direct {p0, v1, v2}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listState(II)V

    .line 448
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public setPressState(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v3, 0x7f090072

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 311
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->getInformain(Landroid/content/Context;)V

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 313
    .local v0, id:I
    const v1, 0x7f08015b

    if-ne v0, v1, :cond_2

    .line 315
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-nez v1, :cond_1

    .line 316
    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->channelSet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-ne v1, v2, :cond_0

    .line 319
    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgChannel:Landroid/widget/ImageView;

    const v2, 0x7f020277

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 321
    sget-object v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvChannel:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 323
    :cond_2
    const v1, 0x7f080161

    if-ne v0, v1, :cond_4

    .line 325
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-nez v1, :cond_3

    .line 326
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->myCollection:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 328
    :cond_3
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-ne v1, v2, :cond_0

    .line 329
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgMycollection:Landroid/widget/ImageView;

    const v2, 0x7f020281

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 331
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMycollection:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 333
    :cond_4
    const v1, 0x7f08016b

    if-ne v0, v1, :cond_6

    .line 335
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-nez v1, :cond_5

    .line 336
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->versionUp:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 338
    :cond_5
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-ne v1, v2, :cond_0

    .line 339
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgVersion:Landroid/widget/ImageView;

    const v2, 0x7f02028d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 341
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvVersion:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 343
    :cond_6
    const v1, 0x7f08015e

    if-ne v0, v1, :cond_8

    .line 345
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-nez v1, :cond_7

    .line 346
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->mode:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 347
    :cond_7
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-ne v1, v2, :cond_0

    .line 348
    const v1, 0x7f02027f

    const v2, 0x7f020286

    const v3, 0x7f02028a

    invoke-direct {p0, v1, v2, v3}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->modeState(III)V

    .line 351
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvMode:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 353
    :cond_8
    const v1, 0x7f080165

    if-ne v0, v1, :cond_a

    .line 355
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-nez v1, :cond_9

    .line 356
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->white:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 357
    :cond_9
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-ne v1, v2, :cond_0

    .line 358
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgWhite:Landroid/widget/ImageView;

    const v2, 0x7f020274

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 359
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvWhite:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 361
    :cond_a
    const v1, 0x7f080168

    if-ne v0, v1, :cond_0

    .line 363
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-nez v1, :cond_b

    .line 364
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 365
    :cond_b
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->themeId:I

    if-ne v1, v2, :cond_0

    .line 366
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-nez v1, :cond_d

    .line 367
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    const v2, 0x7f020276

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 371
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->tvList:Landroid/widget/TextView;

    sget-object v2, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->SETTING_TEXTVIEW:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 368
    :cond_d
    iget v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->listId:I

    if-ne v1, v4, :cond_c

    .line 369
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->imgList:Landroid/widget/ImageView;

    const v2, 0x7f02027c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
