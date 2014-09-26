.class Lcom/baidu/launcher/ui/preview/PreviewItem$1;
.super Ljava/lang/Object;
.source "PreviewItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 43
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$1;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$1;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    #getter for: Lcom/baidu/launcher/ui/preview/PreviewItem;->listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/preview/PreviewItem;->access$000(Lcom/baidu/launcher/ui/preview/PreviewItem;)Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$1;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    #getter for: Lcom/baidu/launcher/ui/preview/PreviewItem;->listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/preview/PreviewItem;->access$000(Lcom/baidu/launcher/ui/preview/PreviewItem;)Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$1;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;->onScreenClicked(Landroid/view/View;)V

    .line 49
    :cond_0
    return-void
.end method
