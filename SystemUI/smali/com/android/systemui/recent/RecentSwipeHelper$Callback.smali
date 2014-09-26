.class public interface abstract Lcom/android/systemui/recent/RecentSwipeHelper$Callback;
.super Ljava/lang/Object;
.source "RecentSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract canChildBeDismissed(Landroid/view/View;)Z
.end method

.method public abstract getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
.end method

.method public abstract getChildContentView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getClearView()Landroid/view/View;
.end method

.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onChildDismissed(Landroid/view/View;)V
.end method

.method public abstract onChildDismissedAnim(Landroid/view/View;)V
.end method

.method public abstract onChildLocked(Landroid/view/View;)V
.end method

.method public abstract onDragCancelled(Landroid/view/View;)V
.end method

.method public abstract removeRecentGuide()V
.end method
