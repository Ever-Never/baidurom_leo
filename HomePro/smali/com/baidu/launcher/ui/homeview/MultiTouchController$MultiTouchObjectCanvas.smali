.class public interface abstract Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiTouchObjectCanvas"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDraggableObjectAtPoint(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getPositionAndScale(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;",
            ")V"
        }
    .end annotation
.end method

.method public abstract selectObject(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setPositionAndScale(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;",
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;",
            ")Z"
        }
    .end annotation
.end method
