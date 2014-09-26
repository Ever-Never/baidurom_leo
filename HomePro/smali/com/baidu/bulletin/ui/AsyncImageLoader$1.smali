.class Lcom/baidu/bulletin/ui/AsyncImageLoader$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/AsyncImageLoader;->loadDrawableWithThread(Ljava/lang/String;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/AsyncImageLoader;

.field final synthetic val$callback:Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/AsyncImageLoader;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/ui/AsyncImageLoader;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->val$callback:Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->val$callback:Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;

    invoke-interface {v5}, Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;->getWidth()I

    move-result v4

    .line 95
    .local v4, width:I
    iget-object v5, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->val$callback:Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;

    invoke-interface {v5}, Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;->getHeight()I

    move-result v3

    .line 96
    .local v3, height:I
    iget-object v5, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->val$path:Ljava/lang/String;

    invoke-static {v5, v4, v3}, Lcom/baidu/bulletin/ui/Utilities;->getBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, bitmap:Landroid/graphics/Bitmap;
    #calls: Lcom/baidu/bulletin/ui/AsyncImageLoader;->cropBitmapToDrawable(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v4, v3}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->access$000(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 100
    iget-object v5, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/ui/AsyncImageLoader;

    #getter for: Lcom/baidu/bulletin/ui/AsyncImageLoader;->mUiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->access$100(Lcom/baidu/bulletin/ui/AsyncImageLoader;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/baidu/bulletin/ui/AsyncImageLoader$1$1;

    invoke-direct {v6, p0, v1}, Lcom/baidu/bulletin/ui/AsyncImageLoader$1$1;-><init>(Lcom/baidu/bulletin/ui/AsyncImageLoader$1;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #height:I
    .end local v4           #width:I
    :goto_0
    return-void

    .line 107
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bitmap crop unsuccess"

    invoke-static {v5, v6}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/ui/AsyncImageLoader;

    #getter for: Lcom/baidu/bulletin/ui/AsyncImageLoader;->mUiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->access$100(Lcom/baidu/bulletin/ui/AsyncImageLoader;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/baidu/bulletin/ui/AsyncImageLoader$1$2;

    invoke-direct {v6, p0}, Lcom/baidu/bulletin/ui/AsyncImageLoader$1$2;-><init>(Lcom/baidu/bulletin/ui/AsyncImageLoader$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #height:I
    .end local v4           #width:I
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;->this$0:Lcom/baidu/bulletin/ui/AsyncImageLoader;

    #getter for: Lcom/baidu/bulletin/ui/AsyncImageLoader;->mUiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->access$100(Lcom/baidu/bulletin/ui/AsyncImageLoader;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/baidu/bulletin/ui/AsyncImageLoader$1$3;

    invoke-direct {v6, p0}, Lcom/baidu/bulletin/ui/AsyncImageLoader$1$3;-><init>(Lcom/baidu/bulletin/ui/AsyncImageLoader$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    invoke-static {}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
