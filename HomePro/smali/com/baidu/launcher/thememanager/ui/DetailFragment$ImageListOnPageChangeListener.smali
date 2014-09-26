.class public Lcom/baidu/launcher/thememanager/ui/DetailFragment$ImageListOnPageChangeListener;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageListOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 154
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->access$100(Lcom/baidu/launcher/thememanager/ui/DetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 150
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->access$000(Lcom/baidu/launcher/thememanager/ui/DetailFragment;)Lcom/baidu/launcher/thememanager/view/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 144
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DetailFragment$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iput p1, v0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    .line 145
    return-void
.end method
