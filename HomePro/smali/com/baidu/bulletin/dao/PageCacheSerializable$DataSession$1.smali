.class Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;
.super Ljava/lang/Thread;
.source "PageCacheSerializable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->cachedPageDataAsyncly(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;->this$0:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;->this$0:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mIsAsyncCaching:Z
    invoke-static {v1, v2}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->access$102(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;Z)Z

    .line 118
    const/4 v0, -0x1

    .line 120
    .local v0, currentPos:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;->this$0:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    #getter for: Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mAsyncCachingPosition:I
    invoke-static {v1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->access$200(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;->this$0:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    #getter for: Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mAsyncCachingPosition:I
    invoke-static {v1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->access$200(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;->this$0:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    #calls: Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->loadPageDataCacheLoop(I)V
    invoke-static {v1, v0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->access$300(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;->this$0:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mIsAsyncCaching:Z
    invoke-static {v1, v2}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->access$102(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;Z)Z

    .line 126
    return-void
.end method
