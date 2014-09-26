.class Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;
.super Ljava/lang/Object;
.source "WidgetPreviewCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$v2:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->this$1:Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;

    iput-object p2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->val$v2:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->this$1:Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;

    iget-object v0, v0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->this$0:Lcom/baidu/launcher/data/WidgetPreviewCache;

    #getter for: Lcom/baidu/launcher/data/WidgetPreviewCache;->mWidgetPreview:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->access$400(Lcom/baidu/launcher/data/WidgetPreviewCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->this$1:Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;

    #getter for: Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;
    invoke-static {v1}, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->access$300(Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->val$v2:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget-object v2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->this$1:Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mInfo:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->access$302(Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask$1;->this$1:Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;

    #getter for: Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->mView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;->access$500(Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 144
    return-void
.end method
