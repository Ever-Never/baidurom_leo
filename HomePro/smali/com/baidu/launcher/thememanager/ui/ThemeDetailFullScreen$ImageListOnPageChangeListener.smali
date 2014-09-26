.class public Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ImageListOnPageChangeListener;
.super Ljava/lang/Object;
.source "ThemeDetailFullScreen.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageListOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 126
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 122
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/view/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 117
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPosition:I
    invoke-static {v0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->access$202(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;I)I

    .line 118
    return-void
.end method
