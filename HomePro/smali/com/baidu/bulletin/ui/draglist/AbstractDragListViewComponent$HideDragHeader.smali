.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$HideDragHeader;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideDragHeader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$HideDragHeader;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 709
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$HideDragHeader;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$2000(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$HideDragHeader;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 710
    return-void
.end method
