.class Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;
.super Landroid/os/AsyncTask;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeDataLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/baidu/launcher/data/item/HomeItemInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    const-string v1, "isPreset<1 or isPreset is null"

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/HomeDataManager;->getHomeData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoader;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    const/4 v1, 0x5

    #calls: Lcom/baidu/launcher/ui/homeview/HomeView;->bindItems(Ljava/util/ArrayList;I)V
    invoke-static {v0, p1, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$200(Lcom/baidu/launcher/ui/homeview/HomeView;Ljava/util/ArrayList;I)V

    .line 228
    return-void
.end method
