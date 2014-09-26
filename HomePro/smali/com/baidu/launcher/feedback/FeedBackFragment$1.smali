.class Lcom/baidu/launcher/feedback/FeedBackFragment$1;
.super Ljava/lang/Object;
.source "FeedBackFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 78
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$1;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 98
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 93
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 84
    .local v0, length:I
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$1;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mRemainNumber:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$000(Lcom/baidu/launcher/feedback/FeedBackFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$1;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mRemainNumber:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$000(Lcom/baidu/launcher/feedback/FeedBackFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$1;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    const v3, 0x7f0c0195

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    rsub-int v5, v0, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
