.class Lcom/baidu/launcher/app/GesturePreference$2;
.super Ljava/lang/Object;
.source "GesturePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/GesturePreference;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/GesturePreference;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/GesturePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/launcher/app/GesturePreference$2;->this$0:Lcom/baidu/launcher/app/GesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 94
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 95
    :cond_0
    invoke-static {p2, v1, v1}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->initDoubleclickGesture(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference$2;->this$0:Lcom/baidu/launcher/app/GesturePreference;

    #getter for: Lcom/baidu/launcher/app/GesturePreference;->mPreference:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/baidu/launcher/app/GesturePreference;->access$000(Lcom/baidu/launcher/app/GesturePreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "doubleclick_type"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "doubleclick_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "doubleclick_action"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference$2;->this$0:Lcom/baidu/launcher/app/GesturePreference;

    #getter for: Lcom/baidu/launcher/app/GesturePreference;->doubleclickGesture:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/baidu/launcher/app/GesturePreference;->access$200(Lcom/baidu/launcher/app/GesturePreference;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/app/GesturePreference$2;->this$0:Lcom/baidu/launcher/app/GesturePreference;

    #getter for: Lcom/baidu/launcher/app/GesturePreference;->mDoubleclickArray:[Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/app/GesturePreference;->access$100(Lcom/baidu/launcher/app/GesturePreference;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/app/GesturePreference$2;->this$0:Lcom/baidu/launcher/app/GesturePreference;

    #calls: Lcom/baidu/launcher/app/GesturePreference;->selectAppOrShortcutDialog(I)V
    invoke-static {v0, p2}, Lcom/baidu/launcher/app/GesturePreference;->access$300(Lcom/baidu/launcher/app/GesturePreference;I)V

    goto :goto_0
.end method
