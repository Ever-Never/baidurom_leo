.class Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;
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
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$000(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$000(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #setter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mPosition:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$102(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;I)I

    .line 52
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvCommonProblem:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$200(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvCommonProblem:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$200(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$1;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mTvFeedback:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$300(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020322

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 56
    return-void
.end method
