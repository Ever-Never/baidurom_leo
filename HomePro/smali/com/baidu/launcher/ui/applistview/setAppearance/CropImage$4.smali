.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImageMatrix:Landroid/graphics/Matrix;

.field mScale:F

.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->mScale:F

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->makeDefault()V

    return-void
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 284
    new-instance v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;-><init>(Landroid/view/View;)V

    .line 286
    .local v0, hv:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$100(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 287
    .local v9, width:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$100(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 289
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 293
    .local v7, cropWidth:I
    move v6, v7

    .line 295
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$600(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$700(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$600(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$700(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_2

    .line 297
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$700(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$600(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 303
    :cond_0
    :goto_0
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 304
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 306
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 307
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$800(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Z

    move-result v4

    iget-object v12, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$600(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$700(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 309
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->add(Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;)V

    .line 310
    return-void

    .line 299
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$600(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$700(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->mImageMatrix:Landroid/graphics/Matrix;

    .line 315
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->mScale:F

    .line 316
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$300(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method
