.class Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;
.super Ljava/lang/Object;
.source "WallpaperDetailLocalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->deleteWallpaper()V
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
    .line 217
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 220
    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmId()I

    move-result v0

    .line 222
    .local v0, aId:I
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, local_wallpaper:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->WALLPAPER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I
    invoke-static {v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmItemPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 227
    invoke-static {}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->mCurrentIndex:I
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 229
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity$6;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailLocalActivity;->finish()V

    .line 230
    return-void
.end method
