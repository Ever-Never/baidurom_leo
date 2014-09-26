.class Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadPreviewTask"
.end annotation


# instance fields
.field private imageview:Landroid/widget/ImageView;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "v"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->mPath:Ljava/lang/String;

    .line 302
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->imageview:Landroid/widget/ImageView;

    .line 303
    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->imageview:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 307
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, tag:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->mPath:Ljava/lang/String;

    const-string v6, "preview"

    #calls: Lcom/baidu/launcher/thememanager/util/ImageLoader;->downloadBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->access$400(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 312
    .local v3, temp:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 314
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    const/16 v5, 0x168

    const/16 v6, 0x258

    const v7, 0x34bc0

    #calls: Lcom/baidu/launcher/thememanager/util/ImageLoader;->getSmallImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    invoke-static {v4, v3, v5, v6, v7}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->access$500(Lcom/baidu/launcher/thememanager/util/ImageLoader;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    .local v0, result:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->mPath:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 323
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 324
    .local v2, tag2:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;->imageview:Landroid/widget/ImageView;

    new-instance v5, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;

    invoke-direct {v5, p0, v0}, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask$1;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 342
    .end local v0           #result:Landroid/graphics/Bitmap;
    .end local v2           #tag2:Ljava/lang/String;
    .end local v3           #temp:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v0       #result:Landroid/graphics/Bitmap;
    .restart local v2       #tag2:Ljava/lang/String;
    .restart local v3       #temp:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 340
    .end local v0           #result:Landroid/graphics/Bitmap;
    .end local v2           #tag2:Ljava/lang/String;
    .end local v3           #temp:Landroid/graphics/Bitmap;
    :cond_2
    const-string v4, "TaskImageView"

    const-string v5, "ignore download"

    invoke-static {v4, v5}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
