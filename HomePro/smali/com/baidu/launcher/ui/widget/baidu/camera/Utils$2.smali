.class final Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;
.super Ljava/lang/Thread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getAllPhotoInBackGround(Landroid/os/Handler;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$hasNew:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;->val$hasNew:Z

    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, allPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;->val$context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;->val$hasNew:Z

    invoke-static {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getAllPhotos(Landroid/content/Context;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;->val$handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 292
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    return-void

    .line 287
    .end local v2           #message:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 288
    .local v1, e:Ljava/sql/SQLException;
    const-string v3, "Utils_widget_camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
