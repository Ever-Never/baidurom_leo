.class public Lcom/baidu/launcher/app/BulletinGuiderActivity;
.super Landroid/app/Activity;
.source "BulletinGuiderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field btn_start:Landroid/widget/Button;

.field iv_close:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinGuiderActivity;->setResult(I)V

    .line 44
    invoke-virtual {p0}, Lcom/baidu/launcher/app/BulletinGuiderActivity;->finish()V

    goto :goto_0

    .line 47
    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinGuiderActivity;->setResult(I)V

    .line 48
    invoke-virtual {p0}, Lcom/baidu/launcher/app/BulletinGuiderActivity;->finish()V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x7f0800c1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-boolean v0, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinGuiderActivity;->setRequestedOrientation(I)V

    .line 29
    :cond_0
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinGuiderActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinGuiderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/app/BulletinGuiderActivity;->iv_close:Landroid/widget/ImageView;

    .line 32
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/app/BulletinGuiderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/launcher/app/BulletinGuiderActivity;->btn_start:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinGuiderActivity;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/app/BulletinGuiderActivity;->btn_start:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
