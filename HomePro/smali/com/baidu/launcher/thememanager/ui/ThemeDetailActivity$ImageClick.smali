.class Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;
.super Ljava/lang/Object;
.source "ThemeDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    const-class v2, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponent:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "theme_state"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponent:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "theme_preview"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPreview:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "component_type"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string v1, "title"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    :cond_0
    const-string v1, "author"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "version"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "themesize"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 356
    const-string v1, "key"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v1, "_id"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mId:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v1, "position"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    move-result-object v2

    iget v2, v2, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v1, "theme_local"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v1, "theme_type"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeType:I
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->access$1400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-virtual {v1, v0, v4}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 362
    return-void
.end method
