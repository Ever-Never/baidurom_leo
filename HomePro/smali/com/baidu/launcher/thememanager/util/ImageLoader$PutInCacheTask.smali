.class Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;
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
    name = "PutInCacheTask"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mKey:Ljava/lang/String;

.field private mUse_memcache:Z

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
    .parameter "aKey"
    .parameter "aBitmap"
    .parameter "aUse_memcache"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;->mKey:Ljava/lang/String;

    .line 353
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 354
    iput-boolean p4, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;->mUse_memcache:Z

    .line 355
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 359
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;->mUse_memcache:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 360
    return-void
.end method
