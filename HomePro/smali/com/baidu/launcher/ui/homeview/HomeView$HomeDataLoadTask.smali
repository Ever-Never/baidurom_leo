.class Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;
.super Landroid/os/AsyncTask;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeDataLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/baidu/launcher/data/item/HomeItemInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TASK_LOAD_ALL:I = 0x5

.field private static final TASK_LOAD_DEFAULT_SCREEN_ICON:I = 0x1

.field private static final TASK_LOAD_DEFAULT_SCREEN_WIDGET:I = 0x0

.field private static final TASK_LOAD_DISABLE_APP_ICON:I = 0x6

.field private static final TASK_LOAD_OTHER_SCREEN_ICON:I = 0x3

.field private static final TASK_LOAD_OTHER_SCREEN_WIDGET:I = 0x2

.field private static final TASK_LOAD_USER_FOLDER_AND_DOCK:I = 0x4


# instance fields
.field private mParam:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/ui/homeview/HomeView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 161
    .local v2, origPri:I
    const/4 v4, -0x4

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, homeItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->mParam:I

    .line 164
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    .line 165
    .local v0, defaultScreen:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v3, selecttion:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->mParam:I

    packed-switch v4, :pswitch_data_0

    .line 199
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/data/HomeDataManager;->getHomeData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 201
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 202
    return-object v1

    .line 168
    :pswitch_1
    const-string v4, "screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(itemType=4 or itemType=5) and (isPreset<1 or isPreset is null)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v4, "screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(itemType=0 or itemType=1) and (isPreset<1 or isPreset is null)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :pswitch_3
    const-string v4, "screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(itemType=4 or itemType=5) and (isPreset<1 or isPreset is null)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :pswitch_4
    const-string v4, "screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "screen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(itemType=0 or itemType=1) and (isPreset<1 or isPreset is null)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 190
    :pswitch_5
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "itemType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "screen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") and ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isPreset<1 or isPreset is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 197
    :pswitch_6
    const-string v4, "(itemType=20) and (container< 0 ) and (isPreset<1 or isPreset is null)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 207
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->mParam:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 208
    new-instance v0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;-><init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$100(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$100(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isLauncherRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$HomeDataLoadTask;->mParam:I

    #calls: Lcom/baidu/launcher/ui/homeview/HomeView;->bindItems(Ljava/util/ArrayList;I)V
    invoke-static {v0, p1, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$200(Lcom/baidu/launcher/ui/homeview/HomeView;Ljava/util/ArrayList;I)V

    .line 214
    :cond_1
    return-void
.end method
