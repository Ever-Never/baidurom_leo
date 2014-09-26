.class public Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnRefreshFinishedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .locals 2
    .parameter "hasMore"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 746
    return-void
.end method
