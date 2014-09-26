.class Lcom/baidu/bulletin/ui/detail/ViewFlow$1;
.super Ljava/lang/Object;
.source "ViewFlow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    #getter for: Lcom/baidu/bulletin/ui/detail/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$000(Lcom/baidu/bulletin/ui/detail/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 76
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    #getter for: Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$100(Lcom/baidu/bulletin/ui/detail/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->setSelection(I)V

    .line 77
    return-void
.end method
