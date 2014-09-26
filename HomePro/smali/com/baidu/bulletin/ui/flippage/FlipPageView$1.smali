.class Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;
.super Ljava/lang/Object;
.source "FlipPageView.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/FlipPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canFlip(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)Z
    .locals 2
    .parameter "direction"

    .prologue
    .line 93
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$2;->$SwitchMap$com$baidu$bulletin$ui$flippage$PageFlipper$Direction:[I

    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mFlippable:Z
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$100(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisableFlipListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$200(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mDisableFlipListener:Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$200(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$DisableFlipListener;->onPageCannotFlip()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mFlippable:Z
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$100(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Z

    move-result v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    return-object v0
.end method

.method public getView(Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;)Landroid/view/View;
    .locals 2
    .parameter "name"

    .prologue
    .line 80
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$2;->$SwitchMap$com$baidu$bulletin$ui$flippage$PageFlipper$ViewName:[I

    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onFlipped(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 107
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$2;->$SwitchMap$com$baidu$bulletin$ui$flippage$PageFlipper$Direction:[I

    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #calls: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->switchToPage(I)V
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$300(Lcom/baidu/bulletin/ui/flippage/FlipPageView;I)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #calls: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->switchToPage(I)V
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$300(Lcom/baidu/bulletin/ui/flippage/FlipPageView;I)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mViewConatiner:Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$000(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setVisibility(I)V

    .line 135
    return-void
.end method
