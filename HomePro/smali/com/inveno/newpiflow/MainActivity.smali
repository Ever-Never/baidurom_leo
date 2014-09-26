.class public Lcom/inveno/newpiflow/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static final WF_NEWS_BEAN:Ljava/lang/String; = "wf_news_bean"


# instance fields
.field private innerView:Lcom/inveno/newpiflow/widget/PiScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 44
    const/16 v0, 0x62

    if-ne v0, p1, :cond_0

    .line 45
    invoke-static {}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setfinishstate()V

    .line 46
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    const-string v1, "list"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    const-string v2, "mode"

    const/4 v3, 0x3

    invoke-static {v2, v3, p0}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/inveno/newpiflow/widget/PiScrollView;-><init>(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;II)V

    iput-object v0, p0, Lcom/inveno/newpiflow/MainActivity;->innerView:Lcom/inveno/newpiflow/widget/PiScrollView;

    .line 25
    iget-object v0, p0, Lcom/inveno/newpiflow/MainActivity;->innerView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/MainActivity;->setContentView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/inveno/newpiflow/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 32
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
