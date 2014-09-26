.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$1;
.super Ljava/lang/Object;
.source "SetLocationLayer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 104
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;

    .line 110
    .local v0, holder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->closeImm()V
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V

    .line 114
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick,locationName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->getLocationCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->getLocationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->getLocationCode()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->sendLocationUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
