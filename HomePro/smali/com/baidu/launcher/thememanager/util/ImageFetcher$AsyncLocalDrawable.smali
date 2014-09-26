.class Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLocalDrawable"
.end annotation


# instance fields
.field private final bitmapLocalTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;)V
    .locals 1
    .parameter "res"
    .parameter "bitmap"
    .parameter "bitmapWorkerTask"

    .prologue
    .line 524
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 525
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;->bitmapLocalTaskReference:Ljava/lang/ref/WeakReference;

    .line 527
    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;->bitmapLocalTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;

    return-object v0
.end method
