.class Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorPMThread;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecutorPMThread"
.end annotation


# instance fields
.field private final mCityCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "code"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorPMThread;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorPMThread;->mCityCode:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorPMThread;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService$ExecutorPMThread;->mCityCode:Ljava/lang/String;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->updatePM(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/UpdateService;Ljava/lang/String;)Z

    move-result v0

    .line 132
    .local v0, updateResult:Z
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateService:ExecutorPMThread:updatePM result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method
