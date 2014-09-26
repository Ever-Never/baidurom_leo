.class Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;
.super Landroid/os/AsyncTask;
.source "ThemeApplyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->this$0:Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 908
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->this$0:Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->this$0:Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;

    iget-object v1, v1, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget v1, v1, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mId:I

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->this$0:Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->this$0:Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;

    iget-object v3, v3, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget-object v3, v3, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->deleteTheme(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 913
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->publishProgress([Ljava/lang/Object;)V

    .line 914
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 908
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 919
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 920
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->this$0:Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aActivity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->this$0:Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 924
    :cond_0
    return-void
.end method
