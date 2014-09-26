.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->onFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;)V
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;->this$2:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;->this$2:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->hasMore:Z
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->access$2200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;->this$2:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;->this$2:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1500(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c011a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 783
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;->this$2:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLastPage:Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1402(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Z)Z

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1$1;->this$2:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLoadOld:Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1802(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Z)Z

    .line 787
    return-void
.end method
