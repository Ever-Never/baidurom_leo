.class public Lcom/baidu/bulletin/ui/flippage/FlipPageView;
.super Landroid/view/ViewGroup;
.source "FlipPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/flippage/FlipPageView$2;,
        Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;,
        Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;,
        Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;,
        Lcom/baidu/bulletin/ui/flippage/FlipPageView$Listener;
    }
.end annotation


# static fields
.field private static final PAGE_IMAGE_PREDOWNLOAD_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisableFlipListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;

.field private mDisablePage:Landroid/view/View;

.field private mEnable:Z

.field private mEndPage:Landroid/view/View;

.field private mFlippable:Z

.field private mListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$Listener;

.field private mPageFlipper:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

.field mPageFlipperProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

.field private mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mFlippable:Z

    .line 41
    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEnable:Z

    .line 73
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;-><init>(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mPageFlipperProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    .line 55
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->initPagedView()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mFlippable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisableFlipListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/flippage/FlipPageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->switchToPage(I)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEndPage:Landroid/view/View;

    return-object v0
.end method

.method private initPagedView()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;-><init>(Lcom/baidu/bulletin/ui/flippage/FlipPageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    .line 60
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->addView(Landroid/view/View;)V

    .line 62
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mPageFlipperProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;-><init>(Landroid/content/Context;Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mPageFlipper:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    .line 63
    return-void
.end method

.method private switchToPage(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v0

    .line 142
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$Listener;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$Listener;

    invoke-interface {v1, p0, v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$Listener;->onPageChanged(Landroid/view/View;II)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEnable:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mPageFlipper:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->layout(IIII)V

    .line 163
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mPageFlipper:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->layout(IIII)V

    .line 164
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 167
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 154
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->measure(II)V

    .line 155
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 158
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 518
    move-object v0, p1

    check-cast v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;

    .line 519
    .local v0, ss:Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 520
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    iget v2, v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;->currentPage:I

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setIndex(I)Z

    .line 521
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 510
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 511
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 512
    .local v0, ss:Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v2

    iput v2, v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$SavedState;->currentPage:I

    .line 513
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEnable:Z

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mPageFlipper:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setAdapter(Landroid/widget/Adapter;)V

    .line 201
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->requestLayout()V

    .line 202
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->invalidate()V

    .line 203
    return-void
.end method

.method public setDisableFlipListener(Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;)V
    .locals 0
    .parameter "disableFlipListener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisableFlipListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;

    .line 71
    return-void
.end method

.method public setDisabledPage(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->removeView(Landroid/view/View;)V

    .line 234
    iput-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    .line 237
    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->setFlipPageViewEnable(Z)V

    .line 238
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->addView(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setVisibility(I)V

    .line 248
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->removeView(Landroid/view/View;)V

    .line 243
    iput-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisablePage:Landroid/view/View;

    .line 245
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->setFlipPageViewEnable(Z)V

    .line 246
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEndPageView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEndPage:Landroid/view/View;

    .line 216
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 219
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 220
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->addView(Landroid/view/View;)V

    .line 223
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mPageFlipper:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->setEndPageView(Landroid/view/View;)V

    .line 224
    return-void
.end method

.method public setFlipPageViewEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEnable:Z

    .line 228
    return-void
.end method

.method public setFlippable(Z)V
    .locals 0
    .parameter "flippable"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mFlippable:Z

    .line 67
    return-void
.end method

.method public setListener(Lcom/baidu/bulletin/ui/flippage/FlipPageView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$Listener;

    .line 191
    return-void
.end method

.method public setPageImages(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set view position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with images downloaded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setPageImages(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public syncCurrentPage()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->syncCurrentPage()V

    .line 261
    :cond_0
    return-void
.end method
