.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$2;
.super Ljava/lang/Object;
.source "SetLocationLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v2, "location_changed_message"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v1, value:Landroid/os/Bundle;
    const-string v2, "location_code"

    const-string v3, "auto_location"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "location_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "location_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->closeImm()V
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V

    .line 141
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeSetLocationLayer()V

    .line 143
    return-void
.end method
