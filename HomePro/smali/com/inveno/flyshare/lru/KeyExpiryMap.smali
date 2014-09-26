.class public Lcom/inveno/flyshare/lru/KeyExpiryMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "KeyExpiryMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TK;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 31
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 27
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 28
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "concurrencyLevel"

    .prologue
    .line 23
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 6
    .parameter "key"

    .prologue
    .line 57
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 58
    .local v0, result:Z
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 60
    const/4 v0, 0x1

    .line 65
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .parameter "key"

    .prologue
    .line 40
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/KeyExpiryMap;->get(Ljava/lang/Object;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .parameter
    .parameter "expiryTimestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    .line 52
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    monitor-enter p0

    :try_start_0
    check-cast p1, Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/inveno/flyshare/lru/KeyExpiryMap;->put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .parameter "key"

    .prologue
    .line 70
    .local p0, this:Lcom/inveno/flyshare/lru/KeyExpiryMap;,"Lcom/inveno/flyshare/lru/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
