.class public Lcom/baidu/launcher/utils/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"


# static fields
.field static cachedTargetLab:[I


# instance fields
.field colorBase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/utils/ColorBaseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/launcher/utils/Matcher;->cachedTargetLab:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/utils/Matcher;->colorBase:Ljava/util/List;

    .line 22
    return-void
.end method

.method static clearCachedTargetLab()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/baidu/launcher/utils/Matcher;->cachedTargetLab:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 100
    sget-object v1, Lcom/baidu/launcher/utils/Matcher;->cachedTargetLab:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method private getMatchedItem(Landroid/graphics/Bitmap;)Lcom/baidu/launcher/utils/ColorBaseItem;
    .locals 6
    .parameter "bmp"

    .prologue
    .line 76
    const/4 v1, -0x1

    .line 77
    .local v1, bestScore:I
    const/4 v0, 0x0

    .line 78
    .local v0, bestItem:Lcom/baidu/launcher/utils/ColorBaseItem;
    invoke-static {}, Lcom/baidu/launcher/utils/Matcher;->clearCachedTargetLab()V

    .line 79
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/launcher/utils/Matcher;->colorBase:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 80
    iget-object v5, p0, Lcom/baidu/launcher/utils/Matcher;->colorBase:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/utils/ColorBaseItem;

    .line 81
    .local v3, item:Lcom/baidu/launcher/utils/ColorBaseItem;
    invoke-virtual {v3, p1}, Lcom/baidu/launcher/utils/ColorBaseItem;->getMatchScore(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 83
    .local v4, score:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 84
    move v1, v4

    .line 85
    move-object v0, v3

    .line 87
    :cond_0
    if-ge v4, v1, :cond_1

    .line 88
    move v1, v4

    .line 89
    move-object v0, v3

    .line 79
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v3           #item:Lcom/baidu/launcher/utils/ColorBaseItem;
    .end local v4           #score:I
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/utils/Matcher;->clearCachedTargetLab()V

    .line 94
    return-object v0
.end method

.method private getMatchedItemByEdge(Landroid/graphics/Bitmap;Landroid/content/Context;)Lcom/baidu/launcher/utils/ColorEdgeItem;
    .locals 1
    .parameter "bmp"
    .parameter "context"

    .prologue
    .line 105
    new-instance v0, Lcom/baidu/launcher/utils/ColorEdgeItem;

    invoke-direct {v0, p1, p2}, Lcom/baidu/launcher/utils/ColorEdgeItem;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addBitmapSample(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/launcher/utils/Matcher;->colorBase:Ljava/util/List;

    new-instance v1, Lcom/baidu/launcher/utils/ColorBaseItem;

    invoke-direct {v1, p1}, Lcom/baidu/launcher/utils/ColorBaseItem;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/utils/Matcher;->colorBase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    return-void
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 58
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 59
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 62
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getMatchedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "target"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/Matcher;->getMatchedItem(Landroid/graphics/Bitmap;)Lcom/baidu/launcher/utils/ColorBaseItem;

    move-result-object v0

    .line 32
    .local v0, item:Lcom/baidu/launcher/utils/ColorBaseItem;
    invoke-virtual {v0}, Lcom/baidu/launcher/utils/ColorBaseItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getMatchedBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "target"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/utils/Matcher;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    .local v1, targetBmp:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/baidu/launcher/utils/Matcher;->getMatchedItem(Landroid/graphics/Bitmap;)Lcom/baidu/launcher/utils/ColorBaseItem;

    move-result-object v0

    .line 41
    .local v0, item:Lcom/baidu/launcher/utils/ColorBaseItem;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/baidu/launcher/utils/ColorBaseItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMatchedBitmapByEdge(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "target"
    .parameter "context"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/utils/Matcher;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 50
    .local v1, targetBmp:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1, p2}, Lcom/baidu/launcher/utils/Matcher;->getMatchedItemByEdge(Landroid/graphics/Bitmap;Landroid/content/Context;)Lcom/baidu/launcher/utils/ColorEdgeItem;

    move-result-object v0

    .line 51
    .local v0, item:Lcom/baidu/launcher/utils/ColorEdgeItem;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/baidu/launcher/utils/ColorEdgeItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 54
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
