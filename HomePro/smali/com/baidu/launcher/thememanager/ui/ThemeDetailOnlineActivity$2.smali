.class Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;
.super Ljava/lang/Object;
.source "ThemeDetailOnlineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

.field final synthetic val$ckx:Landroid/widget/CheckBox;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;->val$ckx:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;->val$ckx:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "download_warning"

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;->val$ckx:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->downloadTheme()V
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V

    .line 370
    return-void

    .line 365
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
