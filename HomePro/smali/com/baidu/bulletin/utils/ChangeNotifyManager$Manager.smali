.class Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;
.super Ljava/lang/Object;
.source "ChangeNotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/ChangeNotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Manager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;,
        Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    }
.end annotation


# static fields
.field private static mSingleton:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;


# instance fields
.field mObserverContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;",
            ">;"
        }
    .end annotation
.end field

.field mUiHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mUiHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    .line 70
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mSingleton:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    invoke-direct {v0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mSingleton:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    .line 61
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mSingleton:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static isAvailable()Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mSingleton:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized notify(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 2
    .parameter "event"
    .parameter "data"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;-><init>(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V
    .locals 5
    .parameter "event"
    .parameter "observer"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    new-instance v3, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;

    invoke-direct {v3, p0, p1, p2}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;-><init>(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 87
    .local v3, reference:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    iget-object v4, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;

    .line 88
    .local v2, observerRef:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->isSame(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    .end local v2           #observerRef:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 95
    iget-object v4, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;

    invoke-virtual {v4}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #reference:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 94
    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #reference:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method trim()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, container:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;>;"
    iget-object v3, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;

    .line 75
    .local v2, refrence:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v2           #refrence:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    :cond_1
    iput-object v0, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    .line 81
    return-void
.end method

.method declared-synchronized unregister(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V
    .locals 4
    .parameter "event"
    .parameter "observer"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;-><init>(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 108
    .local v2, reference:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    iget-object v3, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;

    .line 109
    .local v1, observerRef:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->equals(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v1           #observerRef:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    :cond_1
    monitor-exit p0

    return-void

    .line 106
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #reference:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
