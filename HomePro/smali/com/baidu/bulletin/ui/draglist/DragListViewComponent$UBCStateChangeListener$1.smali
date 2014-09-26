.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener$1;
.super Ljava/lang/Object;
.source "DragListViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 447
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForRefreshNew()V

    .line 448
    return-void
.end method
