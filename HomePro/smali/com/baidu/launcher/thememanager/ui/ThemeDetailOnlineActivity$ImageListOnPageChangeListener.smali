.class public Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageListOnPageChangeListener;
.super Ljava/lang/Object;
.source "ThemeDetailOnlineActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageListOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 558
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 554
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Lcom/baidu/launcher/thememanager/view/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 548
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I
    invoke-static {v0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$902(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;I)I

    .line 549
    return-void
.end method
