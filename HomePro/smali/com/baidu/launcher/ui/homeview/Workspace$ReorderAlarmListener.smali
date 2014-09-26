.class Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field child:Landroid/view/View;

.field dragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

.field dragViewCenter:[F

.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;[FIIIILcom/baidu/launcher/ui/dragdrop/DragView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "dragViewCenter"
    .parameter "minSpanX"
    .parameter "minSpanY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "dragView"
    .parameter "child"

    .prologue
    .line 3984
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3985
    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    .line 3986
    iput p3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->minSpanX:I

    .line 3987
    iput p4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->minSpanY:I

    .line 3988
    iput p5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->spanX:I

    .line 3989
    iput p6, p0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->spanY:I

    .line 3990
    iput-object p8, p0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    .line 3991
    iput-object p7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->dragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    .line 3992
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/baidu/launcher/ui/animation/Alarm;)V
    .locals 23
    .parameter "alarm"

    .prologue
    .line 3995
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 3996
    .local v10, resultSpan:[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1000(Lcom/baidu/launcher/ui/homeview/Workspace;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1000(Lcom/baidu/launcher/ui/homeview/Workspace;)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->spanX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->spanY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-static {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I

    move-result-object v7

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace;->findNearestArea(IIIILcom/baidu/launcher/ui/homeview/CellLayout;[I)[I
    invoke-static/range {v1 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1200(Lcom/baidu/launcher/ui/homeview/Workspace;IIIILcom/baidu/launcher/ui/homeview/CellLayout;[I)[I

    move-result-object v1

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v8, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$902(Lcom/baidu/launcher/ui/homeview/Workspace;[I)[I

    .line 3998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderX:I
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1302(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 3999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mLastReorderY:I
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1402(Lcom/baidu/launcher/ui/homeview/Workspace;I)I

    .line 4000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1000(Lcom/baidu/launcher/ui/homeview/Workspace;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1000(Lcom/baidu/launcher/ui/homeview/Workspace;)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->minSpanX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->minSpanY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->spanX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v12, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$902(Lcom/baidu/launcher/ui/homeview/Workspace;[I)[I

    .line 4004
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gez v1, :cond_1

    .line 4005
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->revertTempState()V

    .line 4012
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragTargetLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragOutline:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1500(Lcom/baidu/launcher/ui/homeview/Workspace;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1000(Lcom/baidu/launcher/ui/homeview/Workspace;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragPoint:[F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$1000(Lcom/baidu/launcher/ui/homeview/Workspace;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v15, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mTargetCell:[I
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$900(Lcom/baidu/launcher/ui/homeview/Workspace;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v17, v1, v2

    const/4 v1, 0x0

    aget v18, v10, v1

    const/4 v1, 0x1

    aget v19, v10, v1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->dragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->dragView:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v22

    invoke-virtual/range {v11 .. v22}, Lcom/baidu/launcher/ui/homeview/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 4016
    return-void

    .line 4007
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace$ReorderAlarmListener;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->setDragMode(I)V

    goto :goto_0
.end method
