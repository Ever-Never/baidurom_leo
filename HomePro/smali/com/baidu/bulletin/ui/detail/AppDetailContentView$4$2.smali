.class Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$2;
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


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$2;->this$1:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$2;->this$1:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->generateEmptyView()V

    .line 485
    return-void
.end method
