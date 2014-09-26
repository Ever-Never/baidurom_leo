.class Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$3;
.super Ljava/lang/Object;
.source "ApplyThemeTask.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$3;->this$0:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDialogProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask$3;->this$0:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->access$200(Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method
