.class Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;
.super Ljava/lang/Object;
.source "NetWorkImageLoader.java"

# interfaces
.implements Lcom/baidu/bulletin/network/FileDownloader$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .line 52
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 53
    .local v1, imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mTaskCancelled:Z
    invoke-static {v2}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->access$000(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    :try_start_0
    const-string v2, "AsyncImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ImageInfo before set db : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;
    invoke-static {v2}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->access$100(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;)Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v2

    iget-wide v3, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImage(J)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;->setImageLocalPath(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    iget-object v3, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    #calls: Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->getImageSize(Ljava/lang/String;)J
    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->access$200(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bulletin/db/entity/ImageInfo;->setImageFileSize(J)V

    .line 62
    const-string v2, "AsyncImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ImageInfo after set db : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;
    invoke-static {v2}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->access$100(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;)Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-interface {v2, v5, v1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    :try_start_1
    const-string v2, "AsyncImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ImageInfo null from db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_2
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->mTaskCancelled:Z
    invoke-static {v2}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->access$000(Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-interface {v2, v5, v1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_1

    .line 77
    :cond_3
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->imageInfoCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-interface {v2, v5, v1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_1
.end method

.method public onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "fileitem"

    .prologue
    .line 86
    return-void
.end method
