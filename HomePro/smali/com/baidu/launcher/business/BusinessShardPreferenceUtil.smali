.class public Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;
.super Ljava/lang/Object;
.source "BusinessShardPreferenceUtil.java"


# static fields
.field public static DEFAULT_BUSINESS_STRATEGY_ID:J

.field public static DEFAULT_BUSINESS_SYNC_INTERVAL:J

.field public static PREFERENCE_BIND_USERINFO:Ljava/lang/String;

.field public static PREFERENCE_BIND_USERINFO_TIME:Ljava/lang/String;

.field public static PREFERENCE_BUSINESS_START_SYNC:Ljava/lang/String;

.field public static PREFERENCE_BUSINESS_SYNC_INTERVAL:Ljava/lang/String;

.field public static PREFERENCE_STRATEGY_ID:Ljava/lang/String;

.field public static PREFERENCE_STRATEGY_SYNC_TIMIE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "strategyid"

    sput-object v0, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_STRATEGY_ID:Ljava/lang/String;

    .line 11
    const-string v0, "synctime"

    sput-object v0, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_STRATEGY_SYNC_TIMIE:Ljava/lang/String;

    .line 12
    const-string v0, "sync_interval"

    sput-object v0, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_SYNC_INTERVAL:Ljava/lang/String;

    .line 13
    const-string v0, "startsynctime"

    sput-object v0, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_START_SYNC:Ljava/lang/String;

    .line 15
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->DEFAULT_BUSINESS_SYNC_INTERVAL:J

    .line 16
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->DEFAULT_BUSINESS_STRATEGY_ID:J

    .line 18
    const-string v0, "bind"

    sput-object v0, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BIND_USERINFO:Ljava/lang/String;

    .line 19
    const-string v0, "bindtime"

    sput-object v0, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BIND_USERINFO_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "aContext"
    .parameter "aKey"
    .parameter "aDefaultVale"

    .prologue
    .line 36
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .parameter "aContext"
    .parameter "aKey"
    .parameter "aDefaultVale"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "aContext"
    .parameter "aKey"
    .parameter "aVale"

    .prologue
    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setLong(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2
    .parameter "aContext"
    .parameter "aKey"
    .parameter "aVale"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
