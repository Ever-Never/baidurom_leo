.class Lcom/baidu/launcher/ui/editview/ThumbnailGroup$1;
.super Landroid/os/Handler;
.source "ThumbnailGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$1;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$1;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 183
    return-void
.end method
