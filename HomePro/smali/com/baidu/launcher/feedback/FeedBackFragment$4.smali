.class Lcom/baidu/launcher/feedback/FeedBackFragment$4;
.super Ljava/lang/Object;
.source "FeedBackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/feedback/FeedBackFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/feedback/FeedBackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #calls: Lcom/baidu/launcher/feedback/FeedBackFragment;->checkContentinvalidate()Z
    invoke-static {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$300(Lcom/baidu/launcher/feedback/FeedBackFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    new-instance v1, Lcom/baidu/launcher/utils/PhoneInfoStateManager;

    invoke-direct {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;-><init>()V

    .line 128
    .local v1, phoneInfoManage:Lcom/baidu/launcher/utils/PhoneInfoStateManager;
    new-instance v0, Lcom/baidu/launcher/feedback/FeedBackPostInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;-><init>()V

    .line 129
    .local v0, feedbackinfo:Lcom/baidu/launcher/feedback/FeedBackPostInfo;
    invoke-virtual {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getSysterVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setSysver(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setVerno(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setVercode(Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getPhoneBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getPhoneDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setModel(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setResolution(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mFeedbackContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$400(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setContent(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$500(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$500(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setAge(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mGender:I
    invoke-static {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$600(Lcom/baidu/launcher/feedback/FeedBackFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setGender(I)V

    .line 142
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$700(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setPhone(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mMail:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$800(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/feedback/FeedBackPostInfo;->setEmail(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c01a0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 147
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #calls: Lcom/baidu/launcher/feedback/FeedBackFragment;->clearFeedbackData()V
    invoke-static {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$900(Lcom/baidu/launcher/feedback/FeedBackFragment;)V

    .line 148
    invoke-static {v0}, Lcom/baidu/launcher/protocol/Agent;->postFeedBack(Lcom/baidu/launcher/feedback/FeedBackPostInfo;)V

    .line 156
    .end local v0           #feedbackinfo:Lcom/baidu/launcher/feedback/FeedBackPostInfo;
    .end local v1           #phoneInfoManage:Lcom/baidu/launcher/utils/PhoneInfoStateManager;
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$4;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c019e

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
