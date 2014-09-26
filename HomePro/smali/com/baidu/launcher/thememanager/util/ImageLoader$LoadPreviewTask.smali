.class Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;
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
    name = "LoadPreviewTask"
.end annotation


# instance fields
.field private imageview:Landroid/widget/ImageView;

.field private mCacheKey:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "v"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->mPath:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->imageview:Landroid/widget/ImageView;

    .line 202
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->mCacheKey:Ljava/lang/String;

    .line 203
    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->imageview:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 208
    .local v7, tag:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->mPath:Ljava/lang/String;

    const/16 v3, 0x168

    const/16 v4, 0x258

    const v5, 0x34bc0

    #calls: Lcom/baidu/launcher/thememanager/util/ImageLoader;->loadImageFromPath(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->access$100(Lcom/baidu/launcher/thememanager/util/ImageLoader;Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 212
    .local v6, result:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 214
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 215
    .local v8, tag2:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v6, v9, v9}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;->imageview:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;

    invoke-direct {v1, p0, v6}, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask$1;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 231
    .end local v6           #result:Landroid/graphics/Bitmap;
    .end local v8           #tag2:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string v0, "TaskImageView"

    const-string v1, "ignore load"

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
