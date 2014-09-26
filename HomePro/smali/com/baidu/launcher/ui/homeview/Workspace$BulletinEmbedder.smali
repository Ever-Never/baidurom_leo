.class Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BulletinEmbedder"
.end annotation


# static fields
.field private static final ANIMATOR_COUNT:I = 0x1

.field private static final BACKGROUND_MASK_MAX_ALPHA:I = 0xb2

.field private static final DEBUG:Z = true


# instance fields
.field private mAnimatorView:[Landroid/view/View;

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCurrentAlpha:F

.field private mIsSpaceScrolling:Z

.field private mLastScrollX:I

.field private mSingleScreenWidth:I

.field private mTotalScreenWidth:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V
    .locals 1
    .parameter

    .prologue
    .line 4554
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4560
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mLastScrollX:I

    .line 4563
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mAnimatorView:[Landroid/view/View;

    .line 4570
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mCurrentAlpha:F

    .line 4571
    const/high16 v0, -0x100

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mBackgroundColor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/Workspace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4554
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;-><init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 4554
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptUpdateWallpaperOffset()Z

    move-result v0

    return v0
.end method

.method private getScrollProgressWithOutBulletin(ILandroid/view/View;IZ)F
    .locals 7
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"
    .parameter "leftMode"

    .prologue
    const/high16 v6, 0x3f80

    .line 5061
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 5063
    .local v1, halfScreenSize:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget v5, v5, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    add-int v3, v4, v5

    .line 5064
    .local v3, totalDistance:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4, p3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5, p3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz p4, :cond_0

    neg-int v1, v1

    .end local v1           #halfScreenSize:I
    :cond_0
    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 5066
    .local v0, delta:I
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 5067
    .local v2, scrollProgress:F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 5068
    const/high16 v4, -0x4080

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 5069
    return v2
.end method

.method private interceptAcceleratedOverScroll(FI)V
    .locals 8
    .parameter "amount"
    .parameter "width"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 4603
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v2

    .line 4606
    .local v2, screenSize:I
    const/high16 v5, 0x4000

    int-to-float v6, v2

    div-float v6, p1, v6

    mul-float v0, v5, v6

    .line 4607
    .local v0, f:F
    cmpl-float v5, v0, v7

    if-nez v5, :cond_0

    .line 4622
    :goto_0
    return-void

    .line 4610
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 4611
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v0, v5

    .line 4613
    :cond_1
    int-to-float v5, v2

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4614
    .local v1, overScrollAmount:I
    const/4 v3, 0x0

    .line 4615
    .local v3, switching:Z
    cmpg-float v5, p1, v7

    if-gez v5, :cond_3

    .line 4616
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    if-eqz v3, :cond_2

    move v1, v4

    .end local v1           #overScrollAmount:I
    :cond_2
    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v5, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1802(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4617
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v4, p2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2602(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    goto :goto_0

    .line 4619
    .restart local v1       #overScrollAmount:I
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    if-eqz v3, :cond_4

    :goto_1
    add-int/2addr v4, v6

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v5, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1802(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4620
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2702(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    goto :goto_0

    :cond_4
    move v4, v1

    .line 4619
    goto :goto_1
.end method

.method private interceptUpdateWallpaperOffset()Z
    .locals 1

    .prologue
    .line 5057
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenNoValid(I)Z
    .locals 2
    .parameter "screen"

    .prologue
    const/4 v0, 0x1

    .line 4876
    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetBackgroundAlpha()V
    .locals 1

    .prologue
    .line 5157
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mCurrentAlpha:F

    .line 5158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 5159
    return-void
.end method

.method private setBackgroundAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 5162
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 5163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 5164
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5166
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5168
    return-void
.end method

.method private setPanelVisible(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    const/4 v6, 0x0

    .line 5196
    if-eqz p1, :cond_2

    .line 5197
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mAnimatorView:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 5198
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5199
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 5197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5202
    .end local v4           #view:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3700(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/widget/Scroller;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    const/high16 v5, 0x3f80

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSence(F)V

    .line 5203
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->requestLayout()V

    .line 5205
    const-string v5, "Launcher.Workspace"

    const-string v6, "panel is visible"

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 5215
    :goto_1
    return-void

    .line 5207
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3700(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/widget/Scroller;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    .line 5208
    .local v2, isFinished:Z
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mAnimatorView:[Landroid/view/View;

    .restart local v0       #arr$:[Landroid/view/View;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 5209
    .restart local v4       #view:Landroid/view/View;
    if-eqz v2, :cond_3

    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5208
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v5, v6

    .line 5209
    goto :goto_3

    .line 5211
    .end local v4           #view:Landroid/view/View;
    :cond_4
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSence(F)V

    .line 5213
    const-string v5, "Launcher.Workspace"

    const-string v6, "panel is gone"

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSence(F)V
    .locals 3
    .parameter "maskAlpha"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 5138
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mCurrentAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 5154
    :goto_0
    return-void

    .line 5141
    :cond_0
    cmpl-float v0, v1, p1

    if-nez v0, :cond_1

    .line 5142
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Indicator;->setVisibility(I)V

    .line 5143
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setAlpha(F)V

    .line 5144
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->resetBackgroundAlpha()V

    .line 5153
    :goto_1
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mCurrentAlpha:F

    goto :goto_0

    .line 5145
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    .line 5146
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setVisibility(I)V

    goto :goto_1

    .line 5149
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Indicator;->setVisibility(I)V

    .line 5150
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setAlpha(F)V

    goto :goto_1
.end method


# virtual methods
.method public canOverScroll()Z
    .locals 2

    .prologue
    .line 4880
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 4881
    const/4 v0, 0x1

    .line 4883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeScreen(I)I
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 4887
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4894
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 4889
    .restart local p1
    :cond_1
    if-gtz p1, :cond_2

    .line 4890
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 4891
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 4892
    const/4 p1, 0x1

    goto :goto_0
.end method

.method enablePanelCache(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 5245
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mAnimatorView:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5246
    .local v3, view:Landroid/view/View;
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 5245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5248
    :cond_0
    return-void
.end method

.method public getVisibleChildCount()I
    .locals 1

    .prologue
    .line 5229
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5230
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 5231
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public inBulletinScreen()Z
    .locals 2

    .prologue
    .line 5179
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mLauncher:Lcom/baidu/launcher/app/Launcher;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7900(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/app/Launcher;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initPanel()V
    .locals 6

    .prologue
    .line 5183
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->inBulletinScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5184
    const-string v4, "initPanel"

    const-string v5, "panel is gone"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 5185
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mAnimatorView:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5186
    .local v3, view:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5188
    .end local v3           #view:Landroid/view/View;
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSence(F)V

    .line 5193
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :goto_1
    return-void

    .line 5190
    :cond_1
    const-string v4, "initPanel"

    const-string v5, "panel is visible"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 5191
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setPanelVisible(Z)V

    goto :goto_1
.end method

.method public interceptCheckForOverScroll()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4579
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1700(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4580
    const/4 v1, 0x0

    .line 4581
    .local v1, overScroll:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1900(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1802(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4582
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    .line 4583
    .local v0, count:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    if-nez v5, :cond_0

    .line 4585
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    add-int/lit8 v8, v0, -0x2

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v7

    sub-int/2addr v6, v7

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2002(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4588
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v6, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v2, v5, v4

    .line 4589
    .local v2, width:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2100(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 4590
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F
    invoke-static {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2200(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v4, v2

    .line 4591
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v4, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2302(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4596
    :cond_1
    :goto_0
    int-to-float v4, v1

    invoke-direct {p0, v4, v2}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptAcceleratedOverScroll(FI)V

    .line 4599
    .end local v0           #count:I
    .end local v1           #overScroll:I
    .end local v2           #width:I
    :goto_1
    return v3

    .line 4592
    .restart local v0       #count:I
    .restart local v1       #overScroll:I
    .restart local v2       #width:I
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2400(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    if-le v4, v5, :cond_1

    .line 4593
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F
    invoke-static {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2200(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    sub-int v1, v4, v5

    .line 4594
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2502(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #overScroll:I
    .end local v2           #width:I
    :cond_3
    move v3, v4

    .line 4599
    goto :goto_1
.end method

.method public interceptDispatchDraw(Landroid/graphics/Canvas;)Z
    .locals 28
    .parameter "canvas"

    .prologue
    .line 4734
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mCurrentAlpha:F

    const/high16 v4, 0x3f80

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 4736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 4738
    :cond_0
    const/4 v2, 0x0

    .line 4847
    :goto_0
    return v2

    .line 4740
    :cond_1
    const/16 v20, 0x0

    .line 4741
    .local v20, restore:Z
    const/16 v21, 0x0

    .line 4747
    .local v21, restoreCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-boolean v2, v2, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-boolean v2, v2, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewClosing:Z

    if-eqz v2, :cond_6

    .line 4749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4000(Lcom/baidu/launcher/ui/homeview/Workspace;)J

    move-result-wide v4

    const-wide/16 v26, 0x0

    cmp-long v2, v4, v26

    if-nez v2, :cond_4

    .line 4750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J
    invoke-static {v2, v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4002(Lcom/baidu/launcher/ui/homeview/Workspace;J)J

    .line 4751
    const-wide/16 v10, 0x0

    .line 4755
    .local v10, currentTime:J
    :goto_1
    const-wide/16 v4, 0x12c

    cmp-long v2, v10, v4

    if-ltz v2, :cond_5

    .line 4756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v4, 0x0

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIsAnimating:Z
    invoke-static {v2, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4102(Lcom/baidu/launcher/ui/homeview/Workspace;Z)Z

    .line 4757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    .line 4758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewClosing:Z

    .line 4759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v4, 0x0

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mThumbnailRect:Landroid/graphics/RectF;
    invoke-static {v2, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4202(Lcom/baidu/launcher/ui/homeview/Workspace;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 4760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->clearChildrenCache()V

    .line 4761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    .line 4765
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDrawingTime()J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 4844
    .end local v10           #currentTime:J
    :cond_2
    :goto_3
    if-eqz v20, :cond_3

    .line 4845
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4847
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 4753
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewStartTime:J
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4000(Lcom/baidu/launcher/ui/homeview/Workspace;)J

    move-result-wide v26

    sub-long v10, v4, v26

    .restart local v10       #currentTime:J
    goto :goto_1

    .line 4763
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    goto :goto_2

    .line 4768
    .end local v10           #currentTime:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .line 4771
    .local v16, halfScreenSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    add-int v23, v2, v16

    .line 4773
    .local v23, screenCenter:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mLastScreenCenter:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4300(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    move/from16 v0, v23

    if-eq v0, v2, :cond_7

    .line 4774
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptScreenScrolled(I)Z

    .line 4775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move/from16 v0, v23

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mLastScreenCenter:I
    invoke-static {v2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4302(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4777
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempVisiblePagesRange:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->interceptGetVisiblePages([I)V

    .line 4779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempVisiblePagesRange:[I

    const/4 v4, 0x0

    aget v19, v2, v4

    .line 4780
    .local v19, leftScreen:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/Workspace;->mTempVisiblePagesRange:[I

    const/4 v4, 0x1

    aget v22, v2, v4

    .line 4781
    .local v22, rightScreen:I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_2

    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_2

    .line 4782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDrawingTime()J

    move-result-wide v13

    .line 4784
    .local v13, drawingTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4400(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollY:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4500(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4600(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mRight:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mLeft:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollY:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$4900(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mBottom:I
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v26

    add-int v6, v6, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTop:I
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5100(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v26

    sub-int v6, v6, v26

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4787
    move/from16 v17, v19

    .local v17, i:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v22

    if-gt v0, v1, :cond_9

    .line 4788
    if-nez v17, :cond_8

    .line 4787
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 4790
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v13, v14}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_5

    .line 4792
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 4795
    .end local v13           #drawingTime:J
    .end local v17           #i:I
    .end local v19           #leftScreen:I
    .end local v22           #rightScreen:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5200(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3400(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_b

    const/4 v15, 0x1

    .line 4797
    .local v15, fastDraw:Z
    :goto_6
    if-eqz v15, :cond_c

    .line 4798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 4799
    .local v3, child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDrawingTime()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_3

    .line 4795
    .end local v3           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v15           #fastDraw:Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    .line 4802
    .restart local v15       #fastDraw:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDrawingTime()J

    move-result-wide v13

    .line 4803
    .restart local v13       #drawingTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v25

    .line 4804
    .local v25, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5300(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v25

    int-to-float v4, v0

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v24, v0

    .line 4805
    .local v24, scrollPos:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v9

    .line 4806
    .local v9, childCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5400(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    rem-int v2, v2, v25

    if-eqz v2, :cond_11

    const/4 v12, 0x1

    .line 4809
    .local v12, drawRight:Z
    :goto_7
    const/16 v18, 0x0

    .line 4810
    .local v18, isScrollToRight:Z
    sget-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x2

    if-le v9, v2, :cond_12

    const/4 v7, 0x1

    .line 4811
    .local v7, loop:Z
    :goto_8
    const/high16 v2, 0x3f80

    cmpg-float v2, v24, v2

    if-gez v2, :cond_13

    if-eqz v7, :cond_13

    .line 4812
    add-int/lit8 v19, v9, -0x1

    .line 4813
    .restart local v19       #leftScreen:I
    const/16 v22, 0x1

    .line 4824
    .restart local v22       #rightScreen:I
    :cond_d
    :goto_9
    const/4 v8, 0x0

    .line 4825
    .local v8, scrollType:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isScreenNoValid(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 4827
    .restart local v3       #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_e

    if-nez v18, :cond_e

    .line 4828
    const/4 v8, 0x1

    .line 4830
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3900(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    move-object/from16 v4, p1

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace;->scrollAnimation(Landroid/view/View;Landroid/graphics/Canvas;IIZI)V
    invoke-static/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5500(Lcom/baidu/launcher/ui/homeview/Workspace;Landroid/view/View;Landroid/graphics/Canvas;IIZI)V

    .line 4832
    .end local v3           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_f
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isScreenNoValid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 4834
    .restart local v3       #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_10

    if-eqz v18, :cond_10

    .line 4835
    const/4 v8, 0x2

    .line 4837
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3900(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    move-object/from16 v4, p1

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace;->scrollAnimation(Landroid/view/View;Landroid/graphics/Canvas;IIZI)V
    invoke-static/range {v2 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5500(Lcom/baidu/launcher/ui/homeview/Workspace;Landroid/view/View;Landroid/graphics/Canvas;IIZI)V

    goto/16 :goto_3

    .line 4806
    .end local v3           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v7           #loop:Z
    .end local v8           #scrollType:I
    .end local v12           #drawRight:Z
    .end local v18           #isScrollToRight:Z
    .end local v19           #leftScreen:I
    .end local v22           #rightScreen:I
    :cond_11
    const/4 v12, 0x0

    goto :goto_7

    .line 4810
    .restart local v12       #drawRight:Z
    .restart local v18       #isScrollToRight:Z
    :cond_12
    const/4 v7, 0x0

    goto :goto_8

    .line 4815
    .restart local v7       #loop:Z
    :cond_13
    move/from16 v0, v24

    float-to-int v2, v0

    add-int/lit8 v4, v9, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 4816
    .restart local v19       #leftScreen:I
    add-int/lit8 v22, v19, 0x1

    .line 4817
    .restart local v22       #rightScreen:I
    if-eqz v7, :cond_d

    .line 4818
    rem-int v22, v22, v9

    .line 4819
    if-nez v22, :cond_14

    .line 4820
    const/16 v22, 0x1

    .line 4821
    :cond_14
    const/16 v18, 0x1

    goto :goto_9
.end method

.method protected interceptGetVisiblePages([I)V
    .locals 10
    .parameter "range"

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4851
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    .line 4852
    .local v1, pageCount:I
    if-le v1, v8, :cond_2

    .line 4853
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 4854
    .local v2, pageWidth:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v4

    .line 4855
    .local v4, screenWidth:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v6, v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledRelativeChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int v5, v6, v2

    .line 4856
    .local v5, x:I
    const/4 v0, 0x0

    .line 4857
    .local v0, leftScreen:I
    const/4 v3, 0x0

    .line 4858
    .local v3, rightScreen:I
    :goto_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5600(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 4859
    add-int/lit8 v0, v0, 0x1

    .line 4860
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget v7, v7, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_0

    .line 4862
    :cond_0
    move v3, v0

    .line 4863
    :goto_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v6

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_1

    .line 4864
    add-int/lit8 v3, v3, 0x1

    .line 4865
    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v7, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget v7, v7, Lcom/baidu/launcher/ui/homeview/Workspace;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_1

    .line 4867
    :cond_1
    aput v0, p1, v9

    .line 4868
    aput v3, p1, v8

    .line 4873
    .end local v0           #leftScreen:I
    .end local v2           #pageWidth:I
    .end local v3           #rightScreen:I
    .end local v4           #screenWidth:I
    .end local v5           #x:I
    :goto_2
    return-void

    .line 4870
    :cond_2
    aput v7, p1, v9

    .line 4871
    aput v7, p1, v8

    goto :goto_2
.end method

.method public interceptNextScreenCompute(IIFZ)Z
    .locals 7
    .parameter "whichScreen"
    .parameter "velocityX"
    .parameter "scrolledPos"
    .parameter "loop"

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 4712
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->isSmall()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4713
    const/16 v3, 0x258

    if-le p2, v3, :cond_2

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v4

    if-eqz p4, :cond_0

    move v3, v2

    :goto_0
    if-le v4, v3, :cond_2

    .line 4716
    int-to-float v2, p1

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 4718
    .local v0, bound:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3, p2, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    .line 4730
    .end local v0           #bound:I
    :goto_2
    return v1

    :cond_0
    move v3, v1

    .line 4713
    goto :goto_0

    .line 4716
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v0

    goto :goto_1

    .line 4719
    :cond_2
    const/16 v3, -0x258

    if-ge p2, v3, :cond_5

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v4

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v5

    if-eqz p4, :cond_3

    move v3, v2

    :goto_3
    sub-int v3, v5, v3

    if-ge v4, v3, :cond_5

    .line 4722
    int-to-float v2, p1

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 4724
    .restart local v0       #bound:I
    :goto_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3, p2, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    goto :goto_2

    .end local v0           #bound:I
    :cond_3
    move v3, v1

    .line 4719
    goto :goto_3

    .line 4722
    :cond_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v0

    goto :goto_4

    .line 4726
    :cond_5
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v3, p1, v2, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(III)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 4730
    goto :goto_2
.end method

.method public interceptScreenScrolled(I)Z
    .locals 9
    .parameter "screenCenter"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4898
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v5

    if-nez v5, :cond_6

    .line 4899
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildOffset(I)I

    move-result v5

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v8, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getRelativeChildOffset(I)I

    move-result v8

    sub-int v4, v5, v8

    .line 4900
    .local v4, width:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v8

    if-le v5, v8, :cond_5

    .line 4901
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    if-gez v5, :cond_2

    move v1, v6

    .line 4902
    .local v1, index:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 4903
    .local v0, cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    if-gez v5, :cond_3

    move v5, v6

    :goto_1
    invoke-direct {p0, p1, v0, v1, v5}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->getScrollProgressWithOutBulletin(ILandroid/view/View;IZ)F

    move-result v3

    .line 4904
    .local v3, scrollProgress:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    if-ne v1, v6, :cond_1

    move v7, v6

    :cond_1
    invoke-virtual {v0, v5, v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOverScrollAmount(FZ)V

    .line 4905
    const/high16 v5, -0x3e40

    mul-float v2, v5, v3

    .line 4906
    .local v2, rotation:F
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5800()F

    move-result v7

    mul-float/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setCameraDistance(F)V

    .line 4907
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v7, v5

    if-ne v1, v6, :cond_4

    const/high16 v5, 0x3f40

    :goto_2
    mul-float/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setPivotX(F)V

    .line 4908
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setPivotY(F)V

    .line 4909
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setRotationY(F)V

    .line 4910
    invoke-virtual {v0, v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 4917
    .end local v0           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #index:I
    .end local v2           #rotation:F
    .end local v3           #scrollProgress:F
    .end local v4           #width:I
    :goto_3
    return v6

    .line 4901
    .restart local v4       #width:I
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    goto :goto_0

    .restart local v0       #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .restart local v1       #index:I
    :cond_3
    move v5, v7

    .line 4903
    goto :goto_1

    .line 4907
    .restart local v2       #rotation:F
    .restart local v3       #scrollProgress:F
    :cond_4
    const/high16 v5, 0x3e80

    goto :goto_2

    .line 4912
    .end local v0           #cl:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #index:I
    .end local v2           #rotation:F
    .end local v3           #scrollProgress:F
    :cond_5
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->resetOverscrollTransforms()V

    .line 4913
    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->resetOverscrollTransforms()V

    goto :goto_3

    .end local v4           #width:I
    :cond_6
    move v6, v7

    .line 4917
    goto :goto_3
.end method

.method public interceptScrollAnimation(Landroid/view/View;Landroid/graphics/Canvas;IIZI)Z
    .locals 14
    .parameter "child"
    .parameter "canvas"
    .parameter "dir"
    .parameter "animType"
    .parameter "isLoop"
    .parameter "scrollEndType"

    .prologue
    .line 4921
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4922
    const/4 v9, 0x0

    .line 5053
    :goto_0
    return v9

    .line 4923
    :cond_0
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v8

    .line 4924
    .local v8, width:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->getHeight()I

    move-result v4

    .line 4925
    .local v4, heitht:I
    if-nez v8, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    .line 4927
    :cond_1
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$5900(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 4928
    .local v7, scrollPos:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->getDrawingTime()J

    move-result-wide v2

    .line 4929
    .local v2, drawingTime:J
    if-nez p1, :cond_2

    .line 4930
    const/4 v9, 0x1

    goto :goto_0

    .line 4932
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 4933
    .local v6, saveCount:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    .line 4934
    .local v1, childCount:I
    if-eqz p5, :cond_7

    const/4 v9, 0x1

    move/from16 v0, p6

    if-ne v0, v9, :cond_7

    if-nez p3, :cond_7

    .line 4935
    add-int/lit8 v9, v1, -0x1

    mul-int v5, v9, v8

    .line 4936
    .local v5, offset:I
    neg-int v9, v5

    int-to-float v9, v9

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4941
    .end local v5           #offset:I
    :cond_3
    :goto_1
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v9

    if-eqz v9, :cond_4

    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    .line 4942
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f80

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 4943
    const/high16 v9, 0x3f80

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 4946
    :cond_4
    if-nez p3, :cond_9

    .line 4947
    const/4 v9, 0x1

    if-ge v7, v9, :cond_5

    if-eqz p5, :cond_5

    .line 4948
    add-int/lit8 v7, v1, -0x1

    .line 4950
    :cond_5
    packed-switch p4, :pswitch_data_0

    .line 5052
    :cond_6
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5053
    const/4 v9, 0x1

    goto :goto_0

    .line 4937
    :cond_7
    if-eqz p5, :cond_3

    const/4 v9, 0x2

    move/from16 v0, p6

    if-ne v0, v9, :cond_3

    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_3

    .line 4938
    add-int/lit8 v9, v1, -0x1

    mul-int v5, v9, v8

    .line 4939
    .restart local v5       #offset:I
    int-to-float v9, v5

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 4953
    .end local v5           #offset:I
    :pswitch_0
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 4956
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4957
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4960
    :cond_8
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x437f

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 4961
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 4964
    :pswitch_2
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 4965
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6200(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->rotateY(F)V

    .line 4966
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 4967
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    .line 4968
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v10, v8

    neg-int v10, v10

    int-to-float v10, v10

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4969
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v10, v8

    int-to-float v10, v10

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4970
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F
    invoke-static {v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6400(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4971
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4972
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4973
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4976
    :pswitch_3
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 4977
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDistance:I
    invoke-static {v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6600(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 4978
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6200(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v10

    neg-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->rotateY(F)V

    .line 4979
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 4980
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    .line 4981
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v10, v8

    neg-int v10, v10

    int-to-float v10, v10

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 4982
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v10, v8

    int-to-float v10, v10

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4983
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F
    invoke-static {v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6400(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4984
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4985
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4986
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4990
    :pswitch_4
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeLeft:F
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6200(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v10

    mul-int v11, v8, v7

    shr-int/lit8 v12, v8, 0x1

    add-int/2addr v11, v12

    int-to-float v11, v11

    int-to-float v12, v4

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4991
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F
    invoke-static {v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6400(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4992
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4993
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4994
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 5000
    :cond_9
    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_6

    .line 5001
    add-int/lit8 v9, v1, -0x1

    if-lt v7, v9, :cond_a

    if-eqz p5, :cond_a

    .line 5002
    const/4 v7, 0x0

    .line 5004
    :cond_a
    packed-switch p4, :pswitch_data_1

    goto/16 :goto_2

    .line 5007
    :pswitch_5
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 5010
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 5011
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5013
    :cond_b
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCellAlpha:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v9

    rsub-int v9, v9, 0xff

    int-to-float v9, v9

    const/high16 v10, 0x437f

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 5014
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 5017
    :pswitch_7
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 5018
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6700(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->rotateY(F)V

    .line 5019
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 5020
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    .line 5021
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v10, v8

    neg-int v10, v10

    int-to-float v10, v10

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 5022
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v10, v8

    int-to-float v10, v10

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5023
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F
    invoke-static {v13}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6400(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v13

    float-to-int v13, v13

    add-int/2addr v12, v13

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 5024
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5025
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 5026
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 5029
    :pswitch_8
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 5030
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDistance:I
    invoke-static {v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6600(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 5031
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6700(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v10

    neg-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->rotateY(F)V

    .line 5032
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 5033
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCamera:Landroid/graphics/Camera;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6100(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    .line 5034
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v10, v8

    neg-int v10, v10

    int-to-float v10, v10

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 5035
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v10, v8

    int-to-float v10, v10

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5036
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F
    invoke-static {v13}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6400(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v13

    float-to-int v13, v13

    add-int/2addr v12, v13

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 5037
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5038
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 5039
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 5042
    :pswitch_9
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCubeDegreeRight:F
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6700(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v10

    add-int/lit8 v11, v7, 0x1

    mul-int/2addr v11, v8

    shr-int/lit8 v12, v8, 0x1

    add-int/2addr v11, v12

    int-to-float v11, v11

    int-to-float v12, v4

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 5043
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveOffset:F
    invoke-static {v13}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6400(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v13

    float-to-int v13, v13

    add-int/2addr v12, v13

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 5044
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5045
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6300(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Matrix;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 5046
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, p1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2

    .line 4950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 5004
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public interceptSnapTo(III)Z
    .locals 18
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "duration"

    .prologue
    .line 4625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->isSmall()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 4626
    const/4 v1, 0x1

    .line 4708
    :goto_0
    return v1

    .line 4627
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->isSmall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4628
    const/4 v1, 0x0

    goto :goto_0

    .line 4629
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v1

    if-nez v1, :cond_12

    .line 4630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    .line 4631
    .local v7, childCount:I
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    if-le v7, v1, :cond_6

    const/4 v13, 0x1

    .line 4632
    .local v13, loopScroll:Z
    :goto_1
    if-eqz v13, :cond_7

    const/4 v1, -0x1

    move v3, v1

    :goto_2
    if-eqz v13, :cond_8

    const/4 v1, 0x0

    :goto_3
    sub-int v1, v7, v1

    move/from16 v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4634
    const/4 v12, 0x0

    .line 4635
    .local v12, loop:Z
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ge v0, v1, :cond_9

    .line 4636
    add-int/lit8 p1, v7, -0x1

    .line 4637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v3

    add-int/lit8 v5, v7, -0x1

    mul-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2900(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v5

    add-int/2addr v3, v5

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2802(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4638
    const/4 v12, 0x1

    .line 4644
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v3, 0x0

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCorrectionFactor:I
    invoke-static {v1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3202(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks()V

    .line 4647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeCreateFolderCallbacks(I)V

    .line 4648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace;->clearVacantCache()V
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3300(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    .line 4649
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v3

    move/from16 v0, p1

    invoke-virtual {v1, v3, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->enableChildrenCache(II)V

    .line 4651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move/from16 v0, p1

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I
    invoke-static {v1, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3402(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mBulletinEmbedder:Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1700(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mNextScreen:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3400(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setIndicatorScreen(I)V

    .line 4654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    .line 4655
    .local v10, focusedChild:Landroid/view/View;
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v1

    move/from16 v0, p1

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v10, v1, :cond_3

    .line 4657
    invoke-virtual {v10}, Landroid/view/View;->clearFocus()V

    .line 4660
    :cond_3
    if-eqz v12, :cond_a

    const/16 v16, 0x1

    .line 4661
    .local v16, screenDelta:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v1

    mul-int v14, p1, v1

    .line 4662
    .local v14, newX:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lt v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mOverScrollX:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMaxScrollX:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v3

    if-le v1, v3, :cond_b

    :cond_4
    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v15, 0x1

    .line 4663
    .local v15, overScroll:Z
    :goto_6
    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2200(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v1

    float-to-int v2, v1

    .line 4664
    .local v2, start:I
    :goto_7
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchX:F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$2200(Lcom/baidu/launcher/ui/homeview/Workspace;)F

    move-result v1

    float-to-int v1, v1

    :goto_8
    sub-int v4, v14, v1

    .line 4666
    .local v4, delta:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3700(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3700(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4670
    :cond_5
    if-eqz v15, :cond_e

    .line 4671
    const/16 p3, 0xc8

    .line 4694
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move/from16 v0, p3

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace;->awakenScrollBars(I)Z
    invoke-static {v1, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3800(Lcom/baidu/launcher/ui/homeview/Workspace;I)Z

    .line 4695
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollType:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3900(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v17

    .line 4696
    .local v17, scrollType:I
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_11

    .line 4697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3700(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v3, 0x0

    div-int/lit8 v5, v4, 0xa

    add-int/2addr v4, v5

    const/4 v5, 0x0

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4701
    .end local v4           #delta:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->invalidate()V

    .line 4702
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 4631
    .end local v2           #start:I
    .end local v10           #focusedChild:Landroid/view/View;
    .end local v12           #loop:Z
    .end local v13           #loopScroll:Z
    .end local v14           #newX:I
    .end local v15           #overScroll:Z
    .end local v16           #screenDelta:I
    .end local v17           #scrollType:I
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 4632
    .restart local v13       #loopScroll:Z
    :cond_7
    const/4 v1, 0x1

    move v3, v1

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 4639
    .restart local v12       #loop:Z
    :cond_9
    move/from16 v0, p1

    if-lt v0, v7, :cond_2

    .line 4640
    const/16 p1, 0x1

    .line 4641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3100(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v5

    add-int/lit8 v6, v7, -0x1

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3002(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4642
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 4660
    .restart local v10       #focusedChild:Landroid/view/View;
    :cond_a
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto/16 :goto_5

    .line 4662
    .restart local v14       #newX:I
    .restart local v16       #screenDelta:I
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 4663
    .restart local v15       #overScroll:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3500(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    goto/16 :goto_7

    .line 4664
    .restart local v2       #start:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3600(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v1

    goto/16 :goto_8

    .line 4673
    .restart local v4       #delta:I
    :cond_e
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 4674
    const/16 v1, 0x258

    move/from16 v0, p2

    if-le v0, v1, :cond_f

    .line 4675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v11, v1, 0x2

    .line 4680
    .local v11, halfScreenSize:I
    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    mul-int/lit8 v5, v11, 0x2

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 4681
    .local v9, distanceRatio:F
    int-to-float v1, v11

    int-to-float v3, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->distanceInfluenceForSnapDuration(F)F

    move-result v5

    mul-float/2addr v3, v5

    add-float v8, v1, v3

    .line 4683
    .local v8, distance:F
    const/16 v1, 0x898

    move/from16 v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4688
    const v1, 0x44228000

    move/from16 v0, p2

    int-to-float v3, v0

    div-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 p3, v1, 0x64

    .line 4689
    goto/16 :goto_9

    .line 4690
    .end local v8           #distance:F
    .end local v9           #distanceRatio:F
    .end local v11           #halfScreenSize:I
    :cond_f
    if-gez p3, :cond_10

    add-int/lit8 v1, v16, 0x1

    mul-int/lit8 v1, v1, 0x50

    add-int/lit8 p3, v1, 0x64

    :cond_10
    goto/16 :goto_9

    .line 4699
    .restart local v17       #scrollType:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$3700(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto/16 :goto_a

    .line 4703
    .end local v2           #start:I
    .end local v4           #delta:I
    .end local v7           #childCount:I
    .end local v10           #focusedChild:Landroid/view/View;
    .end local v12           #loop:Z
    .end local v13           #loopScroll:Z
    .end local v14           #newX:I
    .end local v15           #overScroll:Z
    .end local v16           #screenDelta:I
    .end local v17           #scrollType:I
    :cond_12
    if-nez p1, :cond_13

    if-nez p2, :cond_13

    .line 4704
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->showPanel()V

    .line 4705
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSence(F)V

    .line 4706
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 4708
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public isBulletinVisible()Z
    .locals 1

    .prologue
    .line 5218
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v0

    return v0
.end method

.method public isSpaceScrolling()Z
    .locals 1

    .prologue
    .line 5130
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mIsSpaceScrolling:Z

    return v0
.end method

.method public onScrolled()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/high16 v11, 0x3f80

    const/4 v7, 0x0

    .line 5082
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mLastScrollX:I

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6800(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 5116
    :cond_0
    return-void

    .line 5085
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->isSmall()Z

    move-result v9

    if-nez v9, :cond_0

    .line 5088
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$6900(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v9

    iput v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mLastScrollX:I

    .line 5090
    const/4 v6, 0x0

    .line 5092
    .local v6, x:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7000(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v9

    if-ltz v9, :cond_4

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7100(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    if-ge v9, v10, :cond_4

    .line 5093
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7200(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v10

    sub-int v6, v9, v10

    .line 5100
    :cond_2
    :goto_0
    if-nez v6, :cond_8

    .line 5101
    invoke-direct {p0, v11}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSence(F)V

    .line 5109
    :goto_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    if-eq v9, v10, :cond_a

    move v5, v8

    .line 5110
    .local v5, visible:Z
    :goto_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mAnimatorView:[Landroid/view/View;

    .local v1, arr$:[Landroid/view/View;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 5112
    .local v4, view:Landroid/view/View;
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    add-int/2addr v9, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setX(F)V

    .line 5113
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_b

    move v9, v8

    :goto_4
    if-eq v9, v5, :cond_3

    .line 5114
    if-eqz v5, :cond_c

    move v9, v7

    :goto_5
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 5110
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5094
    .end local v1           #arr$:[Landroid/view/View;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #visible:Z
    :cond_4
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7300(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v9

    if-gez v9, :cond_6

    .line 5095
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    neg-int v9, v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7400(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v10

    sub-int v6, v9, v10

    :goto_6
    goto :goto_0

    :cond_5
    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    neg-int v6, v9

    goto :goto_6

    .line 5096
    :cond_6
    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7500(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mTotalScreenWidth:I

    if-le v9, v10, :cond_2

    .line 5097
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mTotalScreenWidth:I

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mScrollX:I
    invoke-static {v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7600(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v10

    sub-int v6, v9, v10

    :goto_7
    goto :goto_0

    :cond_7
    move v6, v7

    goto :goto_7

    .line 5103
    :cond_8
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    int-to-float v10, v10

    div-float v0, v9, v10

    .line 5106
    .local v0, alphaRatio:F
    cmpl-float v9, v0, v11

    if-nez v9, :cond_9

    const/4 v0, 0x0

    .end local v0           #alphaRatio:F
    :cond_9
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setSence(F)V

    goto :goto_1

    :cond_a
    move v5, v7

    .line 5109
    goto :goto_2

    .restart local v1       #arr$:[Landroid/view/View;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #view:Landroid/view/View;
    .restart local v5       #visible:Z
    :cond_b
    move v9, v7

    .line 5113
    goto :goto_4

    .line 5114
    :cond_c
    const/16 v9, 0x8

    goto :goto_5
.end method

.method public setDockbar(Landroid/view/View;)V
    .locals 2
    .parameter "dockbar"

    .prologue
    .line 5073
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mAnimatorView:[Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 5074
    return-void
.end method

.method public setIndicatorScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 5235
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5236
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->isBulletinVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5237
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCurrentScreen(I)V

    .line 5242
    :cond_0
    :goto_0
    return-void

    .line 5240
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCurrentScreen(I)V

    goto :goto_0
.end method

.method public setScreenWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 5077
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mSingleScreenWidth:I

    .line 5078
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mTotalScreenWidth:I

    .line 5079
    return-void
.end method

.method public setSpaceScrolling(Z)V
    .locals 0
    .parameter "isSpaceScrolling"

    .prologue
    .line 5126
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mIsSpaceScrolling:Z

    .line 5127
    return-void
.end method

.method public shouldHandleTouchEvent(II)Z
    .locals 3
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v0, 0x0

    .line 5119
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5122
    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v1, p1, 0x5

    mul-int/lit8 v2, p2, 0x4

    if-lt v1, v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTouchSlop:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$7700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    if-le v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->mIsSpaceScrolling:Z

    goto :goto_0
.end method

.method public showPanel()V
    .locals 3

    .prologue
    .line 5172
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPanel currentscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 5173
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    if-eqz v0, :cond_0

    .line 5176
    :goto_0
    return-void

    .line 5175
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->inBulletinScreen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/homeview/Workspace$BulletinEmbedder;->setPanelVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public unlockWorkspace()V
    .locals 2

    .prologue
    .line 5222
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5225
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->unLockWorkspace(Z)V

    .line 5227
    :cond_0
    return-void
.end method
