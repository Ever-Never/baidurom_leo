.class Lcom/baidu/launcher/utils/BackupAgent$2;
.super Ljava/lang/Object;
.source "BackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/BackupAgent;->restoreBulletinSettings(Landroid/app/backup/BackupDataInput;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/utils/BackupAgent;

.field final synthetic val$enableBulletin:Z


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/BackupAgent;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/baidu/launcher/utils/BackupAgent$2;->this$0:Lcom/baidu/launcher/utils/BackupAgent;

    iput-boolean p2, p0, Lcom/baidu/launcher/utils/BackupAgent$2;->val$enableBulletin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/launcher/utils/BackupAgent$2;->val$enableBulletin:Z

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/SettingsController;->enableBulletin(Z)V

    .line 258
    return-void
.end method
