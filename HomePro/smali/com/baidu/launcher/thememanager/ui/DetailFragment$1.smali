.class Lcom/baidu/launcher/thememanager/ui/DetailFragment$1;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/DetailFragment;->init(III[Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    .line 62
    .local v0, activity:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->deleteFromFragment()Z

    .line 64
    .end local v0           #activity:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;
    :cond_0
    return-void
.end method
