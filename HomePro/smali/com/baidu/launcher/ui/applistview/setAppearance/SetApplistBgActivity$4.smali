.class Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$4;
.super Ljava/lang/Object;
.source "SetApplistBgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->selectBgDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 236
    if-ne p2, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #calls: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->gotoGallary()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$500(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V

    .line 250
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    return-void

    .line 239
    :cond_1
    sget-boolean v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    if-eq v0, v1, :cond_0

    .line 240
    sput-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    .line 241
    sput-boolean v1, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    .line 242
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$400(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applist_background"

    sget-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mAppListBgIsWallpapper:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    sget-boolean v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    if-eqz v0, :cond_2

    .line 244
    sput-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->mUserApplistDefaultBG:Z

    .line 245
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->mPreference:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$400(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "defalut_applist_background"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;

    #calls: Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->setBackgroundPreview()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;->access$600(Lcom/baidu/launcher/ui/applistview/setAppearance/SetApplistBgActivity;)V

    goto :goto_0
.end method
