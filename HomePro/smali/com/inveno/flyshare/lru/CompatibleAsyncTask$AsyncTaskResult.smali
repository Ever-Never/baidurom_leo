.class Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/flyshare/lru/CompatibleAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>.AsyncTaskResult<TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;->mTask:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 726
    iput-object p2, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 727
    return-void
.end method
