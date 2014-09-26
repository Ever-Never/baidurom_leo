.class Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;
.super Ljava/lang/Object;
.source "BaiduWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->access$300(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 168
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mParent:Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->access$000(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getWindowAttachCount()I
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->access$100(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->access$200(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->access$202(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;Z)Z

    .line 164
    :cond_0
    return-void
.end method
