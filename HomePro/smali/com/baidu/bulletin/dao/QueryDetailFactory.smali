.class public Lcom/baidu/bulletin/dao/QueryDetailFactory;
.super Ljava/lang/Object;
.source "QueryDetailFactory.java"

# interfaces
.implements Lcom/baidu/bulletin/dao/IQueryDetailFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createQueryDetail(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/dao/IQueryDetail;
    .locals 4
    .parameter "channelItem"

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, queryDetail:Lcom/baidu/bulletin/dao/IQueryDetail;
    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    new-instance v0, Lcom/baidu/bulletin/dao/AppListQueryDetail;

    .end local v0           #queryDetail:Lcom/baidu/bulletin/dao/IQueryDetail;
    invoke-direct {v0}, Lcom/baidu/bulletin/dao/AppListQueryDetail;-><init>()V

    .line 21
    .restart local v0       #queryDetail:Lcom/baidu/bulletin/dao/IQueryDetail;
    :goto_0
    return-object v0

    .line 12
    :cond_0
    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v2, "baike"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    new-instance v0, Lcom/baidu/bulletin/dao/NativePageQueryDetail;

    .end local v0           #queryDetail:Lcom/baidu/bulletin/dao/IQueryDetail;
    invoke-direct {v0}, Lcom/baidu/bulletin/dao/NativePageQueryDetail;-><init>()V

    .restart local v0       #queryDetail:Lcom/baidu/bulletin/dao/IQueryDetail;
    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v2, "news"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    new-instance v0, Lcom/baidu/bulletin/dao/NativePageQueryDetail;

    .end local v0           #queryDetail:Lcom/baidu/bulletin/dao/IQueryDetail;
    invoke-direct {v0}, Lcom/baidu/bulletin/dao/NativePageQueryDetail;-><init>()V

    .restart local v0       #queryDetail:Lcom/baidu/bulletin/dao/IQueryDetail;
    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    const-string v2, "tieba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not support for tie ba"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not support!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
