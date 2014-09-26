.class Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;
.super Ljava/lang/Object;
.source "ThemeLocalFragment.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V

    return-void
.end method


# virtual methods
.method public end(ILjava/lang/String;)V
    .locals 2
    .parameter "aResult"
    .parameter "aKey"

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_applying:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$502(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Z)Z

    .line 264
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mBtnEnable:Z

    .line 265
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mCurrentTheme:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    move-result-object v0

    iput-object p2, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mCurrentTheme:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->notifyDataSetChanged()V

    .line 270
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_applying:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$502(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Z)Z

    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$TaskCallBack;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mBtnEnable:Z

    .line 259
    return-void
.end method
