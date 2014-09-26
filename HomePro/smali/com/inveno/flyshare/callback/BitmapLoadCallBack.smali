.class public abstract Lcom/inveno/flyshare/callback/BitmapLoadCallBack;
.super Ljava/lang/Object;
.source "BitmapLoadCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, this:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    .local p1, container:Landroid/view/View;,"TT;"
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Landroid/widget/ImageView;

    .end local p1           #container:Landroid/view/View;,"TT;"
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .restart local p1       #container:Landroid/view/View;,"TT;"
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadFrom;)V
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
.end method

.method public abstract onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation
.end method

.method public onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/config/BitmapDisplayConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    .local p1, container:Landroid/view/View;,"TT;"
    return-void
.end method

.method public onLoading(Ljava/lang/Object;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "object"
    .parameter "uri"
    .parameter "currentDownload"
    .parameter "totalSize"

    .prologue
    .line 56
    .local p0, this:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    return-void
.end method

.method public onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/config/BitmapDisplayConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    .local p1, container:Landroid/view/View;,"TT;"
    return-void
.end method

.method public setBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    .local p1, container:Landroid/view/View;,"TT;"
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 88
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 89
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 90
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    .line 87
    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 91
    .local v0, td:Landroid/graphics/drawable/TransitionDrawable;
    check-cast p1, Landroid/widget/ImageView;

    .end local p1           #container:Landroid/view/View;,"TT;"
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 98
    .end local v0           #td:Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return-void

    .line 94
    .restart local p1       #container:Landroid/view/View;,"TT;"
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "drawable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    .local p1, container:Landroid/view/View;,"TT;"
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Landroid/widget/ImageView;

    .end local p1           #container:Landroid/view/View;,"TT;"
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :goto_0
    return-void

    .line 104
    .restart local p1       #container:Landroid/view/View;,"TT;"
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u80cc\u666f\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
