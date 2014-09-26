.class public Lcom/inveno/flyshare/config/BitmapDisplayConfig;
.super Ljava/lang/Object;
.source "BitmapDisplayConfig.java"


# static fields
.field private static final TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/Drawable;


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

.field private isSaveToSdcard:Z

.field private loadFailedDrawable:Landroid/graphics/drawable/Drawable;

.field private loadingDrawable:Landroid/graphics/drawable/Drawable;

.field private showOriginal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 25
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->showOriginal:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isSaveToSdcard:Z

    .line 22
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 31
    sget-object v0, Lcom/inveno/flyshare/lru/BitmapSize;->ZERO:Lcom/inveno/flyshare/lru/BitmapSize;

    iput-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

    .line 32
    return-void
.end method


# virtual methods
.method public cloneNew()Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;-><init>()V

    .line 102
    .local v0, config:Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

    iput-object v1, v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

    .line 103
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->animation:Landroid/view/animation/Animation;

    iput-object v1, v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->animation:Landroid/view/animation/Animation;

    .line 104
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-boolean v1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->showOriginal:Z

    iput-boolean v1, v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->showOriginal:Z

    .line 107
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 108
    return-object v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getBitmapMaxSize()Lcom/inveno/flyshare/lru/BitmapSize;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/flyshare/lru/BitmapSize;->ZERO:Lcom/inveno/flyshare/lru/BitmapSize;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

    goto :goto_0
.end method

.method public getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getLoadingDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public isSaveToSdcard()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isSaveToSdcard:Z

    return v0
.end method

.method public isShowOriginal()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->showOriginal:Z

    return v0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->animation:Landroid/view/animation/Animation;

    .line 48
    return-void
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .parameter "bitmapConfig"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 81
    return-void
.end method

.method public setBitmapMaxSize(Lcom/inveno/flyshare/lru/BitmapSize;)V
    .locals 0
    .parameter "bitmapMaxSize"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

    .line 40
    return-void
.end method

.method public setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "loadFailedDrawable"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "loadingDrawable"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method

.method public setSaveToSdcard(Z)V
    .locals 0
    .parameter "isSaveToSdcard"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isSaveToSdcard:Z

    .line 91
    return-void
.end method

.method public setShowOriginal(Z)V
    .locals 0
    .parameter "showOriginal"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->showOriginal:Z

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 97
    .local v0, s:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 95
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

    if-nez v1, :cond_1

    sget-object v1, Lcom/inveno/flyshare/lru/BitmapSize;->ZERO:Lcom/inveno/flyshare/lru/BitmapSize;

    :goto_1
    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/BitmapSize;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->bitmapMaxSize:Lcom/inveno/flyshare/lru/BitmapSize;

    goto :goto_1
.end method
