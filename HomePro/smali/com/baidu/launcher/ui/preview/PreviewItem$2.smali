.class Lcom/baidu/launcher/ui/preview/PreviewItem$2;
.super Ljava/lang/Object;
.source "PreviewItem.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/preview/PreviewItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/preview/PreviewItem;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$2;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$2;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    #getter for: Lcom/baidu/launcher/ui/preview/PreviewItem;->listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/preview/PreviewItem;->access$000(Lcom/baidu/launcher/ui/preview/PreviewItem;)Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$2;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    #getter for: Lcom/baidu/launcher/ui/preview/PreviewItem;->listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/preview/PreviewItem;->access$000(Lcom/baidu/launcher/ui/preview/PreviewItem;)Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$2;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;->onScreenLongClicked(Landroid/view/View;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
