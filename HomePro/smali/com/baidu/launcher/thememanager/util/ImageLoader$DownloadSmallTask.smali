.class Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;
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
    name = "DownloadSmallTask"
.end annotation


# instance fields
.field private imageview:Landroid/widget/ImageView;

.field private mKey:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "k"
    .parameter "v"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mPath:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mKey:Ljava/lang/String;

    .line 242
    iput-object p4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->imageview:Landroid/widget/ImageView;

    .line 243
    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->imageview:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 247
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    .line 248
    .local v2, tag:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mKey:Ljava/lang/String;

    iget-object v5, v2, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, bitmap_cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mKey:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 252
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    .line 253
    .local v3, tag2:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mKey:Ljava/lang/String;

    iget-object v5, v3, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->imageview:Landroid/widget/ImageView;

    new-instance v5, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask$1;

    invoke-direct {v5, p0, v0}, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask$1;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 292
    .end local v0           #bitmap_cache:Landroid/graphics/Bitmap;
    .end local v3           #tag2:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    :cond_0
    :goto_0
    return-void

    .line 263
    .restart local v0       #bitmap_cache:Landroid/graphics/Bitmap;
    .restart local v3       #tag2:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 269
    .end local v3           #tag2:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mPath:Ljava/lang/String;

    const-string v6, "small"

    #calls: Lcom/baidu/launcher/thememanager/util/ImageLoader;->downloadBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->access$400(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    .local v1, result:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mKey:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 272
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 274
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    .line 275
    .restart local v3       #tag2:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->mKey:Ljava/lang/String;

    iget-object v5, v3, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;->imageview:Landroid/widget/ImageView;

    new-instance v5, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask$2;

    invoke-direct {v5, p0, v1}, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask$2;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 290
    .end local v0           #bitmap_cache:Landroid/graphics/Bitmap;
    .end local v1           #result:Landroid/graphics/Bitmap;
    .end local v3           #tag2:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    :cond_4
    const-string v4, "TaskImageView"

    const-string v5, "ignore download"

    invoke-static {v4, v5}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
