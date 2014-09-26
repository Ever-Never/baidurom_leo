.class public interface abstract Lcom/baidu/launcher/ui/dragdrop/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# virtual methods
.method public abstract acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
.end method

.method public abstract estimateDropLocation(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract getHitRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getLeft()I
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public abstract getTop()I
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
.end method

.method public abstract onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V
.end method
