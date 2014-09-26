.class public Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;
.super Lcom/inveno/flyshare/callback/BitmapLoadCallBack;
.source "SimpleBitmapLoadCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, this:Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack<TT;>;"
    invoke-direct {p0}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;-><init>()V

    return-void
.end method

.method private animationDisplay(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 5
    .parameter
    .parameter "animation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack<TT;>;"
    .local p1, container:Landroid/view/View;,"TT;"
    :try_start_0
    const-class v2, Landroid/view/animation/Animation;

    const-string v3, "clone"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    .local v0, cloneMethod:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 39
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0           #cloneMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadFrom;)V
    .locals 1
    .parameter
    .parameter "url"
    .parameter "bitmap"
    .parameter "config"
    .parameter "from"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/inveno/flyshare/config/BitmapDisplayConfig;",
            "Lcom/inveno/flyshare/callback/BitmapLoadFrom;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack<TT;>;"
    .local p1, container:Landroid/view/View;,"TT;"
    invoke-virtual {p0, p1, p3}, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;->setBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 19
    invoke-virtual {p4}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 20
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;->animationDisplay(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 23
    :cond_0
    return-void
.end method

.method public onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter "drawable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack<TT;>;"
    .local p1, container:Landroid/view/View;,"TT;"
    invoke-virtual {p0, p1, p3}, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method public onLoading(Ljava/lang/Object;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "object"
    .parameter "uri"
    .parameter "currentDownload"
    .parameter "totalSize"

    .prologue
    .line 33
    .local p0, this:Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack<TT;>;"
    return-void
.end method
