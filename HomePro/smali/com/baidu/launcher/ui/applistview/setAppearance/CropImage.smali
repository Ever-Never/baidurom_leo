.class public Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;
.super Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;
    }
.end annotation


# static fields
.field private static final RECYCLE_INPUT:Z = true


# instance fields
.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field mCrop:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mHandler:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mScaleUp:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mCircleCrop:Z

    .line 278
    new-instance v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mCircleCrop:Z

    return v0
.end method

.method private onSaveClicked()V
    .locals 17

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mCrop:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    if-nez v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mSaving:Z

    if-nez v1, :cond_0

    .line 340
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mSaving:Z

    .line 346
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputX:I

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputY:I

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mScale:Z

    if-nez v1, :cond_3

    .line 349
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputY:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 351
    .local v2, croppedImage:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    .local v7, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mCrop:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v15

    .line 354
    .local v15, srcRect:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputY:I

    invoke-direct {v8, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 356
    .local v8, dstRect:Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v9, v1, 0x2

    .line 357
    .local v9, dx:I
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v10, v1, 0x2

    .line 360
    .local v10, dy:I
    const/4 v1, 0x0

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v15, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 363
    const/4 v1, 0x0

    neg-int v3, v9

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    neg-int v4, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v15, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->clear()V

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    .end local v9           #dx:I
    .end local v10           #dy:I
    .end local v15           #srcRect:Landroid/graphics/Rect;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->center(ZZ)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    iget-object v1, v1, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 401
    sget-object v1, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->APPLISTBG_FILE_NAME:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->makeTempFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 402
    .local v11, f:Ljava/io/File;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v13, intent:Landroid/content/Intent;
    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "image/jpeg"

    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->finish()V

    goto/16 :goto_0

    .line 372
    .end local v2           #croppedImage:Landroid/graphics/Bitmap;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v8           #dstRect:Landroid/graphics/Rect;
    .end local v11           #f:Ljava/io/File;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mCrop:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v14

    .line 374
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 375
    .local v16, width:I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 379
    .local v12, height:I
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 382
    .restart local v2       #croppedImage:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 383
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-direct {v8, v1, v3, v0, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 384
    .restart local v8       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v14, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->clear()V

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputX:I

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputY:I

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mScale:Z

    if-eqz v1, :cond_2

    .line 392
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputY:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mScaleUp:Z

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private readCameraRotation(Landroid/net/Uri;)V
    .locals 17
    .parameter "target"

    .prologue
    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 156
    .local v16, scheme:Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const/4 v14, 0x0

    .line 158
    .local v14, degree:I
    const-string v2, "content"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "orientation"

    aput-object v3, v4, v2

    .line 162
    .local v4, proj:[Ljava/lang/String;
    new-instance v1, Landroid/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v1, loader:Landroid/content/CursorLoader;
    invoke-virtual {v1}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v13

    .line 165
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 167
    :try_start_0
    const-string v2, "orientation"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 169
    .local v12, column_index:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 172
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 173
    .local v10, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 174
    int-to-float v2, v14

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1           #loader:Landroid/content/CursorLoader;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v10           #matrix:Landroid/graphics/Matrix;
    .end local v12           #column_index:I
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v14           #degree:I
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v1       #loader:Landroid/content/CursorLoader;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v14       #degree:I
    :catch_0
    move-exception v15

    .line 177
    .local v15, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private static startBackgroundJob(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "message"
    .parameter "job"
    .parameter "handler"

    .prologue
    .line 273
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 275
    .local v0, dialog:Landroid/app/ProgressDialog;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 276
    return-void
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 191
    const/4 v0, 0x0

    const-string v1, "loading"

    new-instance v2, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V

    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->startBackgroundJob(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"
    .parameter "recycle"

    .prologue
    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 412
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 413
    .local v18, deltaY:I
    if-nez p4, :cond_2

    if-ltz v16, :cond_0

    if-gez v18, :cond_2

    .line 420
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 422
    .local v11, b2:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 424
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 425
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 426
    .local v19, deltaYHalf:I
    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 429
    .local v26, src:Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 430
    .local v21, dstX:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 431
    .local v22, dstY:I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 433
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 434
    if-eqz p5, :cond_1

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 486
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v17           #deltaXHalf:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v21           #dstX:I
    .end local v22           #dstY:I
    .end local v26           #src:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v11

    .line 439
    .end local v11           #b2:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 440
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 442
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 443
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 445
    .local v27, viewAspect:F
    cmpl-float v3, v12, v27

    if-lez v3, :cond_7

    .line 446
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v25, v3, v13

    .line 447
    .local v25, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_3

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_6

    .line 448
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 462
    :goto_1
    if-eqz p0, :cond_a

    .line 464
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 470
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz p5, :cond_4

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_4

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 474
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 475
    .local v23, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 477
    .local v24, dy1:I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 480
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_1

    .line 481
    if-nez p5, :cond_5

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 482
    :cond_5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 450
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #dx1:I
    .end local v24           #dy1:I
    :cond_6
    const/16 p0, 0x0

    goto :goto_1

    .line 453
    .end local v25           #scale:F
    :cond_7
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v25, v3, v14

    .line 454
    .restart local v25       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_8

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_9

    .line 455
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 457
    :cond_9
    const/16 p0, 0x0

    goto :goto_1

    .line 467
    :cond_a
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->requestWindowFeature(I)Z

    .line 85
    const v6, 0x7f03004b

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->setContentView(I)V

    .line 87
    const v6, 0x7f0800fd

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    iput-object v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    .line 88
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    iput-object p0, v6, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 93
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 95
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 96
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 97
    const-string v6, "aspectX"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectX:I

    .line 98
    const-string v6, "aspectY"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mAspectY:I

    .line 99
    const-string v6, "outputX"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputX:I

    .line 100
    const-string v6, "outputY"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mOutputY:I

    .line 101
    const-string v6, "scale"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mScale:Z

    .line 102
    const-string v6, "scaleUpIfNeeded"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mScaleUp:Z

    .line 105
    :cond_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    .line 106
    const/4 v4, 0x0

    .line 108
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 109
    .local v5, target:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 111
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 112
    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->readCameraRotation(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    if-eqz v4, :cond_1

    .line 118
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 125
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #target:Landroid/net/Uri;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->finish()V

    .line 148
    :goto_1
    return-void

    .line 113
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    .line 118
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    :cond_2
    :goto_2
    throw v6

    .line 131
    .end local v4           #is:Ljava/io/InputStream;
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 133
    const v6, 0x7f0800fe

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$1;

    invoke-direct {v7, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$1;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v6, 0x7f0800ff

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$2;

    invoke-direct {v7, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$2;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->startFaceDetection()V

    goto :goto_1

    .line 119
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    goto :goto_2

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v5       #target:Landroid/net/Uri;
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 496
    invoke-super {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;->onDestroy()V

    .line 497
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 491
    invoke-super {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;->onPause()V

    .line 492
    return-void
.end method
