.class Lcom/baidu/launcher/app/LauncherPreference$2;
.super Ljava/lang/Object;
.source "LauncherPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/LauncherPreference;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/LauncherPreference;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/LauncherPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/baidu/launcher/app/LauncherPreference$2;->this$0:Lcom/baidu/launcher/app/LauncherPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 354
    return-void
.end method
