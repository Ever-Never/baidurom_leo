.class public Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$DiscardImagePolicy;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DiscardImagePolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;


# direct methods
.method protected constructor <init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$DiscardImagePolicy;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .parameter "r"
    .parameter "e"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$DiscardImagePolicy;->this$0:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->removeRunningList(Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 52
    return-void
.end method
