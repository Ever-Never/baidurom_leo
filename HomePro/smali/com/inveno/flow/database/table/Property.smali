.class public Lcom/inveno/flow/database/table/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field private column:Ljava/lang/String;

.field private dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private defaultValue:Ljava/lang/String;

.field private field:Ljava/lang/reflect/Field;

.field private fieldName:Ljava/lang/String;

.field private get:Ljava/lang/reflect/Method;

.field private set:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static stringToDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "strDate"

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 126
    .end local v0           #e:Ljava/text/ParseException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/inveno/flow/database/table/Property;->column:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/inveno/flow/database/table/Property;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/inveno/flow/database/table/Property;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inveno/flow/database/table/Property;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getGet()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inveno/flow/database/table/Property;->get:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSet()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/inveno/flow/database/table/Property;->get:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flow/database/table/Property;->get:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 108
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public setColumn(Ljava/lang/String;)V
    .locals 0
    .parameter "column"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/inveno/flow/database/table/Property;->column:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setDataType(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, dataType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    .line 159
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/inveno/flow/database/table/Property;->defaultValue:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0
    .parameter "field"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/inveno/flow/database/table/Property;->field:Ljava/lang/reflect/Field;

    .line 183
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/inveno/flow/database/table/Property;->fieldName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setGet(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "get"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/inveno/flow/database/table/Property;->get:Ljava/lang/reflect/Method;

    .line 167
    return-void
.end method

.method public setSet(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    .line 175
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "receiver"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 44
    iget-object v1, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_3

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 46
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_6

    .line 49
    :cond_4
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    .line 50
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 51
    if-nez p2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    .line 49
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_2

    .line 53
    :cond_6
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_9

    .line 54
    :cond_7
    iget-object v3, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    .line 55
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 56
    if-nez p2, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v5

    .line 54
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_3

    .line 58
    :cond_9
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_c

    .line 59
    :cond_a
    iget-object v3, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    .line 60
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 61
    if-nez p2, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    .line 59
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 62
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_4

    .line 63
    :cond_c
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/util/Date;

    if-eq v2, v3, :cond_d

    .line 64
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    const-class v3, Ljava/sql/Date;

    if-ne v2, v3, :cond_f

    .line 65
    :cond_d
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_e

    .line 66
    :goto_5
    aput-object v1, v3, v4

    .line 65
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 66
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flow/database/table/Property;->stringToDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_5

    .line 67
    :cond_f
    iget-object v1, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_10

    .line 68
    iget-object v1, p0, Lcom/inveno/flow/database/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_12

    .line 69
    :cond_10
    iget-object v2, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    .line 70
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 71
    if-nez p2, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    .line 69
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 71
    :cond_11
    const-string v1, "1"

    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6

    .line 74
    :cond_12
    iget-object v1, p0, Lcom/inveno/flow/database/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 81
    :cond_13
    :try_start_2
    iget-object v1, p0, Lcom/inveno/flow/database/table/Property;->field:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    iget-object v1, p0, Lcom/inveno/flow/database/table/Property;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
