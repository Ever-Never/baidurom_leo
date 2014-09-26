.class Lcom/inveno/newpiflow/widget/PiImageView$1;
.super Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;
.source "PiImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/widget/PiImageView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/PiImageView;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/PiImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiImageView$1;->this$0:Lcom/inveno/newpiflow/widget/PiImageView;

    invoke-direct {p0}, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadFrom;)V
    .locals 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/inveno/newpiflow/widget/PiImageView$1;->onLoadCompleted(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadFrom;)V

    return-void
.end method

.method public onLoadCompleted(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadFrom;)V
    .locals 2
    .parameter "container"
    .parameter "url"
    .parameter "bitmap"
    .parameter "config"
    .parameter "from"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiImageView$1;->this$0:Lcom/inveno/newpiflow/widget/PiImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiImageView;->setLoadBitmapOk(Z)V

    .line 60
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiImageView$1;->this$0:Lcom/inveno/newpiflow/widget/PiImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiImageView;->setLoading(Z)V

    .line 61
    invoke-super/range {p0 .. p5}, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadFrom;)V

    .line 62
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiImageView$1;->this$0:Lcom/inveno/newpiflow/widget/PiImageView;

    #calls: Lcom/inveno/newpiflow/widget/PiImageView;->compressImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    invoke-static {v0, p3, p1}, Lcom/inveno/newpiflow/widget/PiImageView;->access$000(Lcom/inveno/newpiflow/widget/PiImageView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 63
    return-void
.end method

.method public bridge synthetic onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/inveno/newpiflow/widget/PiImageView$1;->onLoadFailed(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "container"
    .parameter "url"
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiImageView$1;->this$0:Lcom/inveno/newpiflow/widget/PiImageView;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiImageView;->setLoadBitmapOk(Z)V

    .line 69
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiImageView$1;->this$0:Lcom/inveno/newpiflow/widget/PiImageView;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiImageView;->setLoading(Z)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public bridge synthetic onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/inveno/newpiflow/widget/PiImageView$1;->onLoadStarted(Landroid/widget/ImageView;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    return-void
.end method

.method public onLoadStarted(Landroid/widget/ImageView;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 2
    .parameter "container"
    .parameter "uri"
    .parameter "config"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiImageView$1;->this$0:Lcom/inveno/newpiflow/widget/PiImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiImageView;->setLoading(Z)V

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    .line 78
    return-void
.end method
