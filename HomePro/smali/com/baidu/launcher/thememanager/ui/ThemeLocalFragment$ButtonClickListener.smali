.class Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;
.super Ljava/lang/Object;
.source "ThemeLocalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 149
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ubc/UBC;->reportThemeUse(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    .line 153
    .local v1, ti:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_applying:Z
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    :cond_0
    const-string v2, "BaiduThemeLocalFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no apply "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget v2, v1, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mComponentType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 159
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_applying:Z
    invoke-static {v2, v4}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$502(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Z)Z

    .line 161
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;)V

    .line 162
    .local v0, task:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->taskCallback:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

    .line 163
    invoke-virtual {v0, v4}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->needReturnHome(Z)V

    .line 164
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
