.class Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;

.field final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;->this$1:Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;->val$result:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;->val$result:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;->this$1:Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->imageview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->access$200(Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    :cond_0
    return-void
.end method
