.class Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadDrawableFromUrl(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

.field final synthetic val$callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field final synthetic val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

.field final synthetic val$imgSize:[I


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;[ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iput-object p2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$imgSize:[I

    iput-object p3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iput-object p4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 198
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$imgSize:[I

    array-length v2, v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v2, v2, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mNetWorkImageLoader:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v4, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;

    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v6, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-direct {v4, v5, v6, v7, v7}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$imgSize:[I

    aget v1, v2, v7

    .line 202
    .local v1, imgWidth:I
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$imgSize:[I

    const/4 v3, 0x1

    aget v0, v2, v3

    .line 203
    .local v0, imgHeight:I
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v2, v2, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mNetWorkImageLoader:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v4, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;

    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v6, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;->val$callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-direct {v4, v5, v6, v1, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    goto :goto_0
.end method
