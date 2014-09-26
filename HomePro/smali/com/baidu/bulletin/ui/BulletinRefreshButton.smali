.class public Lcom/baidu/bulletin/ui/BulletinRefreshButton;
.super Landroid/widget/FrameLayout;
.source "BulletinRefreshButton.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final REFRESH_FONT_COLOR:I = 0x0

.field private static final REFRESH_FONT_SIZE:I = 0xe

.field private static final RES_ICON_PROCESSING:I = 0x7f020096

.field private static final RES_ICON_REST:I = 0x7f020095

.field public static final STATE_CLICKED:I = 0x1

.field public static final STATE_NEWMESSAGE:I = 0x3

.field public static final STATE_PROCESSING:I = 0x2

.field public static final STATE_REST:I


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mCountView:Landroid/widget/TextView;

.field private mRefreshIcon:Landroid/widget/ImageView;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 38
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->REFRESH_FONT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/BulletinRefreshButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    return v0
.end method

.method private onNewMessage(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 110
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    .line 111
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 123
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->setClickable(Z)V

    .line 127
    return-void
.end method

.method private onProcessing()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 93
    iget v1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    if-ne v1, v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iput v4, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    .line 96
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mCountView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 105
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->setClickable(Z)V

    goto :goto_0
.end method

.method private onRest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iput v2, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    .line 83
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 84
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->setClickable(Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mRefreshIcon:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mBackground:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mCountView:Landroid/widget/TextView;

    .line 53
    new-instance v0, Lcom/baidu/bulletin/ui/BulletinRefreshButton$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton$1;-><init>(Lcom/baidu/bulletin/ui/BulletinRefreshButton;)V

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 131
    iget v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 138
    iget v0, p0, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setState(II)V
    .locals 0
    .parameter "state"
    .parameter "count"

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 65
    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->onRest()V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->onProcessing()V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->onProcessing()V

    goto :goto_0

    .line 74
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/baidu/bulletin/ui/BulletinRefreshButton;->onNewMessage(I)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
