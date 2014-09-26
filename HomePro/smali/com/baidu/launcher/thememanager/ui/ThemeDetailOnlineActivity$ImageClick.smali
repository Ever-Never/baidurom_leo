.class Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;
.super Ljava/lang/Object;
.source "ThemeDetailOnlineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 511
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 512
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    const-class v2, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponent:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 516
    const-string v1, "theme_state"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponent:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v1, "theme_preview"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreview:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v1, "component_type"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v1, "title"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    :cond_0
    const-string v1, "key"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v1, "version"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v1, "download_num"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadNum:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    const-string v1, "_id"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mId:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    const-string v1, "position"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    const-string v1, "theme_local"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    const-string v1, "author"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDesigner:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v1, "themesize"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mSize:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 530
    const-string v1, "userid"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUserId:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v1, "upload_date"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTel:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v1, "upload_tel"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUploadDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    const-string v1, "preview_url_list"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 540
    return-void
.end method
