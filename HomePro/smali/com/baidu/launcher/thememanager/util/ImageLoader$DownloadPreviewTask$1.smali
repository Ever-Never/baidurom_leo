.class Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;

.field final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;->this$1:Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;->val$result:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;->val$result:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;->this$1:Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->imageview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->access$600(Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    const-string v0, "TaskImageView"

    const-string v1, "imageview set preview bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    return-void
.end method
