.class Lcom/android/systemui/recent/RecentSwipeHelper$1;
.super Ljava/lang/Object;
.source "RecentSwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentSwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentSwipeHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    #getter for: Lcom/android/systemui/recent/RecentSwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentSwipeHelper;->access$000(Lcom/android/systemui/recent/RecentSwipeHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    #getter for: Lcom/android/systemui/recent/RecentSwipeHelper;->mLongPressSent:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentSwipeHelper;->access$100(Lcom/android/systemui/recent/RecentSwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/recent/RecentSwipeHelper;->mLongPressSent:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentSwipeHelper;->access$102(Lcom/android/systemui/recent/RecentSwipeHelper;Z)Z

    .line 223
    iget-object v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    #getter for: Lcom/android/systemui/recent/RecentSwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentSwipeHelper;->access$000(Lcom/android/systemui/recent/RecentSwipeHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    #getter for: Lcom/android/systemui/recent/RecentSwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentSwipeHelper;->access$200(Lcom/android/systemui/recent/RecentSwipeHelper;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    #getter for: Lcom/android/systemui/recent/RecentSwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentSwipeHelper;->access$000(Lcom/android/systemui/recent/RecentSwipeHelper;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 226
    :cond_0
    return-void
.end method
