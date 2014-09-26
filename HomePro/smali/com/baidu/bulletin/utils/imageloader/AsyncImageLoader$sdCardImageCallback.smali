.class public Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "sdCardImageCallback"
.end annotation


# instance fields
.field private mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field final synthetic this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 163
    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 1
    .parameter "bitmap"
    .parameter "imageInfo"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v0, v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->putBitmapToCache(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 170
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-virtual {v0, p2}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->removeRunningList(Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 173
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-interface {v0, p1, p2}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 176
    :cond_0
    return-void
.end method
