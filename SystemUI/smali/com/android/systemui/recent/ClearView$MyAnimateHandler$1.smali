.class Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;
.super Ljava/lang/Object;
.source "ClearView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

.field final synthetic val$clearView:Lcom/android/systemui/recent/ClearView;

.field final synthetic val$index:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/ClearView$MyAnimateHandler;Lcom/android/systemui/recent/ClearView;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->this$0:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    iput-object p2, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$clearView:Lcom/android/systemui/recent/ClearView;

    iput-object p3, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$clearView:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    invoke-static {v2}, Lcom/android/systemui/recent/ClearView;->access$000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$view:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->dismissChildAnim(Landroid/view/View;)V

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, runningAppSize:I
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$clearView:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/ClearView;->access$300(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$clearView:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v2}, Lcom/android/systemui/recent/ClearView;->access$300(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 236
    :cond_0
    iget v2, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$index:I

    sub-int v0, v1, v2

    .line 237
    .local v0, appsNum:I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;->val$clearView:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mOpenAppText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/recent/ClearView;->access$800(Lcom/android/systemui/recent/ClearView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method
