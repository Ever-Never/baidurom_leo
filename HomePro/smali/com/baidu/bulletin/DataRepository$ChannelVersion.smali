.class public Lcom/baidu/bulletin/DataRepository$ChannelVersion;
.super Ljava/lang/Object;
.source "DataRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/DataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelVersion"
.end annotation


# instance fields
.field private mVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bulletin/entity/Channel$Version;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionCanceled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/bulletin/DataRepository;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/DataRepository;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->this$0:Lcom/baidu/bulletin/DataRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersion:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersionCanceled:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/baidu/bulletin/entity/Channel$Version;
    .locals 1
    .parameter "channelId"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersion:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/entity/Channel$Version;

    return-object v0
.end method

.method protected getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bulletin/entity/Channel$Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersion:Ljava/util/Map;

    return-object v0
.end method

.method protected getCanceledChannel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersionCanceled:Ljava/util/Map;

    return-object v0
.end method

.method public getCanceledChannelVersion(Ljava/lang/String;)Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    .locals 1
    .parameter "channelId"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersionCanceled:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    return-object v0
.end method

.method public getCountToUpdate()I
    .locals 9

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, count:J
    iget-object v5, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersion:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->get(Ljava/lang/String;)Lcom/baidu/bulletin/entity/Channel$Version;

    move-result-object v4

    .line 92
    .local v4, version:Lcom/baidu/bulletin/entity/Channel$Version;
    invoke-virtual {v4}, Lcom/baidu/bulletin/entity/Channel$Version;->up()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/baidu/bulletin/entity/Channel$Version;->current()J

    move-result-wide v7

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 93
    goto :goto_0

    .line 95
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #version:Lcom/baidu/bulletin/entity/Channel$Version;
    :cond_0
    iget-object v5, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersion:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 97
    long-to-int v5, v0

    return v5
.end method

.method public getUpdatedCount()I
    .locals 9

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    .line 102
    .local v0, count:J
    iget-object v7, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersion:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    .local v5, key:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->get(Ljava/lang/String;)Lcom/baidu/bulletin/entity/Channel$Version;

    move-result-object v6

    .line 104
    .local v6, version:Lcom/baidu/bulletin/entity/Channel$Version;
    iget-object v7, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->this$0:Lcom/baidu/bulletin/DataRepository;

    #calls: Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;
    invoke-static {v7}, Lcom/baidu/bulletin/DataRepository;->access$000(Lcom/baidu/bulletin/DataRepository;)Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v7

    const-class v8, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-interface {v7, v8, v5}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryMaxId(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    .line 105
    .local v2, current:J
    invoke-virtual {v6}, Lcom/baidu/bulletin/entity/Channel$Version;->current()J

    move-result-wide v7

    sub-long v7, v2, v7

    add-long/2addr v0, v7

    .line 106
    invoke-virtual {v6, v2, v3}, Lcom/baidu/bulletin/entity/Channel$Version;->update(J)V

    goto :goto_0

    .line 109
    .end local v2           #current:J
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #version:Lcom/baidu/bulletin/entity/Channel$Version;
    :cond_0
    long-to-int v7, v0

    return v7
.end method

.method public update(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;)Z
    .locals 6
    .parameter "version"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->this$0:Lcom/baidu/bulletin/DataRepository;

    #calls: Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;
    invoke-static {v2}, Lcom/baidu/bulletin/DataRepository;->access$000(Lcom/baidu/bulletin/DataRepository;)Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v2

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryMaxId(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    .line 58
    .local v0, current:J
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", item low is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->low:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", channel is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-wide v2, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersion:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    new-instance v4, Lcom/baidu/bulletin/entity/Channel$Version;

    invoke-direct {v4, p1, v0, v1}, Lcom/baidu/bulletin/entity/Channel$Version;-><init>(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;J)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/4 v2, 0x1

    .line 69
    .end local v0           #current:J
    :goto_0
    return v2

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->mVersionCanceled:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
