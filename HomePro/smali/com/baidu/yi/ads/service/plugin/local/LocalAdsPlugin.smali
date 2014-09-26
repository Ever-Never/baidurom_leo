.class public Lcom/baidu/yi/ads/service/plugin/local/LocalAdsPlugin;
.super Ljava/lang/Object;
.source "LocalAdsPlugin.java"

# interfaces
.implements Lcom/baidu/yi/ads/service/plugin/AdPlugin;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/ads/service/AdService;I)V
    .locals 0
    .parameter "service"
    .parameter "id"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/local/LocalAdsPlugin;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getAd(Lcom/baidu/yi/ads/service/plugin/Raw$RawRequest;III)Lcom/baidu/yi/ads/Ad;
    .locals 8
    .parameter "params"
    .parameter "limited"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 40
    iget-object v6, p0, Lcom/baidu/yi/ads/service/plugin/local/LocalAdsPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 41
    .local v2, assetManager:Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 43
    .local v5, is:Ljava/io/InputStream;
    if-ne p3, p4, :cond_0

    .line 44
    :try_start_0
    const-string v6, "1.png"

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 52
    :goto_0
    if-eqz v5, :cond_1

    .line 53
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 54
    .local v3, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v3, :cond_1

    .line 55
    new-instance v1, Lcom/baidu/yi/ads/Ad;

    invoke-direct {v1}, Lcom/baidu/yi/ads/Ad;-><init>()V

    .line 56
    .local v1, ad:Lcom/baidu/yi/ads/Ad;
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/baidu/yi/ads/Ad;->setContentType(I)V

    .line 57
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/baidu/yi/ads/Ad;->setImage(Landroid/graphics/Bitmap;)V

    .line 59
    new-instance v0, Lcom/baidu/yi/ads/Ad$Action;

    const/4 v6, 0x1

    const-string v7, "http://www.baidu.com"

    invoke-direct {v0, v6, v7}, Lcom/baidu/yi/ads/Ad$Action;-><init>(ILjava/lang/String;)V

    .line 60
    .local v0, a:Lcom/baidu/yi/ads/Ad$Action;
    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/Ad;->addAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .line 65
    .end local v0           #a:Lcom/baidu/yi/ads/Ad$Action;
    .end local v1           #ad:Lcom/baidu/yi/ads/Ad;
    .end local v3           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    return-object v1

    .line 46
    :cond_0
    :try_start_1
    const-string v6, "5.png"

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    .line 48
    :catch_0
    move-exception v4

    .line 49
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public releaseResources()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
