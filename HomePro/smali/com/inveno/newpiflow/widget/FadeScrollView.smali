.class public Lcom/inveno/newpiflow/widget/FadeScrollView;
.super Landroid/widget/ScrollView;
.source "FadeScrollView.java"


# instance fields
.field private mBottomMask:Landroid/graphics/drawable/Drawable;

.field private mMaskHeight:I

.field private mMaskLeft:I

.field private mMaskRight:I

.field private mTopMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "paramContext"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/widget/FadeScrollView;->mMaskLeft:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/inveno/newpiflow/widget/FadeScrollView;->mMaskLeft:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/inveno/newpiflow/widget/FadeScrollView;->mMaskRight:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/inveno/newpiflow/widget/FadeScrollView;->mMaskHeight:I

    .line 31
    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 33
    .local v0, themeId:I
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/FadeScrollView;->mTopMask:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/FadeScrollView;->mBottomMask:Landroid/graphics/drawable/Drawable;

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/FadeScrollView;->mTopMask:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020297

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/FadeScrollView;->mBottomMask:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "paramCanvas"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 57
    return-void
.end method
