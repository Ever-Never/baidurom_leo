.class Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;
.super Ljava/lang/Object;
.source "ThemeOnlineFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

.field final synthetic val$ckx:Landroid/widget/CheckBox;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$ti:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

.field final synthetic val$view_button:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->this$1:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$ckx:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$ti:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    iput-object p5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$view_button:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 481
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$ckx:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 483
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "download_warning"

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$ckx:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->this$1:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

    iget-object v1, v1, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$ti:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;->val$view_button:Landroid/view/View;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->downloadTheme(Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V

    .line 488
    return-void

    .line 483
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
