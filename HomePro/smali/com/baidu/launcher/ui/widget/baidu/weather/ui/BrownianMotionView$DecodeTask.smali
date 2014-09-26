.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;
.super Landroid/os/AsyncTask;
.source "BrownianMotionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    .line 395
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mWidth:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mHeight:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 399
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeTask:mWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mWidth:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mHeight:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->setBGImage(Landroid/graphics/Bitmap;)V

    .line 412
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 390
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getWidth()I

    move-result v1

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mWidth:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->access$002(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;I)I

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->getHeight()I

    move-result v1

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->mHeight:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->access$102(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;I)I

    .line 422
    :cond_1
    return-void
.end method
