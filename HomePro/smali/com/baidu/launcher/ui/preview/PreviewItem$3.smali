.class Lcom/baidu/launcher/ui/preview/PreviewItem$3;
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
    .line 61
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$3;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$3;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    #getter for: Lcom/baidu/launcher/ui/preview/PreviewItem;->listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
    invoke-static {v1}, Lcom/baidu/launcher/ui/preview/PreviewItem;->access$000(Lcom/baidu/launcher/ui/preview/PreviewItem;)Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$3;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/preview/PreviewItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 66
    .local v0, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/PreviewItem$3;->this$0:Lcom/baidu/launcher/ui/preview/PreviewItem;

    #getter for: Lcom/baidu/launcher/ui/preview/PreviewItem;->listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
    invoke-static {v1}, Lcom/baidu/launcher/ui/preview/PreviewItem;->access$000(Lcom/baidu/launcher/ui/preview/PreviewItem;)Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

    move-result-object v1

    iget v2, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    invoke-interface {v1, v2}, Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;->onDefaultScreenChanged(I)V

    .line 68
    .end local v0           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :cond_0
    return-void
.end method
