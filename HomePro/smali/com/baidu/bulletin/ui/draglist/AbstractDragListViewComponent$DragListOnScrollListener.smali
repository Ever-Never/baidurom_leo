.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragListOnScrollListener"
.end annotation


# instance fields
.field private isLastRow:Z

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V
    .locals 1
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->isLastRow:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x0

    .line 663
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mFirstVisibleItemIndex:I
    invoke-static {v0, p2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$302(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;I)I

    .line 666
    if-lez p4, :cond_1

    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->isLastRow:Z

    .line 679
    :goto_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mImageScrollListener:Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mImageScrollListener:Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 682
    :cond_0
    return-void

    .line 670
    :cond_1
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->isLastRow:Z

    .line 671
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLastPage:Z
    invoke-static {v0, v2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1402(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Z)Z

    .line 674
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1500(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0119

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 675
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 676
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->isLastRow:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLastPage:Z
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1400(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLoadOld:Z
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLoadOld:Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1802(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Z)Z

    .line 692
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mImageScrollListener:Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mImageScrollListener:Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 699
    :cond_1
    return-void
.end method
