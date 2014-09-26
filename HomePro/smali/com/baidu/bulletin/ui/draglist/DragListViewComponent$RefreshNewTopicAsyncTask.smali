.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;
.super Landroid/os/AsyncTask;
.source "DragListViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshNewTopicAsyncTask"
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
.field private mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

.field private mTopicId:I

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V
    .locals 0
    .parameter
    .parameter "topicId"
    .parameter "refreshFinishedListener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 115
    iput p2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->mTopicId:I

    .line 116
    iput-object p3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 122
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    move-result-object v0

    .line 123
    .local v0, dataManager:Lcom/baidu/bulletin/DataManager;
    new-instance v1, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->mTopicId:I

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V

    const/16 v2, 0x14

    iget v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->mTopicId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/DataManager;->requestNewestFromLocal(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;II)V

    .line 126
    const/4 v1, 0x0

    return-object v1
.end method
