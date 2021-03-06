.class Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation


# instance fields
.field private mIsMask:Z

.field private mPath:Ljava/lang/String;

.field private mPriority:I

.field private mTarget:Ljava/lang/Object;

.field final synthetic this$0:Lcom/baidu/themeanimation/util/FileUtil;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6
    .parameter
    .parameter "path"
    .parameter "target"
    .parameter "isMask"

    .prologue
    .line 433
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;-><init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Ljava/lang/Object;ZI)V

    .line 434
    return-void
.end method

.method public constructor <init>(Lcom/baidu/themeanimation/util/FileUtil;Ljava/lang/String;Ljava/lang/Object;ZI)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "target"
    .parameter "isMask"
    .parameter "priority"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mPath:Ljava/lang/String;

    .line 439
    iput-object p3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mTarget:Ljava/lang/Object;

    .line 440
    iput-boolean p4, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mIsMask:Z

    .line 441
    iput p5, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mPriority:I

    .line 442
    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mPriority:I

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 450
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    iget-object v4, v3, Lcom/baidu/themeanimation/util/FileUtil;->mBitmaps:Ljava/util/HashMap;

    monitor-enter v4

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->this$0:Lcom/baidu/themeanimation/util/FileUtil;

    iget-object v5, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 452
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    :cond_0
    monitor-exit v4

    .line 483
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mTarget:Ljava/lang/Object;

    instance-of v3, v3, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v3, :cond_4

    .line 456
    iget-object v1, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mTarget:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 457
    .local v1, elementview:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    iget-boolean v3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mIsMask:Z

    if-eqz v3, :cond_3

    .line 458
    new-instance v3, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$1;-><init>(Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->post(Ljava/lang/Runnable;)Z

    .line 482
    .end local v1           #elementview:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    :cond_2
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 466
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #elementview:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    :cond_3
    :try_start_1
    new-instance v3, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$2;-><init>(Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 473
    .end local v1           #elementview:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    :cond_4
    iget-object v3, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mTarget:Ljava/lang/Object;

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 474
    iget-object v2, p0, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;->mTarget:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    .line 475
    .local v2, imageview:Landroid/widget/ImageView;
    new-instance v3, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask$3;-><init>(Lcom/baidu/themeanimation/util/FileUtil$LoadBitmapTask;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
