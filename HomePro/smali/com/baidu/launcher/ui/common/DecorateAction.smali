.class public interface abstract Lcom/baidu/launcher/ui/common/DecorateAction;
.super Ljava/lang/Object;
.source "DecorateAction.java"


# static fields
.field public static final ACTION_DELETE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_STATUS:I = 0x1


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/view/View;)V
.end method

.method public abstract getActionType()I
.end method

.method public abstract onTouchEventCheck(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setAlpha(I)V
.end method

.method public abstract updateEventNumber(I)V
.end method
