.class Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 662
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    #getter for: Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I
    invoke-static {v3}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$200(Lcom/baidu/bulletin/ui/detail/ViewFlow;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 663
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 664
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    #getter for: Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$400(Lcom/baidu/bulletin/ui/detail/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    #getter for: Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$400(Lcom/baidu/bulletin/ui/detail/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    #setter for: Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I
    invoke-static {v2, v0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$102(Lcom/baidu/bulletin/ui/detail/ViewFlow;I)I

    .line 671
    .end local v0           #index:I
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    #calls: Lcom/baidu/bulletin/ui/detail/ViewFlow;->resetFocus()V
    invoke-static {v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$500(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V

    .line 672
    return-void

    .line 664
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method
