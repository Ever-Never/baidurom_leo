.class Lcom/baidu/launcher/data/AppsDataManager$5;
.super Landroid/os/Handler;
.source "AppsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/AppsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;)V
    .locals 1
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$5;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$5;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, -0x2

    .line 845
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 861
    :goto_0
    return-void

    .line 847
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/data/AppsDataManager$5;->removeMessages(I)V

    .line 848
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$5;->list:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 850
    .local v1, message:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 851
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/launcher/data/AppsDataManager$5;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 854
    .end local v1           #message:Landroid/os/Message;
    :sswitch_1
    const/4 v0, 0x0

    .line 855
    .local v0, applist:[Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$5;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 856
    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$5;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 857
    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$5;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    new-instance v3, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;

    iget-object v4, p0, Lcom/baidu/launcher/data/AppsDataManager$5;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;-><init>(Lcom/baidu/launcher/data/AppsDataManager;I[Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/data/AppsDataManager;->enqueuePackageUpdated(Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;)V

    .line 858
    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$5;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 845
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method
