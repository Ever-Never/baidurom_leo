.class Lcom/baidu/yi/ads/AdView$DisplayUpdater;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayUpdater"
.end annotation


# instance fields
.field private mNewAd:Lcom/baidu/yi/ads/Ad;

.field final synthetic this$0:Lcom/baidu/yi/ads/AdView;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/AdView;Lcom/baidu/yi/ads/Ad;)V
    .locals 0
    .parameter
    .parameter "ad"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    .line 166
    return-void
.end method

.method private handleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "bm"

    .prologue
    .line 297
    const/4 v14, 0x0

    .line 298
    .local v14, isStrech:Z
    const/16 v16, 0x0

    .line 299
    .local v16, newbm:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 300
    const/4 v2, 0x0

    .line 359
    :goto_0
    return-object v2

    .line 303
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 304
    .local v5, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 306
    .local v6, h:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v2}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v10, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 307
    .local v10, deviceWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mType:I
    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->access$6(Lcom/baidu/yi/ads/AdView;)I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v2

    if-eq v2, v10, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #setter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v2, v10}, Lcom/baidu/yi/ads/AdView;->access$7(Lcom/baidu/yi/ads/AdView;I)V

    .line 309
    int-to-float v2, v6

    int-to-float v3, v5

    div-float v17, v2, v3

    .line 310
    .local v17, scale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v2

    int-to-float v2, v2

    mul-float v12, v2, v17

    .line 311
    .local v12, height:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    float-to-int v3, v12

    #setter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v2, v3}, Lcom/baidu/yi/ads/AdView;->access$8(Lcom/baidu/yi/ads/AdView;I)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recompute display width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->access$10(Lcom/baidu/yi/ads/AdView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 315
    .end local v12           #height:F
    .end local v17           #scale:F
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Returned image width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->access$10(Lcom/baidu/yi/ads/AdView;)I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    .line 318
    .local v9, adSpaceScale:F
    int-to-float v2, v5

    int-to-float v3, v6

    div-float v13, v2, v3

    .line 319
    .local v13, imgScale:F
    sub-float v2, v9, v13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 322
    .local v15, minor:F
    float-to-double v2, v9

    const-wide v20, 0x3ff4cccccccccccdL

    cmpl-double v2, v2, v20

    if-lez v2, :cond_4

    .line 323
    float-to-double v2, v13

    const-wide v20, 0x3ff4cccccccccccdL

    cmpg-double v2, v2, v20

    if-gez v2, :cond_2

    .line 324
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 325
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_3

    .line 326
    const/4 v14, 0x1

    .line 340
    :goto_1
    if-nez v14, :cond_7

    move-object/from16 v2, p1

    .line 341
    goto/16 :goto_0

    .line 328
    :cond_3
    const/4 v14, 0x0

    .line 330
    goto :goto_1

    .line 331
    :cond_4
    float-to-double v2, v13

    const-wide v20, 0x3ff4cccccccccccdL

    cmpl-double v2, v2, v20

    if-lez v2, :cond_5

    .line 332
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 333
    :cond_5
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_6

    .line 334
    const/4 v14, 0x1

    .line 335
    goto :goto_1

    .line 336
    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    .line 345
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v5

    div-float v19, v2, v3

    .line 346
    .local v19, scaleWidth:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->access$10(Lcom/baidu/yi/ads/AdView;)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v6

    div-float v18, v2, v3

    .line 348
    .local v18, scaleHeight:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 349
    .local v7, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 351
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    const/16 p1, 0x0

    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v18           #scaleHeight:F
    .end local v19           #scaleWidth:F
    :goto_2
    move-object/from16 v2, v16

    .line 359
    goto/16 :goto_0

    .line 354
    :catch_0
    move-exception v11

    .line 355
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private replaceCurrentAdView(Landroid/view/View;)V
    .locals 1
    .parameter "mainAdView"

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;Landroid/view/View;)V

    .line 364
    return-void
.end method

