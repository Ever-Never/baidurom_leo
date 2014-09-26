.class Lcom/baidu/launcher/feedback/FeedBackFragment$5;
.super Ljava/lang/Object;
.source "FeedBackFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/feedback/FeedBackFragment;->showPopupSelectAge()V
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
    .line 257
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$5;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$5;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$5;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeData:[Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$1000(Lcom/baidu/launcher/feedback/FeedBackFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    #setter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$502(Lcom/baidu/launcher/feedback/FeedBackFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$5;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvAgeSelected:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$1100(Lcom/baidu/launcher/feedback/FeedBackFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$5;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #getter for: Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$500(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$5;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    iget-object v0, v0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 265
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$5;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgePopupWindow:Landroid/widget/PopupWindow;

    .line 266
    return-void
.end method
