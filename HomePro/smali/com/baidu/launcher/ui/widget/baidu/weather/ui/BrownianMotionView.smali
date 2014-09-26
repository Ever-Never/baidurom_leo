.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;
.super Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;
.source "BrownianMotionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;
    }
.end annotation


# static fields
.field private static final MAX_ANIM_LENGTH:I = 0x1388

.field public static final TYPE_CLOUDY:I = 0x2

.field public static final TYPE_DUSTY:I = 0x4

.field public static final TYPE_FOGGY:I = 0x3

.field public static final TYPE_RAINY:I = 0x5

.field public static final TYPE_SNOW:I = 0x6

.field public static final TYPE_SUNNY_DAY:I = 0x0

.field public static final TYPE_SUNNY_NIGHT:I = 0x1


# instance fields
.field private final BIG_DOT_SPEED:I

.field private final CLOUD_0_SPEED:I

.field private final CLOUD_1_SPEED:I

.field private final CLOUD_2_SPEED:I

.field private final MEDIUM_DOT_SPEED:I

.field private final NUM_OF_DOT:I

.field private final SMALL_DOT_SPEED:I

.field mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

.field private mBgNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;

.field private mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

.field private mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

.field private mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

.field mContentCanvas:Landroid/graphics/Canvas;

.field private mCurrentType:I

.field private mDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;",
            ">;"
        }
    .end annotation
.end field

