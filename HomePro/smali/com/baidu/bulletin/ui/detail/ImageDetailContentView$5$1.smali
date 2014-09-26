.class Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;
.super Ljava/lang/Object;
.source "ImageDetailContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->this$1:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 399
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->this$1:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$100(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/ImageGallery;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 401
    .local v0, appImageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 402
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->this$1:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLoadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$800(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 404
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5$1;->this$1:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$5;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->setButtonEnabled(Z)V

    .line 407
    .end local v0           #appImageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
