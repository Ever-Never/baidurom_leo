.class Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;
.super Ljava/lang/Object;
.source "ThemeOnlineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 157
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x9

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->requestThemeList(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$200(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;III)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->task_status:[I
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$400(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->updateView()V
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    goto :goto_0
.end method
