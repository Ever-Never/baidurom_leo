.class Lcom/baidu/bulletin/ui/flippage/FlipPerformer$1;
.super Ljava/lang/Object;
.source "FlipPerformer.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/FlipPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/flippage/FlipPerformer;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPerformer$1;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPerformer;

    #calls: Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->stopFlipping()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPerformer;->access$100(Lcom/baidu/bulletin/ui/flippage/FlipPerformer;)V

    .line 264
    return-void
.end method
