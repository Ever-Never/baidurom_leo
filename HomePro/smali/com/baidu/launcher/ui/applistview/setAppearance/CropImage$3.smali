.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 193
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 194
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$100(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$300(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3$1;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$3;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    iget-object v3, v3, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 214
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