.method private replaceCurrentAdView(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "mainAdView"
    .parameter "textView"

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v2, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #setter for: Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;
    invoke-static {v2, p1}, Lcom/baidu/yi/ads/AdView;->access$28(Lcom/baidu/yi/ads/AdView;Landroid/view/View;)V

    .line 399
    iget-object v2, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #setter for: Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;
    invoke-static {v2, p2}, Lcom/baidu/yi/ads/AdView;->access$29(Lcom/baidu/yi/ads/AdView;Landroid/view/View;)V

    .line 401
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/baidu/yi/ads/AdView;->setOrientation(I)V

    .line 404
    :cond_0
    if-eqz p1, :cond_4

    .line 405
    iget-object v2, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    #calls: Lcom/baidu/yi/ads/AdView;->getAdContainerParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v2, v1}, Lcom/baidu/yi/ads/AdView;->access$30(Lcom/baidu/yi/ads/AdView;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 406
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/AdView;->removeAllViews()V

    .line 407
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/yi/ads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    if-eqz p2, :cond_2

    .line 409
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->getSecondContainerParams()Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v1}, Lcom/baidu/yi/ads/AdView;->access$36(Lcom/baidu/yi/ads/AdView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v1, p2, v0}, Lcom/baidu/yi/ads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/baidu/yi/ads/AdView;->access$24(Lcom/baidu/yi/ads/AdView;)Landroid/webkit/WebView;

    move-result-object v1

    if-eq p1, v1, :cond_3

    .line 413
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->setNormalBackground()V
    invoke-static {v1}, Lcom/baidu/yi/ads/AdView;->access$37(Lcom/baidu/yi/ads/AdView;)V

    .line 414
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v2, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v2}, Lcom/baidu/yi/ads/Ad;->hasActions()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/yi/ads/AdView;->setFocusable(Z)V

    .line 419
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_0
    return-void

    .line 417
    :cond_4
    iget-object v2, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/baidu/yi/ads/AdView;->setFocusable(Z)V

    goto :goto_0
.end method

