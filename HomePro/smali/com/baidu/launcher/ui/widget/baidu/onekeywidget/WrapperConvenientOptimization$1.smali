.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$1;
.super Ljava/lang/Object;
.source "WrapperConvenientOptimization.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->resetSystemCleanDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isSystemClean:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$802(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Z)Z

    .line 388
    return-void
.end method
