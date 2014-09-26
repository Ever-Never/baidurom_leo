.class Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;
.super Ljava/lang/Object;
.source "AppDetailContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3;Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;->this$1:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 451
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;->this$1:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$700(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 453
    .local v0, appImageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 458
    .end local v0           #appImageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
