.class public Lcom/baidu/launcher/ui/effect/EffectListActivity;
.super Landroid/app/Activity;
.source "EffectListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectListActivity"


# instance fields
.field private mAdapter:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

.field private mViewGrid:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->requestWindowFeature(I)Z

    .line 28
    const v2, 0x7f030053

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->setContentView(I)V

    .line 29
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 30
    .local v0, actionBar:Lcom/baidu/launcher/thememanager/view/ExActionBar;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 31
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setOperationBar(I)V

    .line 32
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setBackIcon(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextColor(I)V

    .line 35
    const v2, 0x7f0801c5

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 36
    .local v1, actionBarGroup:Landroid/widget/RelativeLayout;
    const v2, 0x7f0203d4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 37
    const v2, 0x7f08011f

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/effect/EffectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListActivity;->mViewGrid:Landroid/widget/GridView;

    .line 39
    new-instance v2, Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListActivity;->mAdapter:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    .line 41
    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListActivity;->mAdapter:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->setCurrentEffectId(I)V

    .line 43
    iget-object v2, p0, Lcom/baidu/launcher/ui/effect/EffectListActivity;->mViewGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/effect/EffectListActivity;->mAdapter:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListActivity;->mAdapter:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->setCurrentEffectId(I)V

    .line 50
    iget-object v0, p0, Lcom/baidu/launcher/ui/effect/EffectListActivity;->mAdapter:Lcom/baidu/launcher/ui/effect/EffectListAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/effect/EffectListAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method
