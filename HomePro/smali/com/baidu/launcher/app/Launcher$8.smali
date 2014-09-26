.class Lcom/baidu/launcher/app/Launcher$8;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher;->updateEventNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$8;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1355
    iget-object v3, p0, Lcom/baidu/launcher/app/Launcher$8;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-static {v3}, Lcom/baidu/launcher/app/Launcher;->access$1300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1362
    :cond_0
    return-void

    .line 1358
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/app/Launcher$8;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    invoke-static {v3}, Lcom/baidu/launcher/app/Launcher;->access$1300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/utils/EventNumberUtil;->getEventNumberViews()Ljava/util/ArrayList;

    move-result-object v2

    .line 1359
    .local v2, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1360
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
