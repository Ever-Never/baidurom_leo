.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$1;
.super Ljava/lang/Object;
.source "SetLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v2, "location_changed_message"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v1, value:Landroid/os/Bundle;
    const-string v2, "location_code"

    const-string v3, "auto_location"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "location_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "location_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->finish()V

    .line 82
    return-void
.end method
