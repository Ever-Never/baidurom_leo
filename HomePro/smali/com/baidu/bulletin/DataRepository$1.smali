.class Lcom/baidu/bulletin/DataRepository$1;
.super Ljava/lang/Thread;
.source "DataRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/DataRepository;->handleRemoveFileWithNewThead(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/DataRepository;

.field final synthetic val$removeFileSet:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataRepository;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/baidu/bulletin/DataRepository$1;->this$0:Lcom/baidu/bulletin/DataRepository;

    iput-object p2, p0, Lcom/baidu/bulletin/DataRepository$1;->val$removeFileSet:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 335
    iget-object v6, p0, Lcom/baidu/bulletin/DataRepository$1;->val$removeFileSet:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 336
    .local v3, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/DataRepository$1;->this$0:Lcom/baidu/bulletin/DataRepository;

    #getter for: Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;
    invoke-static {v6}, Lcom/baidu/bulletin/DataRepository;->access$200(Lcom/baidu/bulletin/DataRepository;)Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->get(Ljava/lang/String;)Lcom/baidu/bulletin/entity/Channel$Version;

    move-result-object v5

    .line 337
    .local v5, version:Lcom/baidu/bulletin/entity/Channel$Version;
    iget-object v6, p0, Lcom/baidu/bulletin/DataRepository$1;->val$removeFileSet:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 338
    .local v4, removeFile:Ljava/lang/String;
    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/baidu/bulletin/DataRepository$1;->this$0:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v5}, Lcom/baidu/bulletin/entity/Channel$Version;->low()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v3, v4}, Lcom/baidu/bulletin/DataRepository;->querySameFileWithItem(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/baidu/bulletin/DataRepository$1;->this$0:Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v5}, Lcom/baidu/bulletin/entity/Channel$Version;->low()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v3, v4}, Lcom/baidu/bulletin/DataRepository;->querySameFileWithAttachement(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 340
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 343
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file delete complete >>>"

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v0           #file:Ljava/io/File;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #removeFile:Ljava/lang/String;
    .end local v5           #version:Lcom/baidu/bulletin/entity/Channel$Version;
    :cond_2
    return-void
.end method
