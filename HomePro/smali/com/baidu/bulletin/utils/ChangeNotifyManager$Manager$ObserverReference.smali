.class Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;
.super Ljava/lang/ref/WeakReference;
.source "ChangeNotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;",
        ">;"
    }
.end annotation


# instance fields
.field private mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

.field final synthetic this$0:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V
    .locals 0
    .parameter
    .parameter "event"
    .parameter "observer"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->this$0:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager;

    .line 31
    invoke-direct {p0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    iput-object p2, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;)Z
    .locals 2
    .parameter "observer"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    iget-object v1, p1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSame(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;)Z
    .locals 2
    .parameter "observer"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    iget-object v1, p1, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notify(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 2
    .parameter "event"
    .parameter "data"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->mEvent:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v1, p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Manager$ObserverReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;

    .line 38
    .local v0, observer:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;->onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V

    .line 40
    .end local v0           #observer:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;
    :cond_0
    return-void
.end method
