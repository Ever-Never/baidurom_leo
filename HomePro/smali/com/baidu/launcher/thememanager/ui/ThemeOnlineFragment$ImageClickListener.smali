.class Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;
.super Ljava/lang/Object;
.source "ThemeOnlineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 231
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->pressed:Z
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->pressed:Z
    invoke-static {v5, v8}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$802(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Z)Z

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    iget v3, v5, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;->position:I

    .line 239
    .local v3, position:I
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$900(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I
    invoke-static {v6}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5, v3}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    .line 240
    .local v1, info:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getThemeID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, id:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 247
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    const-string v5, "title"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v5, "component_type"

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mComponentType:I
    invoke-static {v6}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v5, "_id"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v5, "fragment_index"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    :goto_0
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v5, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->startActivity(Landroid/content/Intent;)V

    .line 273
    .end local v0           #id:I
    .end local v1           #info:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #position:I
    :cond_0
    return-void

    .line 254
    .restart local v0       #id:I
    .restart local v1       #info:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #position:I
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 255
    const-string v5, "theme_url"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v5, "theme_id"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string v5, "component_type"

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mComponentType:I
    invoke-static {v6}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "theme/ICON"

    invoke-static {v5, v6, v7}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadStateByUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 260
    .local v4, status:I
    const-string v5, "com.baidu.thememanager.extra.status"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v5, "designer"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v5, "version"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v5, "title"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v5, "download_num"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getDownNum()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v5, "themesize"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeSize()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v5, "userid"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v5, "upload_date"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getUpDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v5, "upload_tel"

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getTel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method
