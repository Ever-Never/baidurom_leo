.class Lcom/baidu/launcher/ui/homeview/HomeView$1;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->loadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$1;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$1;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {v0, v1, v6}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$1;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {v0, v1, v6}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$1;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {v0, v1, v6}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$1;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {v0, v1, v6}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method
