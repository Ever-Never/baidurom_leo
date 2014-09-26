.class public interface abstract Lcom/android/systemui/recent/RecentsCallback;
.super Ljava/lang/Object;
.source "RecentsCallback.java"


# static fields
.field public static final SWIPE_DOWN:I = 0x3

.field public static final SWIPE_LEFT:I = 0x0

.field public static final SWIPE_RIGHT:I = 0x1

.field public static final SWIPE_UP:I = 0x2


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract getClearView()Landroid/view/View;
.end method

.method public abstract handleLocked(Landroid/view/View;)V
.end method

.method public abstract handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract handleOnClick(Landroid/view/View;)V
.end method

.method public abstract handleSwipe(Landroid/view/View;Z)V
.end method

.method public abstract isAppClearLocked(Landroid/view/View;)Z
.end method

.method public abstract removeRecentGuide()V
.end method
