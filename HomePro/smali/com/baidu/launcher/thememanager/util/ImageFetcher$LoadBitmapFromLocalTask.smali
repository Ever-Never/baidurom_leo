.class public Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;
.super Landroid/os/AsyncTask;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoadBitmapFromLocalTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private isUseMemoryCache:Z

.field private localPath:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    .locals 1
    .parameter
    .parameter "imageView"
    .parameter "textView"
    .parameter "isUseCache"

    .prologue
    const/4 v0, 0x0

    .line 445
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 441
    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->textView:Landroid/widget/TextView;

    .line 442
    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->bitmap:Landroid/graphics/Bitmap;

    .line 446
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 447
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->textView:Landroid/widget/TextView;

    .line 448
    iput-boolean p4, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->isUseMemoryCache:Z

    .line 449
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 483
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 484
    .local v1, imageView:Landroid/widget/ImageView;
    #calls: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->getBitmapLocalTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$600(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;

    move-result-object v0

    .line 486
    .local v0, bitmaplocalTask:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;
    if-ne p0, v0, :cond_0

    .line 490
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 455
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->localPath:Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->bitmap:Landroid/graphics/Bitmap;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$400(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Lcom/baidu/launcher/thememanager/util/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$400(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Lcom/baidu/launcher/thememanager/util/ImageCache;

    move-result-object v0

    aget-object v1, p1, v2

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->bitmap:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->isUseMemoryCache:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 438
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 472
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->textView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 438
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
