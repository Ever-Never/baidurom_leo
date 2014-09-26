.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$3;
.super Ljava/lang/Object;
.source "WallpaperDetailLocalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$3;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$3;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->applyWallpaper()V

    .line 116
    return-void
.end method
