.class Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;
.super Ljava/lang/Object;
.source "DetailContentViewFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->this$1:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->this$1:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNewsContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v2, v2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->this$1:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1$1;->this$1:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;

    iget-object v3, v3, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;

    iget-object v3, v3, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNewsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    #calls: Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->getFullScreenBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->access$000(Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
