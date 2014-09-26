.class Lcom/baidu/launcher/feedback/CommonQuestionFragment$2;
.super Ljava/lang/Object;
.source "CommonQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/feedback/CommonQuestionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$2;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "aView"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$2;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #getter for: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$300(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    return-void
.end method
