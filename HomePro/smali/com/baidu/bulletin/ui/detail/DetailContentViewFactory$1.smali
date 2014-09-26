.class Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;
.super Ljava/lang/Object;
.source "DetailContentViewFactory.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 2
    .parameter "bitmap"
    .parameter "imageInfo"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->access$100(Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;-><init>(Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_0
    return-void
.end method
