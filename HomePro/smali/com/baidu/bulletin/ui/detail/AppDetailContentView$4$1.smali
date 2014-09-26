.class Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$1;
.super Ljava/lang/Object;
.source "AppDetailContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;->onApplistCallback(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;

.field final synthetic val$itemInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$1;->this$1:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$1;->val$itemInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$1;->this$1:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$1;->val$itemInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->updateAppContent(Ljava/util/List;)V

    .line 478
    return-void
.end method
