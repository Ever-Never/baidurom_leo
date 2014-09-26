.class final Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;
.super Ljava/lang/Object;
.source "ThemeApplyHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->deleteTheme(Landroid/support/v4/app/FragmentActivity;Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aActivity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

.field final synthetic val$need_restore:Z


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aActivity:Landroid/support/v4/app/FragmentActivity;

    iput-boolean p3, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$need_restore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 902
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget v0, v0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mThemeLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 930
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$need_restore:Z

    if-nez v0, :cond_1

    .line 908
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;-><init>(Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget v1, v1, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mId:I

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;->val$aItemData:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget-object v3, v3, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mPath:Ljava/lang/String;

    #calls: Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->deleteThemeWithRestore(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->access$000(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
