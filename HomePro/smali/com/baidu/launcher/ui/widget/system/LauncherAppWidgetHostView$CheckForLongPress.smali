.class Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    #calls: Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->access$300(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 112
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    #getter for: Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->access$000(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    #calls: Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getWindowAttachCount()I
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->access$100(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    #getter for: Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->access$200(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->access$202(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Z)Z

    .line 108
    :cond_0
    return-void
.end method
