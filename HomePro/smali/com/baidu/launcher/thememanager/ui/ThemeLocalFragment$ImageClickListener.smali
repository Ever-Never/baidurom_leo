.class Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;
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
    name = "ImageClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    .line 174
    .local v2, ti:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    iget v0, v2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mId:I

    .line 176
    .local v0, _id:I
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_applying:Z
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_imageclick:Z
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    const-string v3, "BaiduThemeLocalFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b_imageclick "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_imageclick:Z
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    const/4 v4, 0x1

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->b_imageclick:Z
    invoke-static {v3, v4}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$702(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Z)Z

    .line 187
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v3}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    const-string v3, "title"

    iget-object v4, v2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v3, "component_type"

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v3, "theme_type"

    iget v4, v2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mThemeType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v3, "_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v3, "fragment_index"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$ImageClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-virtual {v3, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
