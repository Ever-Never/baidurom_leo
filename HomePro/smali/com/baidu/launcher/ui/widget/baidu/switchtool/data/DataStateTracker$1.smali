.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;
.super Landroid/os/AsyncTask;
.source "DataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;

.field final synthetic val$connManager:Landroid/net/ConnectivityManager;

.field final synthetic val$desiredState:Z

.field final synthetic val$mobileData:Z


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;ZZLandroid/net/ConnectivityManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;

    iput-boolean p2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$desiredState:Z

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$mobileData:Z

    iput-object p4, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$connManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "args"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_1

    .line 71
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$mobileData:Z

    if-nez v0, :cond_0

    .line 72
    const-string v0, "DataStateTracker"

    const-string v1, "doInBackground setMobileDataEnabled true!"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$connManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 83
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$desiredState:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$mobileData:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "DataStateTracker"

    const-string v1, "doInBackground setMobileDataEnabled false!"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->val$connManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
