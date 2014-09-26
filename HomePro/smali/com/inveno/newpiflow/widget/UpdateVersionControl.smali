.class public Lcom/inveno/newpiflow/widget/UpdateVersionControl;
.super Ljava/lang/Object;
.source "UpdateVersionControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private noticeCheckDialog:Landroid/app/AlertDialog;

.field private tipsTv:Landroid/widget/TextView;

.field private toastView:Landroid/view/View;

.field private uiHandler:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;-><init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl;Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->uiHandler:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->uiHandler:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inveno/newpiflow/widget/UpdateVersionControl;Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->requestVersionUpdate(Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;)V

    return-void
.end method

.method static synthetic access$300(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inveno/newpiflow/widget/UpdateVersionControl;Lcom/inveno/newpiflow/model/UpdateVersion;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->startDownloadAvtivity(Lcom/inveno/newpiflow/model/UpdateVersion;)V

    return-void
.end method

.method static synthetic access$500(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->tipsTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 193
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const-string v3, "com.inveno.flow"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 195
    .local v0, packInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 196
    .local v2, version:Ljava/lang/String;
    return-object v2
.end method

.method private requestVersionUpdate(Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;)V
    .locals 9
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, basicParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, version:Ljava/lang/String;
    const-string v5, "lhc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u83b7\u53d6\u8be6\u60c5\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versionNum"

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "versionDevice"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "osType"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v5, "http://coolpadfalls.lem88.com/coolpadfalls/client/getFlowVersionUpdate.action"

    invoke-static {v5, v0, v8}, Lcom/inveno/newpiflow/download/HttpDownload;->requestJsonStr(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, json:Ljava/lang/String;
    const-string v5, "lhc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u68c0\u67e5\u7248\u672c\u670d\u52a1\u5668\u8fd4\u56de\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {v1}, Lcom/inveno/newpiflow/model/UpdateVersion;->parse(Ljava/lang/String;)Lcom/inveno/newpiflow/model/UpdateVersion;

    move-result-object v3

    .line 181
    .local v3, updateVersion:Lcom/inveno/newpiflow/model/UpdateVersion;
    if-eqz v3, :cond_0

    .line 182
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 183
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 188
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1, v8}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startDownloadAvtivity(Lcom/inveno/newpiflow/model/UpdateVersion;)V
    .locals 6
    .parameter "updateVersion"

    .prologue
    .line 242
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.inveno.flow"

    const-string v4, "com.inveno.flow.activity.ext.UpdateTipActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, componentName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "content"

    invoke-virtual {p1}, Lcom/inveno/newpiflow/model/UpdateVersion;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v3, "apkurl"

    invoke-virtual {p1}, Lcom/inveno/newpiflow/model/UpdateVersion;->getApkurl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 248
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    const-string v4, "\u534e\u7a97\u5df2\u505c\u7528\u6216\u672a\u5b89\u88c5"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public checkVersion()V
    .locals 5

    .prologue
    .line 58
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/inveno/newpiflow/tools/NetWorkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    const-string v3, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u68c0\u67e5!"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030071

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->toastView:Landroid/view/View;

    .line 66
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->toastView:Landroid/view/View;

    const v3, 0x7f08016e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->tipsTv:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->tipsTv:Landroid/widget/TextView;

    const-string v3, "\u68c0\u67e5\u65b0\u7248\u672c"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;

    .line 72
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 73
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 74
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 82
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #window:Landroid/view/Window;
    :cond_2
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 84
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->toastView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 85
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;

    invoke-direct {v3, p0}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;-><init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->context:Landroid/content/Context;

    .line 256
    return-void
.end method