.method private replaceCurrentImageAdView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 8
    .parameter "imgAdView"
    .parameter "flView"

    .prologue
    const/4 v5, 0x0

    .line 367
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #setter for: Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;
    invoke-static {v3, p2}, Lcom/baidu/yi/ads/AdView;->access$28(Lcom/baidu/yi/ads/AdView;Landroid/view/View;)V

    .line 368
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    const/4 v4, 0x0

    #setter for: Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/baidu/yi/ads/AdView;->access$29(Lcom/baidu/yi/ads/AdView;Landroid/view/View;)V

    .line 370
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 371
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->getAdContainerParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v3, v5}, Lcom/baidu/yi/ads/AdView;->access$30(Lcom/baidu/yi/ads/AdView;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 372
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p2, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAdViewCloseBtnShown:Z
    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->access$31(Lcom/baidu/yi/ads/AdView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->access$32(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->access$32(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 376
    .local v0, m:Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    .line 377
    iget-object v6, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapNormal:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/baidu/yi/ads/AdView;->access$33(Lcom/baidu/yi/ads/AdView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 378
    iget-object v7, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapNormal:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/baidu/yi/ads/AdView;->access$33(Lcom/baidu/yi/ads/AdView;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 376
    #calls: Lcom/baidu/yi/ads/AdView;->getCloseButtonParams(IIII)Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v3, v4, v5, v6, v7}, Lcom/baidu/yi/ads/AdView;->access$34(Lcom/baidu/yi/ads/AdView;IIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 379
    .local v1, p:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->access$32(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .end local v0           #m:Landroid/graphics/Matrix;
    .end local v1           #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v3}, Lcom/baidu/yi/ads/AdView;->removeAllViews()V

    .line 383
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v4, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I
    invoke-static {v4}, Lcom/baidu/yi/ads/AdView;->access$35(Lcom/baidu/yi/ads/AdView;)I

    move-result v4

    iget-object v5, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I
    invoke-static {v5}, Lcom/baidu/yi/ads/AdView;->access$35(Lcom/baidu/yi/ads/AdView;)I

    move-result v5

    .line 384
    iget-object v6, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I
    invoke-static {v6}, Lcom/baidu/yi/ads/AdView;->access$35(Lcom/baidu/yi/ads/AdView;)I

    move-result v6

    iget-object v7, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I
    invoke-static {v7}, Lcom/baidu/yi/ads/AdView;->access$35(Lcom/baidu/yi/ads/AdView;)I

    move-result v7

    .line 383
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 385
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v3, p2}, Lcom/baidu/yi/ads/AdView;->addView(Landroid/view/View;)V

    .line 389
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v3, v5}, Lcom/baidu/yi/ads/AdView;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/4 v11, 0x0

    .line 184
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->clearFrameLayout()V
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$0(Lcom/baidu/yi/ads/AdView;)V

    .line 185
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v9}, Lcom/baidu/yi/ads/AdView;->removeAllViews()V

    .line 186
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    if-nez v9, :cond_2

    .line 187
    invoke-direct {p0, v11}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;)V

    .line 285
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$27(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/AdRetrievalListener;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 286
    const-string v9, "notice client"

    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->logE(Ljava/lang/String;)V

    .line 287
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$27(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/AdRetrievalListener;

    move-result-object v10

    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v10, v9}, Lcom/baidu/yi/ads/AdRetrievalListener;->onAdRetrieved(Z)V

    .line 289
    :cond_1
    return-void

    .line 189
    :cond_2
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v9}, Lcom/baidu/yi/ads/Ad;->getContentType()I

    move-result v2

    .line 191
    .local v2, contentType:I
    packed-switch v2, :pswitch_data_0

    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Ad content type "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not know. Ignoring it."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->logW(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, v11}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;)V

    goto :goto_0

    .line 193
    :pswitch_0
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v9}, Lcom/baidu/yi/ads/Ad;->getText()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, text:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 195
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;

    move-result-object v9

    if-nez v9, :cond_3

    .line 196
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v11, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v11}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v11

    #calls: Lcom/baidu/yi/ads/AdView;->createTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    invoke-static {v10, v11, v5}, Lcom/baidu/yi/ads/AdView;->access$2(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    #setter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$3(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;)V

    .line 198
    :cond_3
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;

    move-result-object v10

    #calls: Lcom/baidu/yi/ads/AdView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v9, v10, v5}, Lcom/baidu/yi/ads/AdView;->access$4(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 199
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;

    move-result-object v10

    #calls: Lcom/baidu/yi/ads/AdView;->setMainTextViewProperties(Landroid/widget/TextView;)V
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$5(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;)V

    .line 201
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mType:I
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$6(Lcom/baidu/yi/ads/AdView;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 202
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #setter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v9, v12}, Lcom/baidu/yi/ads/AdView;->access$7(Lcom/baidu/yi/ads/AdView;I)V

    .line 203
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #setter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v9, v12}, Lcom/baidu/yi/ads/AdView;->access$8(Lcom/baidu/yi/ads/AdView;I)V

    .line 205
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Text view width = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$10(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 206
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 208
    :cond_5
    const-string v9, "Ad content type is text, but text is null."

    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->logW(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, v11}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 213
    .end local v5           #text:Ljava/lang/String;
    :pswitch_1
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v9}, Lcom/baidu/yi/ads/Ad;->getImage()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->handleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 215
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v9

    if-nez v9, :cond_6

    .line 216
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v11, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v11}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v11

    #calls: Lcom/baidu/yi/ads/AdView;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    invoke-static {v10, v11}, Lcom/baidu/yi/ads/AdView;->access$12(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v10

    #setter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$13(Lcom/baidu/yi/ads/AdView;Landroid/widget/ImageView;)V

    .line 218
    :cond_6
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->dumpBitmapMemory(Landroid/graphics/Bitmap;)V
    invoke-static {v9, v0}, Lcom/baidu/yi/ads/AdView;->access$14(Lcom/baidu/yi/ads/AdView;Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAlpha:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$15(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 222
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->getFrameLayout()Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$16(Lcom/baidu/yi/ads/AdView;)Landroid/widget/FrameLayout;

    move-result-object v3

    .line 223
    .local v3, fl:Landroid/widget/FrameLayout;
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-direct {p0, v9, v3}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentImageAdView(Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 224
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAdViewAnimationEnabled:Z
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$17(Lcom/baidu/yi/ads/AdView;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 225
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->startAnimation()V
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$18(Lcom/baidu/yi/ads/AdView;)V

    goto/16 :goto_0

    .line 228
    .end local v3           #fl:Landroid/widget/FrameLayout;
    :cond_7
    const-string v9, "Ad content type is image, but bitmap is null."

    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->logW(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v11}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 233
    .end local v0           #b:Landroid/graphics/Bitmap;
    :pswitch_2
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v9}, Lcom/baidu/yi/ads/Ad;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 234
    .local v1, bm:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v9}, Lcom/baidu/yi/ads/Ad;->getText()Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, txt:Ljava/lang/String;
    if-eqz v1, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b

    .line 236
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 237
    .local v8, w:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 239
    .local v4, h:I
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-gt v8, v9, :cond_8

    .line 240
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    add-int/lit8 v10, v8, 0x7

    #setter for: Lcom/baidu/yi/ads/AdView;->mMixedIconViewWidth:I
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$19(Lcom/baidu/yi/ads/AdView;I)V

    .line 241
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    iget-object v11, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mMixedIconViewWidth:I
    invoke-static {v11}, Lcom/baidu/yi/ads/AdView;->access$20(Lcom/baidu/yi/ads/AdView;)I

    move-result v11

    sub-int/2addr v10, v11

    #setter for: Lcom/baidu/yi/ads/AdView;->mMixedTextViewWidth:I
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$21(Lcom/baidu/yi/ads/AdView;I)V

    .line 243
    :cond_8
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v9

    if-nez v9, :cond_9

    .line 244
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v11, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v11}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v11

    #calls: Lcom/baidu/yi/ads/AdView;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    invoke-static {v10, v11}, Lcom/baidu/yi/ads/AdView;->access$12(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v10

    #setter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$13(Lcom/baidu/yi/ads/AdView;Landroid/widget/ImageView;)V

    .line 246
    :cond_9
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;

    move-result-object v9

    if-nez v9, :cond_a

    .line 247
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v11, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v11}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v11

    #calls: Lcom/baidu/yi/ads/AdView;->createTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    invoke-static {v10, v11, v6}, Lcom/baidu/yi/ads/AdView;->access$2(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    #setter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$3(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;)V

    .line 249
    :cond_a
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;

    move-result-object v10

    #calls: Lcom/baidu/yi/ads/AdView;->setRightTextViewProperties(Landroid/widget/TextView;)V
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$22(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;)V

    .line 250
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAlpha:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$15(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 252
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAlpha:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$15(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mHeight = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$10(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 255
    const-string v10, " mMixedIconViewWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mMixedIconViewWidth:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$20(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 256
    const-string v10, " mMixedTextViewWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mMixedTextViewWidth:I
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$23(Lcom/baidu/yi/ads/AdView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 254
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 258
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/baidu/yi/ads/AdView;->access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    .line 260
    .end local v4           #h:I
    .end local v8           #w:I
    :cond_b
    const-string v9, "Ad content type is image and text, but one of them is empty."

    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->logW(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, v11}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 265
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v6           #txt:Ljava/lang/String;
    :pswitch_3
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v9}, Lcom/baidu/yi/ads/Ad;->getURL()Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, url:Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 267
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$24(Lcom/baidu/yi/ads/AdView;)Landroid/webkit/WebView;

    move-result-object v9

    if-nez v9, :cond_c

    .line 268
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v10, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v11, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v11}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v11

    #calls: Lcom/baidu/yi/ads/AdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    invoke-static {v10, v11}, Lcom/baidu/yi/ads/AdView;->access$25(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v10

    #setter for: Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9, v10}, Lcom/baidu/yi/ads/AdView;->access$26(Lcom/baidu/yi/ads/AdView;Landroid/webkit/WebView;)V

    .line 270
    :cond_c
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$24(Lcom/baidu/yi/ads/AdView;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;)V

    .line 271
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$24(Lcom/baidu/yi/ads/AdView;)Landroid/webkit/WebView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 272
    iget-object v9, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->access$24(Lcom/baidu/yi/ads/AdView;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_d
    const-string v9, "Ad content type is URL, but URL is null."

    invoke-static {v9}, Lcom/baidu/yi/ads/AdView;->logW(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, v11}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->replaceCurrentAdView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 287
    .end local v2           #contentType:I
    .end local v7           #url:Ljava/lang/String;
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAd(Lcom/baidu/yi/ads/Ad;)V
    .locals 1
    .parameter "ad"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/Ad;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/Ad;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->mNewAd:Lcom/baidu/yi/ads/Ad;

    .line 177
    return-void
.end method
