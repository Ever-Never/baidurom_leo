.class Lcom/baidu/launcher/feedback/FeedBackBaiduWidget$1;
.super Ljava/lang/Object;
.source "FeedBackBaiduWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackBaiduWidget$1;->this$0:Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackBaiduWidget$1;->this$0:Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;

    invoke-virtual {v1}, Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/baidu/launcher/feedback/UserFeedBackFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackBaiduWidget$1;->this$0:Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;

    invoke-virtual {v1}, Lcom/baidu/launcher/feedback/FeedBackBaiduWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
