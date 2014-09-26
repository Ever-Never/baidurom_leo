.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .locals 2
    .parameter "hasMore"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->hasMore:Z
    invoke-static {v0, p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->access$2202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;Z)Z

    .line 774
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 789
    const-string v0, "AbstractDragListViewComponent"

    const-string v1, "onRefreshOld onFinished!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void
.end method
