.class Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;
.super Ljava/lang/Object;
.source "UserFeedBackFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 60
    iput-object p1, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$000(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$000(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #setter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mPosition:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$102(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;I)I

    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvCommonProblem:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$200(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020322

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvFeedback:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$300(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$400(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$2;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$400(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->onResume()V

    .line 73
    :cond_1
    return-void
.end method
