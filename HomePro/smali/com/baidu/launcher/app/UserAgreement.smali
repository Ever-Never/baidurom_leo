.class public Lcom/baidu/launcher/app/UserAgreement;
.super Landroid/app/Activity;
.source "UserAgreement.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UserAgreement"


# instance fields
.field private final URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const-string v0, "file:///android_asset/user_agreement.html"

    iput-object v0, p0, Lcom/baidu/launcher/app/UserAgreement;->URL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 45
    const v0, 0x7f04000c

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/app/UserAgreement;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x7

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/app/UserAgreement;->requestWindowFeature(I)Z

    .line 24
    const v3, 0x7f0300a8

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/UserAgreement;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/baidu/launcher/app/UserAgreement;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f03004c

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 27
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/UserAgreement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 28
    .local v0, actionBar:Lcom/baidu/launcher/thememanager/view/ExActionBar;
    invoke-virtual {p0}, Lcom/baidu/launcher/app/UserAgreement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 29
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setOperationBar(I)V

    .line 30
    invoke-virtual {p0}, Lcom/baidu/launcher/app/UserAgreement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setBackIcon(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0}, Lcom/baidu/launcher/app/UserAgreement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextColor(I)V

    .line 32
    invoke-virtual {p0}, Lcom/baidu/launcher/app/UserAgreement;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 33
    const v3, 0x7f0801c5

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/UserAgreement;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 34
    .local v1, actionBarGroup:Landroid/widget/RelativeLayout;
    const v3, 0x7f0203d4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 36
    const v3, 0x7f080214

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/app/UserAgreement;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 37
    .local v2, webView:Landroid/webkit/WebView;
    const-string v3, "file:///android_asset/user_agreement.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 40
    return-void
.end method
