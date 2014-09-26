.class Lcom/baidu/launcher/utils/BackupAgent$1;
.super Ljava/lang/Object;
.source "BackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/utils/BackupAgent;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/BackupAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/baidu/launcher/utils/BackupAgent$1;->this$0:Lcom/baidu/launcher/utils/BackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/baidu/launcher/utils/BackupAgent$1;->this$0:Lcom/baidu/launcher/utils/BackupAgent;

    invoke-virtual {v0}, Lcom/baidu/launcher/utils/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c026f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    return-void
.end method
