.class Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;
.super Ljava/lang/Object;
.source "UpdateVersionControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/widget/UpdateVersionControl;->checkVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->uiHandler:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;
    invoke-static {v2}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$100(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    move-result-object v2

    #calls: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->requestVersionUpdate(Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;)V
    invoke-static {v1, v2}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$200(Lcom/inveno/newpiflow/widget/UpdateVersionControl;Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 108
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 94
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->uiHandler:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$100(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 95
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->uiHandler:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$100(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 101
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 102
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->uiHandler:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$100(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 103
    .end local v0           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 105
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 106
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->uiHandler:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$100(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
