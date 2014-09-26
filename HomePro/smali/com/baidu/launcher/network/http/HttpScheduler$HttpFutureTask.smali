.class Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "HttpScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/HttpScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .parameter "runnable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;,"Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask<TV;>;"
    .local p2, result:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 55
    check-cast p1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    .end local p1
    iput-object p1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;,"Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask<TV;>;"
    .local p1, o:Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;,"Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask<TV;>;"
    const/4 v0, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-nez p1, :cond_2

    .line 66
    const/4 v0, -0x1

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    instance-of v1, v1, Ljava/lang/Comparable;

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    iget-object v1, p1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->object:Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    .local p0, this:Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;,"Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask<TV;>;"
    check-cast p1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;->compareTo(Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;)I

    move-result v0

    return v0
.end method
