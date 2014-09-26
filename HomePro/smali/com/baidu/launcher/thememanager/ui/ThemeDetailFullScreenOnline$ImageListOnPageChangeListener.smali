.class public Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline$ImageListOnPageChangeListener;
.super Ljava/lang/Object;
.source "ThemeDetailFullScreenOnline.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageListOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 155
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 151
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->access$000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;)Lcom/baidu/launcher/thememanager/view/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 146
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline$ImageListOnPageChangeListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;

    #setter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPosition:I
    invoke-static {v0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->access$102(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;I)I

    .line 147
    return-void
.end method
