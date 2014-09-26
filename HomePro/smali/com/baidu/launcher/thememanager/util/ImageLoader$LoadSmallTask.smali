.class Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;
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
    name = "LoadSmallTask"
.end annotation


# instance fields
.field private imageview:Landroid/widget/ImageView;

.field private mCacheKey:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .parameter
    .parameter "preview_path"
    .parameter "k"
    .parameter "v"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    if-eqz p2, :cond_0

    const-string v0, "com.baidu"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 137
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mPath:Ljava/lang/String;

    .line 141
    :goto_0
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mCacheKey:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mKey:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->imageview:Landroid/widget/ImageView;

    .line 144
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/Constants;->THEME_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mPath:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->imageview:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    .line 149
    .local v8, ti:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mKey:Ljava/lang/String;

    iget-object v1, v8, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 152
    .local v6, Bitmap_cache:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 153
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mKey:Ljava/lang/String;

    iget-object v1, v8, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->imageview:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask$1;

    invoke-direct {v1, p0, v6}, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask$1;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 191
    .end local v6           #Bitmap_cache:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v6       #Bitmap_cache:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mPath:Ljava/lang/String;

    const/16 v3, 0xf0

    const/16 v4, 0x190

    const v5, 0x17700

    #calls: Lcom/baidu/launcher/thememanager/util/ImageLoader;->loadImageFromPath(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->access$100(Lcom/baidu/launcher/thememanager/util/ImageLoader;Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 170
    .local v7, result:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 172
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    .line 173
    .local v9, ti2:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mKey:Ljava/lang/String;

    iget-object v1, v9, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;->imageview:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask$2;

    invoke-direct {v1, p0, v7}, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask$2;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 189
    .end local v6           #Bitmap_cache:Landroid/graphics/Bitmap;
    .end local v7           #result:Landroid/graphics/Bitmap;
    .end local v9           #ti2:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    :cond_4
    const-string v0, "TaskImageView"

    const-string v1, "ignore load"

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
