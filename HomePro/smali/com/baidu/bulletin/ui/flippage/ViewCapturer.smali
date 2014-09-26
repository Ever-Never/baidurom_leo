.class public Lcom/baidu/bulletin/ui/flippage/ViewCapturer;
.super Ljava/lang/Object;
.source "ViewCapturer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/flippage/ViewCapturer$1;,
        Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "scaleWidth"
    .parameter "scaleHeight"

    .prologue
    const/4 v1, 0x0

    .line 72
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static snapshot(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v6, 0x0

    .line 45
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v3, v6

    .line 68
    :goto_0
    return-object v3

    .line 49
    :cond_1
    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 50
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 52
    .local v0, bgColor:I
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 53
    neg-int v7, p1

    int-to-float v7, v7

    neg-int v8, p2

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 56
    .local v5, visibility:I
    if-eqz v5, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 58
    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    const-string v7, "ViewCapturer"

    const-string v8, "create view bitmap"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0           #bgColor:I
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #visibility:I
    :catch_0
    move-exception v4

    .line 66
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "ViewCapturer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 68
    goto :goto_0
.end method

.method public static snapshot(Landroid/view/View;Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "view"
    .parameter "part"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 41
    :goto_0
    return-object v2

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 28
    .local v1, w:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 30
    .local v0, h:I
    sget-object v3, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$1;->$SwitchMap$com$baidu$bulletin$ui$flippage$ViewCapturer$Part:[I

    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 32
    :pswitch_0
    shr-int/lit8 v2, v0, 0x1

    invoke-static {p0, v5, v5, v1, v2}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer;->snapshot(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 34
    :pswitch_1
    shr-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v0, 0x1

    invoke-static {p0, v5, v2, v1, v3}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer;->snapshot(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 36
    :pswitch_2
    shr-int/lit8 v2, v1, 0x1

    invoke-static {p0, v5, v5, v2, v0}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer;->snapshot(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 38
    :pswitch_3
    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v1, 0x1

    invoke-static {p0, v2, v5, v3, v0}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer;->snapshot(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
