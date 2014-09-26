.class Lcom/android/systemui/recent/ClearView$1;
.super Ljava/lang/Object;
.source "ClearView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/ClearView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/ClearView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/ClearView;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/recent/ClearView$1;->this$0:Lcom/android/systemui/recent/ClearView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView$1;->this$0:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    invoke-static {v0}, Lcom/android/systemui/recent/ClearView;->access$000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView$1;->this$0:Lcom/android/systemui/recent/ClearView;

    iget-object v0, p0, Lcom/android/systemui/recent/ClearView$1;->this$0:Lcom/android/systemui/recent/ClearView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/ClearView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView;

    #setter for: Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1, v0}, Lcom/android/systemui/recent/ClearView;->access$102(Lcom/android/systemui/recent/ClearView;Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView$1;->this$0:Lcom/android/systemui/recent/ClearView;

    iget-object v0, p0, Lcom/android/systemui/recent/ClearView$1;->this$0:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/ClearView;->access$100(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    const v2, 0x7f09009d

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    #setter for: Lcom/android/systemui/recent/ClearView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    invoke-static {v1, v0}, Lcom/android/systemui/recent/ClearView;->access$002(Lcom/android/systemui/recent/ClearView;Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .line 102
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView$1;->this$0:Lcom/android/systemui/recent/ClearView;

    iget-object v0, p0, Lcom/android/systemui/recent/ClearView$1;->this$0:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/ClearView;->access$100(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    const v2, 0x7f0900a4

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/android/systemui/recent/ClearView;->mLockedNumberText:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/systemui/recent/ClearView;->access$202(Lcom/android/systemui/recent/ClearView;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 105
    :cond_0
    return-void
.end method
