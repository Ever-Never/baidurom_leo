.class Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner$1;
.super Landroid/database/DataSetObserver;
.source "FlipPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner$1;->this$1:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner$1;->this$1:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner$1;->this$1:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->access$600(Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;)Landroid/widget/Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setAdapter(Landroid/widget/Adapter;)V

    .line 503
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method