.field mEffectBgContent:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mPDmode:Landroid/graphics/PorterDuffXfermode;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mCurrentType:I

    .line 37
    const/16 v0, 0xf

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->NUM_OF_DOT:I

    .line 39
    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->SMALL_DOT_SPEED:I

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->MEDIUM_DOT_SPEED:I

    .line 41
    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->BIG_DOT_SPEED:I

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_0_SPEED:I

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_1_SPEED:I

    .line 52
    const/16 v0, 0x78

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_2_SPEED:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mMaskPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mPDmode:Landroid/graphics/PorterDuffXfermode;

    .line 76
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    .line 78
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    .line 80
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mContentCanvas:Landroid/graphics/Canvas;

    .line 62
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mCurrentType:I

    .line 37
    const/16 v0, 0xf

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->NUM_OF_DOT:I

    .line 39
    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->SMALL_DOT_SPEED:I

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->MEDIUM_DOT_SPEED:I

    .line 41
    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->BIG_DOT_SPEED:I

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_0_SPEED:I

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_1_SPEED:I

    .line 52
    const/16 v0, 0x78

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_2_SPEED:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mMaskPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mPDmode:Landroid/graphics/PorterDuffXfermode;

    .line 76
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    .line 78
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    .line 80
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mContentCanvas:Landroid/graphics/Canvas;

    .line 67
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mCurrentType:I

    .line 37
    const/16 v0, 0xf

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->NUM_OF_DOT:I

    .line 39
    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->SMALL_DOT_SPEED:I

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->MEDIUM_DOT_SPEED:I

    .line 41
    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->BIG_DOT_SPEED:I

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_0_SPEED:I

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_1_SPEED:I

    .line 52
    const/16 v0, 0x78

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->CLOUD_2_SPEED:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mMaskPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mPDmode:Landroid/graphics/PorterDuffXfermode;

    .line 76
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    .line 78
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    .line 80
    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mContentCanvas:Landroid/graphics/Canvas;

    .line 73
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mHeight:I

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;

    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;

    iput v2, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->x:I

    .line 124
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;

    iput v2, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->y:I

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->addNode(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->initDots()V

    .line 130
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->initClouds()V

    .line 133
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02037e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    .line 135
    return-void
.end method

.method private initClouds()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1388

    .line 157
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    .line 159
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setMaxAlphaDuration(I)V

    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->addNode(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    .line 163
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    .line 165
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setMaxAlphaDuration(I)V

    .line 167
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->addNode(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    .line 169
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-direct {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    .line 171
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setMaxAlphaDuration(I)V

    .line 173
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->addNode(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    .line 176
    return-void
.end method

.method private initDots()V
    .locals 3

    .prologue
    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mDots:Ljava/util/List;

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    .line 142
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .local v1, n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setMaxAlphaDuration(I)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->addNode(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    .line 148
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mDots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v1           #n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->setMotionType(I)V

    .line 154
    return-void
.end method

.method private setToCloudDark()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->mBitmapDarkCloud2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    return-void
.end method

.method private setToSnow(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 242
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    .line 244
    .local v1, n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    rem-int/lit8 v2, v0, 0x3

    packed-switch v2, :pswitch_data_0

    .line 241
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getSnowDotBitmapBig()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 253
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getSnowDotBitmapMedium()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 259
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getSnowDotBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 267
    .end local v1           #n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    :cond_0
    return-void

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setToSunnyDay(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    .line 184
    .local v1, n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    rem-int/lit8 v2, v0, 0x3

    packed-switch v2, :pswitch_data_0

    .line 181
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getDayDotBitmapBig()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 193
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getDayDotBitmapMedium()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 199
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getDayDotBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 207
    .end local v1           #n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    :cond_0
    return-void

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setToSunnyNight(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 212
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    .line 214
    .local v1, n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    rem-int/lit8 v2, v0, 0x3

    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getNightDotBitmapBig()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 223
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getNightDotBitmapMedium()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 229
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ResourceHolder;->getNightDotBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    goto :goto_1

    .line 237
    .end local v1           #n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    :cond_0
    return-void

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public doMotion()V
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mCurrentType:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 351
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->doMotionCloud()V

    goto :goto_0

    .line 359
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->doMotionDot()V

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public doMotionCloud()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->x:I

    .line 322
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iput v3, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->y:I

    .line 324
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {v0, v3, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setTargetLocation(II)V

    .line 325
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    .line 328
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->x:I

    .line 329
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget v1, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->height:I

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->y:I

    .line 331
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget v1, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->y:I

    invoke-virtual {v0, v3, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setTargetLocation(II)V

    .line 332
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds1:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    .line 335
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->x:I

    .line 336
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget v1, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->height:I

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->y:I

    .line 338
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    iget v1, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->y:I

    invoke-virtual {v0, v3, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setTargetLocation(II)V

    .line 339
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mClouds2:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setSpeed(I)V

    .line 341
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->invalidate()V

    .line 343
    return-void
.end method

.method public doMotionDot()V
    .locals 8

    .prologue
    .line 300
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mDots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;

    .line 302
    .local v1, n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 304
    .local v2, x:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 306
    .local v3, y:I
    iput v2, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->x:I

    .line 307
    iput v3, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->y:I

    .line 309
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 311
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 313
    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;->setTargetLocation(II)V

    goto :goto_0

    .line 315
    .end local v1           #n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/OverlayNode;
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->invalidate()V

    .line 317
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mWidth:I

    .line 105
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mHeight:I

    .line 107
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 109
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mContentCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mPDmode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mContentCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 117
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->onSizeChanged(IIII)V

    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    .line 91
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mEffectBgContent:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mContentCanvas:Landroid/graphics/Canvas;

    .line 93
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgMask:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 99
    :cond_1
    return-void
.end method

.method public setBGImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mBgNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/ImageNode;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->invalidate()V

    .line 388
    return-void
.end method

.method public setBGResId(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 367
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mWidth:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 368
    move v1, p1

    .line 369
    .local v1, resId:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$1;

    invoke-direct {v3, p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    .end local v1           #resId:I
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)V

    .line 380
    .local v0, decode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setMotionType(I)V
    .locals 1
    .parameter "t"

    .prologue
    .line 277
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mCurrentType:I

    .line 279
    packed-switch p1, :pswitch_data_0

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mDots:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->setToSunnyDay(Ljava/util/List;)V

    .line 297
    :goto_0
    :pswitch_1
    return-void

    .line 281
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mDots:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->setToSunnyDay(Ljava/util/List;)V

    goto :goto_0

    .line 284
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mDots:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->setToSunnyNight(Ljava/util/List;)V

    goto :goto_0

    .line 287
    :pswitch_4
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mDots:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->setToSnow(Ljava/util/List;)V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
