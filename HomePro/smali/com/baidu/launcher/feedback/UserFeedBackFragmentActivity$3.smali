.class Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;
.super Ljava/lang/Object;
.source "UserFeedBackFragmentActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 103
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 98
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "aPosition"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f020322

    const/4 v1, 0x1

    .line 81
    if-nez p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvCommonProblem:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$200(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvFeedback:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$300(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mPosition:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$102(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;I)I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-ne v1, p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvCommonProblem:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$200(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvFeedback:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$300(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$400(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$400(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->onResume()V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$3;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #setter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mPosition:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$102(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;I)I

    goto :goto_0
.end method
