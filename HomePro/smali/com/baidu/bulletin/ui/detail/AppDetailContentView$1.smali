.class Lcom/baidu/bulletin/ui/detail/AppDetailContentView$1;
.super Ljava/lang/Object;
.source "AppDetailContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->generateEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$1;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$1;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$500(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 412
    return-void
.end method
