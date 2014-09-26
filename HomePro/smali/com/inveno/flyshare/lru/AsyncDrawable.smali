.class public Lcom/inveno/flyshare/lru/AsyncDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AsyncDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/graphics/drawable/Drawable;"
    }
.end annotation


# instance fields
.field private final baseDrawable:Landroid/graphics/drawable/Drawable;

.field private final bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;)V
    .locals 2
    .parameter "drawable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    .local p2, bitmapWorkerTask:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "drawable may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    if-nez p2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    const-string v1, "bitmapWorkerTask may not be null"

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p1, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 38
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 37
    iput-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 117
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 118
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 47
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.method public getBitmapWorkerTask()Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 82
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 137
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 157
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 167
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 162
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 172
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 97
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 98
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 122
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 177
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "what"
    .parameter "when"

    .prologue
    .line 102
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 103
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 52
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 67
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 72
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 73
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter "configs"

    .prologue
    .line 77
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 78
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 112
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 113
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "colorFilter"

    .prologue
    .line 57
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 58
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 87
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 88
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 92
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 93
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .parameter "stateSet"

    .prologue
    .line 127
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 142
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 107
    .local p0, this:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method
