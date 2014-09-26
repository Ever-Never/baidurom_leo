.class public Lcom/inveno/newpiflow/channel/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field public static final FLOW_CLICK_CHANNELS:Ljava/lang/String; = "flow_click_channels"

.field public static final FLOW_CONTROL_MODE:Ljava/lang/String; = "flow_control_mode"

.field private static OPENLOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inveno/newpiflow/channel/Tools;->OPENLOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanInformain(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .parameter "key"
    .parameter "context"

    .prologue
    .line 144
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, settings:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getBooleanInformain(Ljava/lang/String;ZLandroid/content/Context;)Z
    .locals 3
    .parameter "key"
    .parameter "defaultValue"
    .parameter "context"

    .prologue
    .line 154
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInformain(Ljava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 112
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInformain(Ljava/lang/String;Landroid/content/Context;)I
    .locals 3
    .parameter "key"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 102
    const-string v1, "settings"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInformain(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)I
    .locals 2
    .parameter "name"
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 164
    const/4 v1, 0x0

    invoke-virtual {p3, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "Key"
    .parameter "defValue"
    .parameter "context"

    .prologue
    .line 93
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInformain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "key"
    .parameter "defValue"
    .parameter "context"

    .prologue
    .line 184
    const/4 v1, 0x0

    invoke-virtual {p3, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLongInformain(Ljava/lang/String;JLandroid/content/Context;)J
    .locals 3
    .parameter "Key"
    .parameter "defValue"
    .parameter "context"

    .prologue
    .line 72
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static remove(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "key"
    .parameter "context"

    .prologue
    .line 206
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 208
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public static setBooleaninformain(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 133
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method public static setInformain(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 121
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public static setInformain(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 4
    .parameter "Key"
    .parameter "Value"
    .parameter "context"

    .prologue
    .line 60
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void
.end method

.method public static setInformain(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 3
    .parameter "name"
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 193
    const/4 v2, 0x0

    invoke-virtual {p3, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method public static setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "Key"
    .parameter "Value"
    .parameter "context"

    .prologue
    .line 81
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method public static setInformain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "name"
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 173
    const/4 v2, 0x0

    invoke-virtual {p3, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 174
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 42
    sget-boolean v0, Lcom/inveno/newpiflow/channel/Tools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "info"

    invoke-static {v0, p0}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static showLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "tmp"

    .prologue
    .line 32
    sget-boolean v0, Lcom/inveno/newpiflow/channel/Tools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static showLogA(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 52
    sget-boolean v0, Lcom/inveno/newpiflow/channel/Tools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "blueming.liu"

    invoke-static {v0, p0}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public static showLogB(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 47
    sget-boolean v0, Lcom/inveno/newpiflow/channel/Tools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "blueming.wu"

    invoke-static {v0, p0}, Lcom/inveno/newpiflow/channel/Tools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
