.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

    iget-object v1, v1, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$100(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 199
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$100(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    #setter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$102(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->center(ZZ)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 206
    return-void
.end method
