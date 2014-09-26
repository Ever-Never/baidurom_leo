.class Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;
.super Ljava/lang/Object;
.source "ChangeNotifyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyTask"
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;

.field private mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

.field final synthetic this$0:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "event"
    .parameter "data"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;->this$0:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;->mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    .line 126
    iput-object p3, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;->mData:Ljava/lang/Object;

    .line 127
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;->this$0:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    iget-object v3, v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    monitor-enter v3

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;->this$0:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    iget-object v2, v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;->mObserverContainer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;

    .line 133
    .local v1, reference:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    iget-object v2, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;->mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    iget-object v4, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$NotifyTask;->mData:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->notify(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #reference:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    return-void
.end method
