.class Lcom/baidu/launcher/app/Launcher$4;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher;->checkForLocaleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$4;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;
    .locals 2
    .parameter "unused"

    .prologue
    .line 570
    new-instance v0, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;-><init>(Lcom/baidu/launcher/app/Launcher$1;)V

    .line 571
    .local v0, localeConfiguration:Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$4;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/baidu/launcher/app/Launcher;->readConfiguration(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V
    invoke-static {v1, v0}, Lcom/baidu/launcher/app/Launcher;->access$700(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V

    .line 573
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 567
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/app/Launcher$4;->doInBackground([Ljava/lang/Void;)Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 578
    invoke-static {p1}, Lcom/baidu/launcher/app/Launcher;->access$802(Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    .line 579
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$4;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/baidu/launcher/app/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V
    invoke-static {v0, p1}, Lcom/baidu/launcher/app/Launcher;->access$900(Landroid/content/Context;Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V

    .line 582
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 567
    check-cast p1, Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/app/Launcher$4;->onPostExecute(Lcom/baidu/launcher/app/Launcher$LocaleConfiguration;)V

    return-void
.end method
