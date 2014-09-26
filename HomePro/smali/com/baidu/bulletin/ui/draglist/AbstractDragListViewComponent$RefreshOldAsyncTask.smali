.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;
.super Landroid/os/AsyncTask;
.source "AbstractDragListViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshOldAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private hasMore:Z

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->hasMore:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->hasMore:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 750
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask$1;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->onRefreshOld(Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;)V

    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 756
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->hasMore:Z

    .line 758
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1500(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0119

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 759
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 760
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$2100(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1500(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    return-void
.end method
