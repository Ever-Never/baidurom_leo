.class public Lcom/inveno/flow/tools/commontools/PfTools;
.super Ljava/lang/Object;
.source "PfTools.java"


# static fields
.field public static final FLOW_CLICK_CHANNELS:Ljava/lang/String; = "flow_click_channels"

.field public static final FLOW_CONTROL_MODE:Ljava/lang/String; = "flow_control_mode"

.field private static OPENLOG:Z = false

.field public static final SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inveno/flow/tools/commontools/PfTools;->OPENLOG:Z

    .line 14
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
    .line 146
    .line 147
    const-string v1, "settings"

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
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
    .line 156
    .line 157
    const-string v1, "settings"

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
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
    .line 114
    .line 115
    const-string v1, "settings"

    const/4 v2, 0x0

    .line 114
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
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

    .line 104
    .line 105
    const-string v1, "settings"

    .line 104
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
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
    .line 166
    const/4 v1, 0x0

    invoke-virtual {p3, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
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
    .line 95
    .line 96
    const-string v1, "settings"

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
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
    .line 186
    const/4 v1, 0x0

    invoke-virtual {p3, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
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
    .line 74
    .line 75
    const-string v1, "settings"

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
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
    .line 208
    .line 209
    const-string v2, "settings"

    const/4 v3, 0x0

    .line 208
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method public static setBooleaninformain(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 135
    .line 136
    const-string v2, "settings"

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    return-void
.end method

.method public static setInformain(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 123
    .line 124
    const-string v2, "settings"

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method

.method public static setInformain(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 4
    .parameter "Key"
    .parameter "Value"
    .parameter "context"

    .prologue
    .line 62
    .line 63
    const-string v2, "settings"

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method public static setInformain(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 3
    .parameter "name"
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 195
    const/4 v2, 0x0

    invoke-virtual {p3, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method public static setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "Key"
    .parameter "Value"
    .parameter "context"

    .prologue
    .line 83
    .line 84
    const-string v2, "settings"

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 85
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public static setInformain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "name"
    .parameter "key"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 175
    const/4 v2, 0x0

    invoke-virtual {p3, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 44
    sget-boolean v0, Lcom/inveno/flow/tools/commontools/PfTools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "info"

    invoke-static {v0, p0}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static showLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "tmp"

    .prologue
    .line 34
    sget-boolean v0, Lcom/inveno/flow/tools/commontools/PfTools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "======"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static showLogA(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 54
    sget-boolean v0, Lcom/inveno/flow/tools/commontools/PfTools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "blueming.liu"

    invoke-static {v0, p0}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static showLogB(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 49
    sget-boolean v0, Lcom/inveno/flow/tools/commontools/PfTools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "blueming.wu"

    invoke-static {v0, p0}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
