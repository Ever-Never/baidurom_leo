.class public Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;
.super Ljava/lang/Object;
.source "PageAttachementDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Blacklist"
.end annotation


# instance fields
.field private mBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->mBlacklist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->exist(J)Z

    move-result v0

    return v0
.end method

.method private exist(J)Z
    .locals 1
    .parameter "_id"

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->getIndex(J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIndex(J)I
    .locals 3
    .parameter "_id"

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->mBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->mBlacklist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 283
    .end local v0           #i:I
    :goto_1
    return v0

    .line 278
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 261
    monitor-enter p0

    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 263
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->exist(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->mBlacklist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 269
    monitor-enter p0

    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 271
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->getIndex(J)I

    move-result v0

    .line 272
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->mBlacklist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 269
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
