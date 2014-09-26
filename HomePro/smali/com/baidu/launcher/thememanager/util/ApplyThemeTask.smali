.class public Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;
.super Landroid/os/AsyncTask;
.source "ApplyThemeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;
    }
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
.field Progress:Landroid/widget/TextView;

.field Propotion:Landroid/widget/TextView;

.field private activity:Landroid/support/v4/app/FragmentActivity;

.field private b_delete_restore:Z

.field private b_need_finish:Z

.field private b_need_return_home:Z

.field private b_restore:Z

.field private b_save_as_default:Z

.field public callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

.field private id:I

.field private key:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mBar:Landroid/widget/ProgressBar;

.field private mComponentCheckedArray:[Z

.field private mComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMax:I

.field private themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentList:Ljava/util/ArrayList;

    .line 30
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentCheckedArray:[Z

    .line 32
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_finish:Z

    .line 33
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_restore:Z

    .line 34
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_delete_restore:Z

    .line 35
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_save_as_default:Z

    .line 36
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_return_home:Z

    .line 37
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

    .line 66
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 67
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_restore:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;)V
    .locals 3
    .parameter "a"
    .parameter "ti"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentList:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentCheckedArray:[Z

    .line 32
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_finish:Z

    .line 33
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_restore:Z

    .line 34
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_delete_restore:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_save_as_default:Z

    .line 36
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_return_home:Z

    .line 37
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

    .line 45
    iget-object v0, p2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->key:Ljava/lang/String;

    .line 46
    iget v0, p2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mId:I

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->id:I

    .line 47
    iget v0, p2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mComponentType:I

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->type:I

    .line 48
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;Ljava/util/ArrayList;[ZZ)V
    .locals 3
    .parameter "a"
    .parameter "ti"
    .parameter
    .parameter "componentCheckedArray"
    .parameter "isRestore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[ZZ)V"
        }
    .end annotation

    .prologue
    .local p3, componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentList:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentCheckedArray:[Z

    .line 32
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_finish:Z

    .line 33
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_restore:Z

    .line 34
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_delete_restore:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_save_as_default:Z

    .line 36
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_return_home:Z

    .line 37
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

    .line 54
    iget-object v0, p2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->key:Ljava/lang/String;

    .line 55
    iget v0, p2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mId:I

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->id:I

    .line 56
    iget v0, p2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mComponentType:I

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->type:I

    .line 58
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 60
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentList:Ljava/util/ArrayList;

    .line 61
    iput-object p4, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentCheckedArray:[Z

    .line 62
    iput-boolean p5, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_delete_restore:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private updateProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    :cond_0
    mul-int/lit8 v1, p1, 0x64

    iget v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mMax:I

    div-int v0, v1, v2

    .line 93
    .local v0, percent:I
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->Progress:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->Progress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->Propotion:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->Propotion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_restore:Z

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    new-instance v2, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$1;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$1;-><init>(Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyAll(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)I

    .line 174
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentCheckedArray:[Z

    new-instance v4, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$2;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$2;-><init>(Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;)V

    iget-boolean v5, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_delete_restore:Z

    iget-boolean v6, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_save_as_default:Z

    invoke-static/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyPart(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Ljava/util/ArrayList;[ZLcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;ZZ)I

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$3;-><init>(Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;)V

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->restoreDefaultTheme(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)I

    goto :goto_0
.end method

.method public needFinish(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_finish:Z

    .line 72
    return-void
.end method

.method public needReturnHome(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_return_home:Z

    .line 76
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;->end(ILjava/lang/String;)V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 195
    :cond_1
    iget-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_finish:Z

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "com.baidu.launcher.theme.changed"

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 207
    iget-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_need_return_home:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/Utils;->isRunningForeground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 210
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method protected onPreExecute()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 103
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

    if-eqz v7, :cond_0

    .line 104
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->callback:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;

    invoke-interface {v7}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$TaskCallback;->start()V

    .line 109
    :cond_0
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    const v8, 0x7f030092

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, contentView:Landroid/view/View;
    const v7, 0x7f0801cc

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mBar:Landroid/widget/ProgressBar;

    .line 112
    const v7, 0x7f0801cd

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->Progress:Landroid/widget/TextView;

    .line 113
    const v7, 0x7f0801ce

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->Propotion:Landroid/widget/TextView;

    .line 115
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    const v8, 0x1030132

    invoke-direct {v1, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 116
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 119
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 122
    iget-boolean v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_restore:Z

    if-nez v7, :cond_5

    .line 123
    new-instance v7, Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-object v8, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->activity:Landroid/support/v4/app/FragmentActivity;

    iget v9, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->id:I

    iget v10, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->type:I

    invoke-direct {v7, v8, v9, v10}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    .line 124
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v7}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->init()V

    .line 126
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentList:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 128
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v7}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getComponentList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->setBarMax(I)V

    .line 129
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->themeinfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v7}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getThemeLevel()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 130
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 145
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 146
    return-void

    .line 133
    :cond_2
    const/4 v3, 0x0

    .line 134
    .local v3, i:I
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mComponentCheckedArray:[Z

    .local v0, arr$:[Z
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-boolean v7, v0, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 135
    .local v6, mComponentCheckedItem:Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 134
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    .end local v6           #mComponentCheckedItem:Ljava/lang/Boolean;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->setBarMax(I)V

    goto :goto_0

    .line 142
    .end local v0           #arr$:[Z
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_5
    invoke-virtual {p0, v11}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->setBarMax(I)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 180
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->updateProgress(I)V

    .line 181
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setBarMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 84
    iput p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->mMax:I

    .line 86
    :cond_0
    return-void
.end method

.method public setDefault(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->b_save_as_default:Z

    .line 79
    return-void
.end method
