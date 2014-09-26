.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$1;
.super Ljava/lang/Object;
.source "BrownianMotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;->setBGResId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 373
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView;)V

    .line 374
    .local v0, decode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$1;->val$resId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/BrownianMotionView$DecodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    return-void
.end method
