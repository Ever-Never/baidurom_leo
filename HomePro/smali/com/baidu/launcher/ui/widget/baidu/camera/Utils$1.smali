.class final Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;
.super Ljava/lang/Thread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->saveBitmap(Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currTime:J

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(JLandroid/graphics/Bitmap;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$currTime:J

    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 190
    :try_start_0
    #calls: Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->checkPhotoDir()Ljava/io/File;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->access$000()Ljava/io/File;

    .line 191
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$currTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, f:Ljava/io/File;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-wide v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$currTime:J

    #calls: Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->realSaveBitmap(Landroid/graphics/Bitmap;JLjava/io/File;)V
    invoke-static {v2, v3, v4, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->access$100(Landroid/graphics/Bitmap;JLjava/io/File;)V

    .line 193
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-wide v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$currTime:J

    #calls: Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->saveImageData(Landroid/content/Context;Landroid/graphics/Bitmap;JLjava/io/File;)V
    invoke-static {v2, v3, v4, v5, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->access$200(Landroid/content/Context;Landroid/graphics/Bitmap;JLjava/io/File;)V

    .line 194
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
