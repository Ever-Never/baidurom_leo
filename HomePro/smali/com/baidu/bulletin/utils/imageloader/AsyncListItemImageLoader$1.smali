.class Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;
.super Ljava/lang/Object;
.source "AsyncListItemImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadDrawableFromUrl(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

.field final synthetic val$callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field final synthetic val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

.field final synthetic val$imgSize:[I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;ILcom/baidu/bulletin/db/entity/ImageInfo;[ILcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iput p2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$position:I

    iput-object p3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iput-object p4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imgSize:[I

    iput-object p5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 120
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z
    invoke-static {v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$000(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    const-string v3, "AsyncImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare to load postion :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$100(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 127
    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$100(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z
    invoke-static {v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$000(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    const-string v3, "AsyncImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStartLoadLimit:I
    invoke-static {v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$200(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStopLoadLimit:I
    invoke-static {v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$300(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$position:I

    iget-object v4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStopLoadLimit:I
    invoke-static {v4}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$300(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)I

    move-result v4

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$position:I

    iget-object v4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStartLoadLimit:I
    invoke-static {v4}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$200(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 140
    const-string v3, "AsyncImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " between "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStartLoadLimit:I
    invoke-static {v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$200(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    #getter for: Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStopLoadLimit:I
    invoke-static {v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->access$300(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "image id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imgSize:[I

    array-length v3, v3

    if-nez v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v3, v3, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mNetWorkImageLoader:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    iget-object v4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v5, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;

    iget-object v6, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v7, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    invoke-virtual {v3, v4, v5}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    .line 159
    :goto_1
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imgSize:[I

    aget v2, v3, v8

    .line 148
    .local v2, imgWidth:I
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imgSize:[I

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 149
    .local v1, imgHeight:I
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v3, v3, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mNetWorkImageLoader:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    iget-object v4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v5, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;

    iget-object v6, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v7, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-direct {v5, v6, v7, v2, v1}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    invoke-virtual {v3, v4, v5}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    goto :goto_1

    .line 153
    .end local v1           #imgHeight:I
    .end local v2           #imgWidth:I
    :cond_2
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->removeRunningList(Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_1

    .line 157
    :cond_3
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v4, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->removeRunningList(Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_1
.end method
