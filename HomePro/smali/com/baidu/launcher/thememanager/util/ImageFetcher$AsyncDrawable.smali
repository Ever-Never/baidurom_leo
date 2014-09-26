.class Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;)V
    .locals 1
    .parameter "res"
    .parameter "bitmap"
    .parameter "bitmapWorkerTask"

    .prologue
    .line 504
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 505
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    .line 507
    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;

    return-object v0
.end method
