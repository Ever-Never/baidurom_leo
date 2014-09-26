.class Lcom/baidu/launcher/app/LauncherPreference$1;
.super Ljava/lang/Object;
.source "LauncherPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/LauncherPreference;->enableBulletin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/LauncherPreference;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/LauncherPreference;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/baidu/launcher/app/LauncherPreference$1;->this$0:Lcom/baidu/launcher/app/LauncherPreference;

    iput-boolean p2, p0, Lcom/baidu/launcher/app/LauncherPreference$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/launcher/app/LauncherPreference$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/SettingsController;->enableBulletin(Z)V

    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/app/LauncherPreference$1;->this$0:Lcom/baidu/launcher/app/LauncherPreference;

    #getter for: Lcom/baidu/launcher/app/LauncherPreference;->bulletinSwitch:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/baidu/launcher/app/LauncherPreference;->access$000(Lcom/baidu/launcher/app/LauncherPreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 219
    return-void
.end method
