.class Lcom/baidu/launcher/feedback/FeedBackFragment$3;
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
    .line 111
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$3;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment$3;->this$0:Lcom/baidu/launcher/feedback/FeedBackFragment;

    #calls: Lcom/baidu/launcher/feedback/FeedBackFragment;->showPopupSelectGender()V
    invoke-static {v0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->access$200(Lcom/baidu/launcher/feedback/FeedBackFragment;)V

    .line 116
    return-void
.end method
