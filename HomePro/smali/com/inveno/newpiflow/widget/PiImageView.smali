.class public Lcom/inveno/newpiflow/widget/PiImageView;
.super Landroid/widget/ImageView;
.source "PiImageView.java"


# instance fields
.field private callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private isLoading:Z

.field private loadBitmapOk:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiImageView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiImageView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiImageView;->init()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/inveno/newpiflow/widget/PiImageView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/inveno/newpiflow/widget/PiImageView;->compressImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method private compressImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 6
    .parameter "imageView"
    .parameter "container"

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 48
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    check-cast p2, Lcom/inveno/newpiflow/widget/PiImageView;

    .end local p2
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/inveno/newpiflow/widget/PiImageView;->setLoadBitmapOk(Z)V

    .line 51
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/inveno/newpiflow/widget/PiImageView$1;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/widget/PiImageView$1;-><init>(Lcom/inveno/newpiflow/widget/PiImageView;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiImageView;->callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    .line 83
    return-void
.end method


# virtual methods
.method public getCallBack()Lcom/inveno/flyshare/callback/BitmapLoadCallBack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiImageView;->callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    return-object v0
.end method

.method public isLoadBitmapOk()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/inveno/newpiflow/widget/PiImageView;->loadBitmapOk:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/inveno/newpiflow/widget/PiImageView;->isLoading:Z

    return v0
.end method

.method public setLoadBitmapOk(Z)V
    .locals 0
    .parameter "loadBitmapOk"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/inveno/newpiflow/widget/PiImageView;->loadBitmapOk:Z

    .line 95
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "isLoading"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/inveno/newpiflow/widget/PiImageView;->isLoading:Z

    .line 103
    return-void
.end method
