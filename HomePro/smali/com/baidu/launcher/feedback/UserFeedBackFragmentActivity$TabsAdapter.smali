.class public Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "UserFeedBackFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter "aFm"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    .line 123
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "aPosition"

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 138
    new-instance v0, Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-direct {v0}, Lcom/baidu/launcher/feedback/FeedBackFragment;-><init>()V

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    new-instance v1, Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-direct {v1}, Lcom/baidu/launcher/feedback/FeedBackFragment;-><init>()V

    #setter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mFeedBackFragment:Lcom/baidu/launcher/feedback/FeedBackFragment;
    invoke-static {v0, v1}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$502(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;Lcom/baidu/launcher/feedback/FeedBackFragment;)Lcom/baidu/launcher/feedback/FeedBackFragment;

    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mFeedBackFragment:Lcom/baidu/launcher/feedback/FeedBackFragment;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$500(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Lcom/baidu/launcher/feedback/FeedBackFragment;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    new-instance v1, Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    invoke-direct {v1}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;-><init>()V

    #setter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;
    invoke-static {v0, v1}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$402(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    .line 134
    iget-object v0, p0, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity$TabsAdapter;->this$0:Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    #getter for: Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->mCommonQuestionFragment:Lcom/baidu/launcher/feedback/CommonQuestionFragment;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;->access$400(Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;)Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    move-result-object v0

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
