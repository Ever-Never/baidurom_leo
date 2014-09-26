.class Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;
.super Ljava/lang/Object;
.source "PageFlipper.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/flippage/FlipPerformer$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/PageFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/flippage/PageFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlipped(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->onFlipped(Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;)V

    .line 130
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$1;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFlipper;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper;->mProvider:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Provider;->setVisibility(I)V

    .line 125
    return-void
.end method
