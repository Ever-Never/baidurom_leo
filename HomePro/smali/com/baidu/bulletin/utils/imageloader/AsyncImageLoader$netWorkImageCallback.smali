.class public Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;
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
    name = "netWorkImageCallback"
.end annotation


# instance fields
.field private mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field private mImgHeight:I

.field private mImgWidth:I

.field final synthetic this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V
    .locals 0
    .parameter
    .parameter "callback"
    .parameter "imgWidth"
    .parameter "imgHeight"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->mImgWidth:I

    .line 143
    iput p4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->mImgHeight:I

    .line 144
    iput-object p2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 145
    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 4
    .parameter "bitmap"
    .parameter "imageInfo"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v0, v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mCardImageLoader:Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;

    new-instance v1, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;

    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-direct {v1, v2, v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    iget v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->mImgWidth:I

    iget v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;->mImgHeight:I

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    .line 150
    return-void
.end method
