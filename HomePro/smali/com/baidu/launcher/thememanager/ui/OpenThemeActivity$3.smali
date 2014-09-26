.class Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$3;
.super Ljava/lang/Object;
.source "OpenThemeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$3;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$3;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->finish()V

    .line 266
    return-void
.end method
