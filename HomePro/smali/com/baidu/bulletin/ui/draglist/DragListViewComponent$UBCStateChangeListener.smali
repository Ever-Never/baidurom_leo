.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;
.super Ljava/lang/Object;
.source "DragListViewComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UBCStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    .locals 2
    .parameter "dragListViewComponent"
    .parameter "preState"
    .parameter "curState"

    .prologue
    .line 438
    sget-boolean v0, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    if-eqz v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    if-ne p2, v0, :cond_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener$1;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
